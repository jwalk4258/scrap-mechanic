-- MatureHarvestable.lua --
dofile "$SURVIVAL_DATA/Scripts/game/survival_harvestable.lua"
dofile "$SURVIVAL_DATA/Scripts/util.lua"

MatureHarvestable = class( nil )

dofile "$SURVIVAL_DATA/Objects/00fant/scripts/fant_unitfacer.lua"
function MatureHarvestable.server_onDestroy( self )
	g_remove_Finish_Soil( self )
end

function MatureHarvestable.server_onCreate( self )
	g_add_Finish_Soil( self )
	
	self.harvestable.publicData = {}
end

function MatureHarvestable.client_onInteract( self, state )
	self.network:sendToServer( "sv_n_harvest" )
end

function MatureHarvestable.client_canInteract( self )
	sm.gui.setInteractionText( "", sm.gui.getKeyBinding( "Attack" ), "#{INTERACTION_PICK_UP}" )
	return true
end

function MatureHarvestable.server_onMelee( self, hitPos, attacker, damage )
	if sm.exists( self.harvestable ) and not self.harvestable.publicData.harvested then
		sm.effect.playEffect( "Plants - Picked", self.harvestable:getPosition() )
		
		if type( attacker ) == "Player" then
			local harvest = {
				lootUid = sm.uuid.new( self.data.harvest ),
				lootQuantity = self.data.amount
			}
			local seed = {
				lootUid = sm.uuid.new( self.data.seed ),
				lootQuantity = randomStackAmountAvg2()
			}
			local pos = self.harvestable:getPosition() + sm.vec3.new( 0, 0, 0.5 )
			sm.projectile.harvestableCustomProjectileAttack( harvest, "loot", 0, pos, sm.noise.gunSpread( sm.vec3.new( 0, 0, 1 ), 20 ) * 5, self.harvestable, 0 )
			sm.projectile.harvestableCustomProjectileAttack( seed, "loot", 0, pos, sm.noise.gunSpread( sm.vec3.new( 0, 0, 1 ), 20 ) * 5, self.harvestable, 0 )
		end
		sm.harvestable.create( hvs_soil, self.harvestable:getPosition(), self.harvestable:getRotation() )
		self.harvestable:destroy()
		self.harvestable.publicData.harvested = true
	end
end

function MatureHarvestable.server_onProjectile( self, hitPos, hitTime, hitVelocity, projectileName, attacker, damage )
	if type( attacker ) == "Unit" then
		if sm.exists( self.harvestable ) and not self.harvestable.publicData.harvested then
			sm.effect.playEffect( "Plants - Picked", self.harvestable:getPosition() )
			sm.harvestable.create( hvs_soil, self.harvestable:getPosition(), self.harvestable:getRotation() )
			self.harvestable:destroy()
			self.harvestable.publicData.harvested = true
		end
	end
end

function MatureHarvestable.server_canErase( self ) return true end
function MatureHarvestable.client_canErase( self ) return true end

function MatureHarvestable.server_onRemoved( self, player )
	self:sv_n_harvest( nil, player )
end

function MatureHarvestable.cl_n_onInventoryFull( self )
	sm.gui.displayAlertText( "#{INFO_INVENTORY_FULL}", 4 )
end

function MatureHarvestable.sv_n_harvest( self, params, player )
	if sm.exists( self.harvestable ) and not self.harvestable.publicData.harvested then
		local container = player:getInventory()
		if sm.container.beginTransaction() then
			sm.container.collect( container, sm.uuid.new( self.data.harvest ), self.data.amount, true )
			
			--00fant   randomStackAmountAvg2() * 2,
			local amount = math.random( 1, 4 )--randomStackAmountAvg2()

			sm.container.collect( container, sm.uuid.new( self.data.seed ), amount, true )
			
			if sm.container.endTransaction() then
				sm.effect.playEffect( "Plants - Picked", self.harvestable:getPosition() )
				sm.harvestable.create( hvs_soil, self.harvestable:getPosition(), self.harvestable:getRotation() )
				self.harvestable:destroy()
				self.harvestable.publicData.harvested = true
			else
				self.network:sendToClient( player, "cl_n_onInventoryFull" )
			end
		end
	end
end

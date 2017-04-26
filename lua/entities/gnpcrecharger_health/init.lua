AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

local MODEL = "models/props_combine/health_charger001.mdl"

function ENT:Initialize()
	self:SetModel(MODEL)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetUseType(CONTINUOUS_USE)

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()	
	end	
end

function ENT:Use(activator, caller)
	if not IsValid(caller) or not caller:IsPlayer() then return end
		
	local walletAmt = caller:getDarkRPVar("money")

	if walletAmt >= self.PricePerOne then
		local curHealth = caller:Health()

		if curHealth >= 100 then return end

		caller:addMoney(-self.PricePerOne)
		caller:SetHealth(curHealth + 1)
	end
end
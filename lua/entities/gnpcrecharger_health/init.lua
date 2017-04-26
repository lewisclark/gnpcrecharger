AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/Humans/Group02/male_09.mdl")
	self:SetHullType(HULL_HUMAN)
	self:SetHullSizeNormal()
	self:SetNPCState(NPC_STATE_SCRIPT)
	self:SetSolid(SOLID_BBOX)
	self:CapabilitiesAdd(bit.bor(CAP_ANIMATEDFACE, CAP_TURN_HEAD))
	self:DropToFloor()
	self:SetUseType(CONTINUOUS_USE)

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()	
	end	
end

function ENT:Use(activator, caller)
	if not IsValid(caller) or not IsPlayer(caller) then return end
		
	local walletAmt = caller:getDarkRPVar("money")

	if walletAmt >= self.PricePerOne then
		local curHealth = caller:Health()

		if curHealth >= 100 then return end

		caller:addMoney(-self.PricePerOne)
		caller:SetHealth(curHealth + 1)
	end
end
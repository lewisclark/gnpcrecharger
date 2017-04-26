ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "gNPCRecharger Armor"
ENT.Spawnable = true

ENT.PricePerOne = 150

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
	self.AutomaticFrameAdvance = bUsingAnim
end

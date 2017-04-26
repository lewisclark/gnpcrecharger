ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "gNPCRecharger Health"
ENT.Spawnable = true

ENT.PricePerOne = 75

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
	self.AutomaticFrameAdvance = bUsingAnim
end

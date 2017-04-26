ENT.Base = "base_ai" 
ENT.Type = "ai"
ENT.PrintName = "gNPCRecharger Health"
ENT.Spawnable = false

ENT.PricePerOne = 500

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
	self.AutomaticFrameAdvance = bUsingAnim
end

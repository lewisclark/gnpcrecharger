include("shared.lua")

local DRAWTEXT = "Health Recharger"

function ENT:Draw()
	self:DrawModel()

	local distance = LocalPlayer():GetPos():Distance(self:GetPos())

	if distance > 750 then return end

    local ang = self:GetAngles()

    ang:RotateAroundAxis(ang:Forward(), 90)
	ang:RotateAroundAxis(ang:Right(), -90)

	cam.Start3D2D(self:GetPos() + self:GetUp() * 26, ang, 0.30)
		draw.SimpleText(DRAWTEXT .. " (" .. DarkRP.formatMoney(self.PricePerOne) .. "/1)", "CloseCaption_Normal", 0, 0, Color(255, 255, 255), 1, 1)
    cam.End3D2D()
end
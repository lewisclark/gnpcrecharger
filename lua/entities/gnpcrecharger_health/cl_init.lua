include("shared.lua")

function ENT:Draw()
	self:DrawModel()

    local pos = self:GetPos()
    local ang = self:GetAngles()

    ang:RotateAroundAxis(ang:Up(), 90)

    cam.Start3D2D(pos + ang:Up() * 10.7, ang, 0.11)
    	
    cam.End3D2D()
end
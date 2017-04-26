local function removeAllRechargers()
	for _, v in pairs(ents.FindByClass("gnpcrecharger_*")) do
		v:Remove()
	end
end

local function spawnRechargers(tblEnts)
	for _, v in pairs(tblEnts) do
		local ent = ents.Create(v.class)
		ent:SetPos(v.pos)
		ent:SetAngles(v.ang)
		ent:Spawn()

		local phys = ent:GetPhysicsObject()

		if phys:IsValid() then
			phys:EnableMotion(false)
		end
	end
end

concommand.Add("recharger_saveall", function(ply, cmd, args)
	if IsValid(ply) and not ply:IsSuperAdmin() then 
		ply:ChatPrint("You must be a superadmin to use this command.")

		return
	end

	removeAllRechargers()

	local tblEnts = {}

	for _, v in pairs(ents.FindByClass("gnpcrecharger_*")) do
		local pos = v:GetPos()
		local ang = v:GetAngles()
		local class = v:GetClass()

		local t = {
			["class"] = class,
			["pos"] = pos,
			["ang"] = ang
		}

		table.ForceInsert(tblEnts, t)
	end

	local json = util.TableToJSON(tblEnts)
	file.Write("gnpcrecharger_saved.txt", json)

	spawnRechargers(tblEnts)
end)

concommand.Add("recharger_resetall", function(ply, cmd, args)
	if IsValid(ply) and not ply:IsSuperAdmin() then 
		ply:ChatPrint("You must be a superadmin to use this command.")

		return
	end

	file.Write("gnpcrecharger_saved.txt", "{}")

	removeAllRechargers()
end)

hook.Add("InitPostEntity", "gNPCRecharger", function()
	local json = file.Read("gnpcrecharger_saved.txt", false)
	local tblEnts = util.JSONToTable(json)

	spawnRechargers(tblEnts)
end)
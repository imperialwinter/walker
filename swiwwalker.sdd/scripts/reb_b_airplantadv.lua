local function cobangle(x) return (x or 0) * 182 * 3.14159 / 32768 end

local uid = unitID
local udid = Spring.GetUnitDefID(uid)

--turret traversal etc
--FBI customparams are returned as strings, remember to tonumber them!
local w1ytraversal = cobangle(tonumber(UnitDefs[udid].customParams.w1ytraversal)) or cobangle(500)
local w1xtraversal = cobangle(tonumber(UnitDefs[udid].customParams.w1xtraversal)) or cobangle(250)
local w1restorespeed = cobangle(tonumber(UnitDefs[udid].customParams.w1restorespeed)) or cobangle(50)
local w1restore = tonumber(UnitDefs[udid].customParams.w1restore) or 5000


--pieces
local base = piece "base"
local turret = piece "turret"
local platform = piece "platform"
local stormtrooper = piece "stormtrooper"
local barrelset1 = {
	piece "barrel1", piece "barrel3",
}
local barrelset2 = {
	piece "barrel2", piece "barrel4",
}
local flareset1 = {
	piece "firept1", piece "firept3",
}
local flareset2 = {
	piece "firept2", piece "firept4",
}
local firept1 = piece "firept1"
local firept2 = piece "firept2"
local firept3 = piece "firept3"
local firept4 = piece "firept4"


--effects
local MED_MUZZLE_FLASH_FX_GREEN = 1024+1


--weapon variables
local gun_1 = 0


function script.Create()
	for _,piecename in ipairs(flareset1) do
		Hide(piecename)
	end
	for _,piecename in ipairs(flareset2) do
		Hide(piecename)
	end

	--StartThread(SmokeUnit)
end

local function Restore()
	Sleep(w1restore)
	Turn(turret, x_axis, 0, w1restorespeed)
end

function script.AimWeapon1(heading, pitch)
	local SIG_AIM = 1
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)

	Turn(platform, y_axis, heading, w1ytraversal)
	Turn(turret, x_axis, -pitch, w1xtraversal)
	WaitForTurn(platform, y_axis)
	WaitForTurn(turret, x_axis)

	StartThread(Restore)

	return true
end

function script.AimFromWeapon1()
	return stormtrooper
end

function script.QueryWeapon1()
	if(gun_1 == 0) then return firept1
	elseif(gun_1 == 1) then return firept3
	elseif(gun_1 == 2) then return firept2
	elseif(gun_1 == 3) then return firept4
	end
end

function script.Shot1()
	gun_1 = gun_1 + 1
	if(gun_1 > 3) then gun_1 = 0 end

	if(gun_1 == 0) then
		for _,piecename in ipairs(flareset1) do
			EmitSfx(piecename, MED_MUZZLE_FLASH_FX_GREEN)
		end
		for _,piecename in ipairs(barrelset1) do
			Move(piecename, z_axis, -7.5)
			--Sleep(150)
			Move(piecename, z_axis, 0, 37.5)
		end
	elseif(gun_1 == 2) then
		for _,piecename in ipairs(flareset2) do
			EmitSfx(piecename, MED_MUZZLE_FLASH_FX_GREEN)
		end
		for _,piecename in ipairs(barrelset2) do
			Move(piecename, z_axis, -7.5)
			--Sleep(150)
			Move(piecename, z_axis, 0, 37.5)
		end
	end
end

function script.FireWeapon1()
	return false
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if(severity <= 25) then
		return 1
	elseif(severity <= 50) then
		return 1
	else
		return 2
	end
end
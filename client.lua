-- local variables for API functions. any changes to the line below will be lost on re-generation
local Citizen_CreateThread, Citizen_Wait, EnableControlAction, SetFollowPedCamViewMode, SetFollowVehicleCamViewMode, IsPedInAnyVehicle, DisableControlAction, IsAimCamActive, SetCamFov, GetRenderingCam, HideHudComponentThisFrame = Citizen.CreateThread, Citizen.Wait, EnableControlAction, SetFollowPedCamViewMode, SetFollowVehicleCamViewMode, IsPedInAnyVehicle, DisableControlAction, IsAimCamActive, SetCamFov, GetRenderingCam, HideHudComponentThisFrame

local function hide_reticle()
	if Config.HideReticle == false then
		return
	end

	HideHudComponentThisFrame(14)
end

local function force_fov()
	if Config.CustomFOV == false then
		return
	end

	SetCamFov(GetRenderingCam(), 90.0)
end

local function force_fpv()
	if Config.ForceFPV == false then
		return
	end

	if IsAimCamActive() or IsPedDoingDriveby(PlayerPedId()) then
		DisableControlAction(0, 0, true)

		SetFollowPedCamViewMode(4)
		SetFollowVehicleCamViewMode(4)
	else
		EnableControlAction(0, 0, true)
	end
end


Citizen_CreateThread(function ()
while true do
	Citizen_Wait(0)

	hide_reticle() -- removes the crosshair
	force_fov() -- forces a 90 degree field of view
	force_fpv() -- forces a first-person perspective while aiming
end
end)
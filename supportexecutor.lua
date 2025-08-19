local UserInputService = game:GetService('UserInputService');
local Player = game.Players.LocalPlayer

local SupportExecutor = {
	Windows = { "Velocity", "Zenith", "Volcano", "Ronix", "Bunni", "Nucleus", "Swift" },
	Android = { "Krnl", "Delta", "Codex", "Ronix" },
	IOS = { "Delta", "Krnl" },
}

local function GetPlatform()
	if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
		return "Android"
	elseif UserInputService.TouchEnabled and UserInputService.KeyboardEnabled then
		return "IOS"
	else
		return "Windows"
	end
end

local function IsExecutorSupported(executorName)
	local platform = GetPlatform()
	local supportedList = SupportExecutor[platform]

	if not supportedList then
		return false, "Unknown platform"
	end

	for _, exec in ipairs(supportedList) do
		if string.find(executorName:lower(), exec:lower()) then
			return true, platform
		end
	end

	return false, platform
end

local currentExecutor = (identifyexecutor and identifyexecutor())
	or (getexecutorname and getexecutorname())
	or "Unknown"
local supported, platform = IsExecutorSupported(currentExecutor)

return supported, platform

local supported, platform =
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Blackking-X-bobhub/Doors/main/supportexecutor.lua"))()

if supported then
	if game.PlaceId == 6839171747 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blackking-X-bobhub/Doors/main/Games/outdoors.lua"))()
	end
else
	game.Players.LocalPlayer:Kick("Your executor is not supported!\nCurrent Executor: " .. platform)
end

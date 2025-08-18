local supported, platform =
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Blackking-X-bobhub/KBOB/master/supportexecutor.lua"))()
local discordInviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/notzanocoddz4/utils/main/discord_Inviter/src.luau"))()

if supported then
	if game.PlaceId == 6839171747 then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Blackking-X-bobhub/KBOB/refs/heads/master/Games/outdoors.lua'))()
	end
else
	game.Players.LocalPlayer:Kick("Your executor is not supported!\nJoin Discord Server for support")
	discordInviter.get_joinRPC("https://discord.gg/zr575byvYK")
end

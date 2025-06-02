local function GiveFiftyRings()
	for player in players.iterate do
		player.rings = 50
		CONS_Printf(player, "Gave all players 50 rings")
end
end

local function GiveEveryEmerald(player)
	emeralds = 1 + 2 + 4 + 8 + 16 + 32 + 64
	CONS_Printf(player, "Got all emeralds")
	CONS_Printf(player, emeralds)
end

COM_AddCommand("getemeralds", GiveEveryEmerald, COM_ADMIN)
COM_AddCommand("Give50", GiveFiftyRings, COM_ADMIN)

chatprint("\131Get all emeralds script loaded!", true)
chatprint("To instantly get all emeralds, type 'getemeralds'.")
chatprint("To give everyone 50 rings to go super, type 'Give50'.")

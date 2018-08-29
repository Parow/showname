Citizen.CreateThread(function()
		Citizen.Wait(1500)
		players = {}
		for i = 0, 31 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
		SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/32")
end)
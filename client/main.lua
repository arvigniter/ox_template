function Ox.PlayerLoaded()
	for group in pairs(GlobalState.groups) do
		local rank = LocalPlayer.state[group]
		print(group, cache.groups[group].label, rank, cache.groups[group].ranks[rank])
	end
end

function Ox.PlayerLogout()
	print('logged out')
end

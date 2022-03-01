---@param source number
---@param new boolean
AddEventHandler('ox:playerLoaded', function(source, new)
	local player = Player(source)

	for group, rank in pairs(player.getGroups()) do
		print(group, rank, cache.groups[group].ranks[rank])
	end

	for account, balance in pairs(player.getAccount()) do
		print(account, '$'..balance)
	end
end)


---@param source number
---@param data table
---@param reason string
---```lua
---data = {
---	userid: number
---	charid: number
---}
---```
AddEventHandler('ox:playerLogout', function(source, data, reason)
	print(('Dropped player.%s (%s)'):format(GetPlayerName(source), reason))
end)


---@param source number
---@param group string
---@param rank number
AddEventHandler('ox_groups:setGroup', function(source, group, rank)
	local name = GetPlayerName(source)
	local groupLabel = cache.groups[group].label
	local rankLabel = cache.groups[group].ranks[rank]
	print(('%s set to %s %s (%s %s)'):format(name, group, rank, groupLabel, rankLabel))
end)

local vehicles = {}

CreateThread(function()
	vehicles[1] = Ox.CreateVehicle(false, `sultanrs`, vec(-56.479122, -1116.870362, 26.432250, 0.000030517578))
	vehicles[2] = Ox.CreateVehicle(false, `sultanrs`, vec(-50.742858, -1116.514282, 26.432250, 0.000030517578))

	print(json.encode(vehicles, {indent=true}))
end)

local appid = '639151201480343593'
local asset = 'dede1'

function SetRP()
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())

    SetDiscordAppId(appid)
    SetDiscordRichPresenceAsset(asset)
    SetDiscordRichPresenceAssetText('FreeWayRP')
    SetRichPresence('(' .. GetNumberOfPlayers() .. ' / 32)')
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
    SetRP()
  end
end)

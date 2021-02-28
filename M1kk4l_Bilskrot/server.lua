--[[
███╗   ███╗  ███╗  ██╗  ██╗██╗  ██╗  ██╗██╗██╗
████╗ ████║░████║  ██║ ██╔╝██║ ██╔╝ ██╔╝██║██║
██╔████╔██║██╔██║  █████═╝ █████═╝ ██╔╝ ██║██║
██║╚██╔╝██║╚═╝██║  ██╔═██╗ ██╔═██╗ ███████║██║
██║ ╚═╝ ██║███████╗██║ ╚██╗██║ ╚██╗╚════██║███████╗
╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝     ╚═╝╚══════╝
M1kk4l © 2021 | Alle Rettigheder Forbeholdes.
--]] 



HT = nil

TriggerEvent('HT_base:getBaseObjects', function(obj) 
    HT = obj 
end)


local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","M1kk4l_Bilskrot")

HT.RegisterServerCallback('M1kk4l:Client:CheckJob', function(source, cb)
    local user_id = vRP.getUserId({source})

    if vRP.hasGroup({user_id, M1kk4l.Group}) then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('M1kk4l:BilskrotPenge')
AddEventHandler('M1kk4l:BilskrotPenge', function()
  local source = source
  local user_id = vRP.getUserId({source})
  local penge2 = {M1kk4l.Penge[1], M1kk4l.Penge[2], M1kk4l.Penge[3], M1kk4l.Penge[4], M1kk4l.Penge[5], M1kk4l.Penge[6], M1kk4l.Penge[7], M1kk4l.Penge[8], M1kk4l.Penge[9], M1kk4l.Penge[10], M1kk4l.Penge[11], M1kk4l.Penge[12], M1kk4l.Penge[14], M1kk4l.Penge[15], M1kk4l.Penge[16], M1kk4l.Penge[17], M1kk4l.Penge[18], M1kk4l.Penge[19], M1kk4l.Penge[20], M1kk4l.Penge[21], M1kk4l.Penge[22], M1kk4l.Penge[23], M1kk4l.Penge[24], M1kk4l.Penge[25], M1kk4l.Penge[26], M1kk4l.Penge[27], M1kk4l.Penge[28], M1kk4l.Penge[29], M1kk4l.Penge[30],}
  local penge = (penge2[math.random(#penge2)])
    vRP.giveMoney({user_id,penge})
    TriggerClientEvent("pNotify:SendNotification", source,{text = "Du modtog <b style='color: #4E9350'>"..penge.." DKK</b>. For at skrotte køretøjet.", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end)

RegisterServerEvent('M1kk4l2:BilskrotPenge')
AddEventHandler('M1kk4l2:BilskrotPenge', function()
  local source = source
  local user_id = vRP.getUserId({source})
  local penge2 = {M1kk4l.Penge[1], M1kk4l.Penge[2], M1kk4l.Penge[3], M1kk4l.Penge[4], M1kk4l.Penge[5], M1kk4l.Penge[6], M1kk4l.Penge[7], M1kk4l.Penge[8], M1kk4l.Penge[9], M1kk4l.Penge[10], M1kk4l.Penge[11], M1kk4l.Penge[12], M1kk4l.Penge[14], M1kk4l.Penge[15], M1kk4l.Penge[16], M1kk4l.Penge[17], M1kk4l.Penge[18], M1kk4l.Penge[19], M1kk4l.Penge[20], M1kk4l.Penge[21], M1kk4l.Penge[22], M1kk4l.Penge[23], M1kk4l.Penge[24], M1kk4l.Penge[25], M1kk4l.Penge[26], M1kk4l.Penge[27], M1kk4l.Penge[28], M1kk4l.Penge[29], M1kk4l.Penge[30],}
  local penge = (penge2[math.random(#penge2)])
    vRP.giveMoney({user_id,penge})
    TriggerClientEvent("pNotify:SendNotification", source,{text = "Du modtog <b style='color: #4E9350'>"..penge.." DKK</b>. For at skrotte køretøjet.", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end)

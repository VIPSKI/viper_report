if ReportSystemConfig.PrintInConsoleOrNot == true then
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('Scriptet ' .. resourceName .. ' er nu startet. Rescourcen er lavet af NEWCORE Devleporene V1PER Og Kian')
  end)
elseif ReportSystemConfig.PrintInConsoleOrNot == false then
    -- Gør intet habbiiiiii
end

RegisterNetEvent('SEND:REPORT', function(data)
    local Reason = ''
    print(json.encode(data[1], {indent=true}))
    for k, v in pairs(data[1]) do
      Reason = Reason .. '- ' .. v .. '\n'
    end
    local embed = {
          {
              ["color"] = ReportSystemConfig.WebhookColor,
              ["title"] = ReportSystemConfig.WebhookTitle,
              ["description"] = ReportSystemConfig.WebhookDescText .. data[2] .. ReportSystemConfig.WebhookDescDiscordTag .. data[3] .. ReportSystemConfig.WebhookDescID .. data[4] .. ReportSystemConfig.WebhookDescGrund.. Reason,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
  
    PerformHttpRequest(ReportSystemConfig.WebhookLink, function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })
end)
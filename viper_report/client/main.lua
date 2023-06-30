if ReportSystemConfig.PrintOnStartUp == true then
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('Scriptet ' .. resourceName .. ' er nu startet. Rescourcen er lavet af NEWCORE Devleporene V1PER Og Kian')
  end)
elseif ReportSystemConfig.PrintOnStartUp == false then
    -- Ingen Ting
end

-- Context Menu Og Settings Til Config
RegisterCommand(ReportSystemConfig.ReportMenuOpen, function()
    if ReportSystemConfig.PrintOrNot == "print" then
        
    print(ReportSystemConfig.PrintText)
    lib.registerContext({
        id = 'some_menu',
        title = 'Report en spiller.',
        options = {
          {
            title = ReportSystemConfig.ReportMenuTitle,
            icon = ReportSystemConfig.ReportMenuIcon
          },
          {
            title = ReportSystemConfig.ContextMenuKnapTitle,
            description = ReportSystemConfig.ContextMenuKnapDesc,
            icon = ReportSystemConfig.ContextMenuKnapIcon,
            onSelect = function()
              TriggerEvent('SEND:REPORT:INFO')
            end,
          },
        }
      })
      lib.showContext('some_menu')

    elseif ReportSystemConfig.PrintOrNot == "notify" then

        lib.notify({
            title = ReportSystemConfig.NotifyAabenMenuTitle,
            description = ReportSystemConfig.NotifyAabenMenuDesc,
            type = ReportSystemConfig.NotifyType
        })
        lib.registerContext({
            id = 'some_menu',
            title = 'Report en spiller.',
            options = {
              {
                title = ReportSystemConfig.ReportMenuTitle,
                icon = ReportSystemConfig.ReportMenuIcon
              },
              {
                title = ReportSystemConfig.ContextMenuKnapTitle,
                description = ReportSystemConfig.ContextMenuKnapDesc,
                icon = ReportSystemConfig.ContextMenuKnapIcon,
                onSelect = function()
                  TriggerEvent('SEND:REPORT:INFO')
                end,
              },
            }
          })
          lib.showContext('some_menu')

    elseif ReportSystemConfig.PrintOrNot == "Nothing" then

        lib.registerContext({
            id = 'some_menu',
            title = 'Report en spiller.',
            options = {
              {
                title = ReportSystemConfig.ReportMenuTitle,
                icon = ReportSystemConfig.ReportMenuIcon
              },
              {
                title = ReportSystemConfig.ContextMenuKnapTitle,
                description = ReportSystemConfig.ContextMenuKnapDesc,
                icon = ReportSystemConfig.ContextMenuKnapIcon,
                onSelect = function()
                    TriggerEvent('SEND:REPORT:INFO')
                end,
              },
            }
          })
          lib.showContext('some_menu')

    end
end)

-- RegisterEvents
RegisterNetEvent('SEND:REPORT:INFO')
AddEventHandler('SEND:REPORT:INFO', function()
    print("Hallo World!")
    local input = lib.inputDialog(ReportSystemConfig.ReportDialogTitle, {
        {type = 'multi-select', label = ReportSystemConfig.ReportGrundlag, options = ReportSystemConfig.Grundlag, required = ReportSystemConfig.IsGurndlagRequried},
        {type = 'input', label = ReportSystemConfig.ReportInputText, description = ReportSystemConfig.ReportInputDesc, required = ReportSystemConfig.InputFieldRequired, min = ReportSystemConfig.MinOrd},
        {type = 'input', label = ReportSystemConfig.ReportInputTextOwn, description = ReportSystemConfig.ReportInputDescOwn, required = ReportSystemConfig.InputFieldOwnRequired},
        {type = 'number', label = ReportSystemConfig.IdPaaSpillerTitle, description = ReportSystemConfig.IdPaaSpillerDesc, required = ReportSystemConfig.NumberFieldRequired, icon = ReportSystemConfig.NumberFieldIcon},
      })
       
      TriggerServerEvent('SEND:REPORT', input)
end)
ReportSystemConfig = {}

-- Print I Start Funktion
ReportSystemConfig.PrintInConsoleOrNot = true -- Skal den printe når rescources starter eller ikke i Console   
ReportSystemConfig.PrintOnStartUp = true -- Skal den printe når rescources starter eller ikke i F8

-- Command
ReportSystemConfig.ReportMenuOpen = 'report' -- Command til og åbne report menuen

-- Notify Settings
ReportSystemConfig.NotifyAabenMenuTitle = 'REPORT - MENU' -- Title på notify´en
ReportSystemConfig.NotifyAabenMenuDesc = 'Du tilgik report menuen' -- Hvad der skal stå under titlen hvis du har valgt og bruge notify
ReportSystemConfig.NotifyType = 'info' -- Hvad for et logo der skal være i notify´en hvis configen står til notify

-- Context Menu Settings
-- Context Overskrift Text
ReportSystemConfig.ReportMenuTitle = 'Husk du må kun report en spiller hvis du har bevis og et ordentligt grunlag ellers ville du modtag en advarlse så lad vær med og report uden grund tak!'
ReportSystemConfig.ReportMenuIcon = 'triangle-exclamation' -- Icon på information overskriften

-- Context Knap
ReportSystemConfig.ContextMenuKnapTitle = 'Send En Report' -- Report knap titlen
ReportSystemConfig.ContextMenuKnapDesc = 'Send En Report På En Spiller!' -- Det der skal stå under report knap titlen
ReportSystemConfig.ContextMenuKnapIcon = 'person' -- Icon på knappen der åbner report dialogen

-- Dialog Settings
-- Grundlag
ReportSystemConfig.ReportDialogTitle = 'SERVER NAVN - REPORT'
ReportSystemConfig.ReportInputText = 'Report Grundlag'
ReportSystemConfig.ReportInputDesc = 'Skriv til grundlag'
ReportSystemConfig.InputFieldRequired = true
ReportSystemConfig.MinOrd = 16
-- ID
ReportSystemConfig.IdPaaSpillerTitle = 'ID'
ReportSystemConfig.IdPaaSpillerDesc = 'ID på spilleren du reporter'
ReportSystemConfig.NumberFieldRequired = true
ReportSystemConfig.NumberFieldIcon = 'hashtag'
-- Eget ID
ReportSystemConfig.ReportInputTextOwn = 'Dit Discord Tag'
ReportSystemConfig.ReportInputDescOwn = 'Skriv Dit Discord Tag Eller Report Bliver Afvist!'
-- Report Grundlag Muligheder
ReportSystemConfig.ReportGrundlag = 'Hvad Er Grundlaget Til Reporten'
ReportSystemConfig.IsGurndlagRequried = true -- true hvis man skal udfylde det her felt. false hvis man ikke skal
ReportSystemConfig.Grundlag = {
    {value = 'VDM'},
    {value = 'RDM'},
    {value = 'FearRP'},
    {value = 'Metagaming'},
    {value = 'Powergaming'},
    {value = 'NLR'},
    {value = 'Backseat Moderating'},
    {value = 'FailRP'},
    -- Template
    -- {value = 'Din grundlag text'},
  }

  -- Webhook Settings
ReportSystemConfig.WebhookLink = 'DIT_WEB_URL'
ReportSystemConfig.WebhookColor = 128, 255, 128
ReportSystemConfig.WebhookTitle = '** SERVER NAVN - REPORT **'
ReportSystemConfig.WebhookDescText = 'Besked: '
ReportSystemConfig.WebhookDescDiscordTag = '\nDiscord: '
ReportSystemConfig.WebhookDescID = '\nID: '
ReportSystemConfig.WebhookDescDato = '\nDato: '
ReportSystemConfig.WebhookDescGrund = '\nHvad Spilleren Har Gjort:\n'

-- Notify, Print, Eller Ingen Ting
ReportSystemConfig.PrintOrNot = 'print' -- Hvad du skal skrive for den gør de forskellige ting (notify) for at vise en notify (print) for den skal print i F8 (Nothing) For den ikke skal gøre noget
ReportSystemConfig.PrintText = 'Hallo World!' -- Texten den printer hvis den skal printe når du executer commanden

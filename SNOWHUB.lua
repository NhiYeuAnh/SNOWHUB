notis = require(game.ReplicatedStorage:WaitForChild("Notification"))
notis.new("<Color=White>Summer Hub<Color=/>"):Display()
notis.new("<Color=Blue>Owner: summerhub<Color=/>"):Display() 
notis.new("<Color=Yellow>Exploit Use:<Color=/> ".. identifyexecutor()):Display() 
local players = game:GetService("Players")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Summer Hub",
    Text = "Welcome, " .. players.LocalPlayer.DisplayName,
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. players.LocalPlayer.UserId .. "&w=100&h=100 true",
    Duration = 5
})


local WScript = {}

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("DataLoaded")
repeat
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam") then
            if getgenv().Teams == "Marines" then
                for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do
                    v.Function()
                end
            elseif getgenv().Teams == "Pirates" then
                for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
                    v.Function()
                end
            else
                for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do
                    v.Function()
                end
            end
        end
    end)
until game.Players.LocalPlayer.Team ~= nil
wait(1)


First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end
function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if First_Sea then
    if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == 'Jungle' then -- Bandit
    Ms = "Bandit"
    NameQuest = "BanditQuest1"
    QuestLv = 1
    NameMon = "Bandit"
    CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
    CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
    elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then -- Monkey
    Ms = "Monkey"
    NameQuest = "JungleQuest"
    QuestLv = 1
    NameMon = "Monkey"
    CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
    CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
    elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then -- Gorilla
    Ms = "Gorilla"
    NameQuest = "JungleQuest"
    QuestLv = 2
    NameMon = "Gorilla"
    CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
    CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
    elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then -- Pirate
    Ms = "Pirate"
    NameQuest = "BuggyQuest1"
    QuestLv = 1
    NameMon = "Pirate"
    CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
    CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
    elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then -- Brute
    Ms = "Brute"
    NameQuest = "BuggyQuest1"
    QuestLv = 2
    NameMon = "Brute"
    CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
    CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
    elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then -- Desert Bandit
    Ms = "Desert Bandit"
    NameQuest = "DesertQuest"
    QuestLv = 1
    NameMon = "Desert Bandit"
    CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
    CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
    elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then -- Desert Officer
    Ms = "Desert Officer"
    NameQuest = "DesertQuest"
    QuestLv = 2
    NameMon = "Desert Officer"
    CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
    CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
    elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == 'Snow' then -- Snow Bandit
    Ms = "Snow Bandit"
    NameQuest = "SnowQuest"
    QuestLv = 1
    NameMon = "Snow Bandit"
    CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
    CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
    elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == 'Snow' then -- Snowman
    Ms = "Snowman"
    NameQuest = "SnowQuest"
    QuestLv = 2
    NameMon = "Snowman"
    CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
    CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
    elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then -- Chief Petty Officer
    Ms = "Chief Petty Officer"
    NameQuest = "MarineQuest2"
    QuestLv = 1
    NameMon = "Chief Petty Officer"
    CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
    CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
    elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then -- Sky Bandit
    Ms = "Sky Bandit"
    NameQuest = "SkyQuest"
    QuestLv = 1
    NameMon = "Sky Bandit"
    CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
    CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
    elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then -- Dark Master
    Ms = "Dark Master"
    NameQuest = "SkyQuest"
    QuestLv = 2
    NameMon = "Dark Master"
    CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
    CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
    elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then -- Prisoner
    Ms = "Prisoner"
    NameQuest = "PrisonerQuest"
    QuestLv = 1
    NameMon = "Prisoner"
    CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
    elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then -- Dangerous Prisoner
    Ms = "Dangerous Prisoner"
    NameQuest = "PrisonerQuest"
    QuestLv = 2
    NameMon = "Dangerous Prisoner"
    CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
    elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then -- Toga Warrior
    Ms = "Toga Warrior"
    NameQuest = "ColosseumQuest"
    QuestLv = 1
    NameMon = "Toga Warrior"
    CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
    CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
    elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then -- Gladiator
    Ms = "Gladiator"
    NameQuest = "ColosseumQuest"
    QuestLv = 2
    NameMon = "Gladiator"
    CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
    CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
    elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then -- Military Soldier
    Ms = "Military Soldier"
    NameQuest = "MagmaQuest"
    QuestLv = 1
    NameMon = "Military Soldier"
    CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
    CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
    elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then -- Military Spy
    Ms = "Military Spy"
    NameQuest = "MagmaQuest"
    QuestLv = 2
    NameMon = "Military Spy"
    CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
    CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
    elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
    Ms = "Fishman Warrior"
    NameQuest = "FishmanQuest"
    QuestLv = 1
    NameMon = "Fishman Warrior"
    CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
    Ms = "Fishman Commando"
    NameQuest = "FishmanQuest"
    QuestLv = 2
    NameMon = "Fishman Commando"
    CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
    Ms = "God's Guard"
    NameQuest = "SkyExp1Quest"
    QuestLv = 1
    NameMon = "God's Guard"
    CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
    CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
    end
    elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
    Ms = "Shanda"
    NameQuest = "SkyExp1Quest"
    QuestLv = 2
    NameMon = "Shanda"
    CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
    CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    end
    elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
    Ms = "Royal Squad"
    NameQuest = "SkyExp2Quest"
    QuestLv = 1
    NameMon = "Royal Squad"
    CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
    CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
    elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
    Ms = "Royal Soldier"
    NameQuest = "SkyExp2Quest"
    QuestLv = 2
    NameMon = "Royal Soldier"
    CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
    CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
    elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
    Ms = "Galley Pirate"
    NameQuest = "FountainQuest"
    QuestLv = 1
    NameMon = "Galley Pirate"
    CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
    CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
    elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
    Ms = "Galley Captain"
    NameQuest = "FountainQuest"
    QuestLv = 2
    NameMon = "Galley Captain"
    CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
    CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
    end
    end
    if Second_Sea then
    if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
    Ms = "Raider"
    NameQuest = "Area1Quest"
    QuestLv = 1
    NameMon = "Raider"
    CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
    CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
    elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
    Ms = "Mercenary"
    NameQuest = "Area1Quest"
    QuestLv = 2
    NameMon = "Mercenary"
    CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
    CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
    elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
    Ms = "Swan Pirate"
    NameQuest = "Area2Quest"
    QuestLv = 1
    NameMon = "Swan Pirate"
    CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
    CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
    elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
    Ms = "Factory Staff"
    NameQuest = "Area2Quest"
    QuestLv = 2
    NameMon = "Factory Staff"
    CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
    CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
    elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
    Ms = "Marine Lieutenant"
    NameQuest = "MarineQuest3"
    QuestLv = 1
    NameMon = "Marine Lieutenant"
    CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
    CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
    elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
    Ms = "Marine Captain"
    NameQuest = "MarineQuest3"
    QuestLv = 2
    NameMon = "Marine Captain"
    CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
    CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
    elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
    Ms = "Zombie"
    NameQuest = "ZombieQuest"
    QuestLv = 1
    NameMon = "Zombie"
    CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
    CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
    elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
    Ms = "Vampire"
    NameQuest = "ZombieQuest"
    QuestLv = 2
    NameMon = "Vampire"
    CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
    CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
    elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == 'Snow Mountain' then -- Snow Trooper
    Ms = "Snow Trooper"
    NameQuest = "SnowMountainQuest"
    QuestLv = 1
    NameMon = "Snow Trooper"
    CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
    CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
    elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'Snow Mountain' then -- Winter Warrior
    Ms = "Winter Warrior"
    NameQuest = "SnowMountainQuest"
    QuestLv = 2
    NameMon = "Winter Warrior"
    CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
    CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
    elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
    Ms = "Lab Subordinate"
    NameQuest = "IceSideQuest"
    QuestLv = 1
    NameMon = "Lab Subordinate"
    CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
    CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
    elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
    Ms = "Horned Warrior"
    NameQuest = "IceSideQuest"
    QuestLv = 2
    NameMon = "Horned Warrior"
    CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
    CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
    elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
    Ms = "Magma Ninja"
    NameQuest = "FireSideQuest"
    QuestLv = 1
    NameMon = "Magma Ninja"
    CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
    CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
    elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
    Ms = "Lava Pirate"
    NameQuest = "FireSideQuest"
    QuestLv = 2
    NameMon = "Lava Pirate"
    CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
    CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
    elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
    Ms = "Ship Deckhand"
    NameQuest = "ShipQuest1"
    QuestLv = 1
    NameMon = "Ship Deckhand"
    CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
    CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
    Ms = "Ship Engineer"
    NameQuest = "ShipQuest1"
    QuestLv = 2
    NameMon = "Ship Engineer"
    CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
    CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
    Ms = "Ship Steward"
    NameQuest = "ShipQuest2"
    QuestLv = 1
    NameMon = "Ship Steward"
    CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
    CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer
    Ms = "Ship Officer"
    NameQuest = "ShipQuest2"
    QuestLv = 2
    NameMon = "Ship Officer"
    CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
    CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
    Ms = "Arctic Warrior"
    NameQuest = "FrostQuest"
    QuestLv = 1
    NameMon = "Arctic Warrior"
    CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
    CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
    if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
    end
    elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == 'Frost' then -- Snow Lurker
    Ms = "Snow Lurker"
    NameQuest = "FrostQuest"
    QuestLv = 2
    NameMon = "Snow Lurker"
    CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
    CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
    elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then -- Sea Soldier
    Ms = "Sea Soldier"
    NameQuest = "ForgottenQuest"
    QuestLv = 1
    NameMon = "Sea Soldier"
    CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
    CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
    elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
    Ms = "Water Fighter"
    NameQuest = "ForgottenQuest"
    QuestLv = 2
    NameMon = "Water Fighter"
    CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
    CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
    end
    end
    if Third_Sea then
    if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
    Ms = "Pirate Millionaire"
    NameQuest = "PiratePortQuest"
    QuestLv = 1
    NameMon = "Pirate Millionaire"
    CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
    CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
    elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
    Ms = "Pistol Billionaire"
    NameQuest = "PiratePortQuest"
    QuestLv = 2
    NameMon = "Pistol Billionaire"
    CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
    CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
    elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
    Ms = "Dragon Crew Warrior"
    NameQuest = "AmazonQuest"
    QuestLv = 1
    NameMon = "Dragon Crew Warrior"
    CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
    CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
    elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
    Ms = "Dragon Crew Archer"
    NameQuest = "AmazonQuest"
    QuestLv = 2
    NameMon = "Dragon Crew Archer"
    CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
    CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
    elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
    Ms = "Female Islander"
    NameQuest = "AmazonQuest2"
    QuestLv = 1
    NameMon = "Female Islander"
    CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
    CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
    elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
    Ms = "Giant Islander"
    NameQuest = "AmazonQuest2"
    QuestLv = 2
    NameMon = "Giant Islander"
    CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
    CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
    elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
    Ms = "Marine Commodore"
    NameQuest = "MarineTreeIsland"
    QuestLv = 1
    NameMon = "Marine Commodore"
    CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
    CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
    elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
    Ms = "Marine Rear Admiral"
    NameQuest = "MarineTreeIsland"
    QuestLv = 2
    NameMon = "Marine Rear Admiral"
    CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
    CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
    elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
    Ms = "Fishman Raider"
    NameQuest = "DeepForestIsland3"
    QuestLv = 1
    NameMon = "Fishman Raider"
    CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
    CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
    elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
    Ms = "Fishman Captain"
    NameQuest = "DeepForestIsland3"
    QuestLv = 2
    NameMon = "Fishman Captain"
    CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
    CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
    elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
    Ms = "Forest Pirate"
    NameQuest = "DeepForestIsland"
    QuestLv = 1
    NameMon = "Forest Pirate"
    CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
    CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
    elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate
    Ms = "Mythological Pirate"
    NameQuest = "DeepForestIsland"
    QuestLv = 2
    NameMon = "Mythological Pirate"
    CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
    CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
    elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
    Ms = "Jungle Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 1
    NameMon = "Jungle Pirate"
    CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
    CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
    elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
    Ms = "Musketeer Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 2
    NameMon = "Musketeer Pirate"
    CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
    CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
    elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
    Ms = "Reborn Skeleton"
    NameQuest = "HauntedQuest1"
    QuestLv = 1
    NameMon = "Reborn Skeleton"
    CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
    CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
    elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
    Ms = "Living Zombie"
    NameQuest = "HauntedQuest1"
    QuestLv = 2
    NameMon = "Living Zombie"
    CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
    CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
    elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
    Ms = "Demonic Soul"
    NameQuest = "HauntedQuest2"
    QuestLv = 1
    NameMon = "Demonic Soul"
    CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
    CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
    elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
    Ms = "Posessed Mummy"
    NameQuest = "HauntedQuest2"
    QuestLv = 2
    NameMon = "Posessed Mummy"
    CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
    CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
    elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
    Ms = "Peanut Scout"
    NameQuest = "NutsIslandQuest"
    QuestLv = 1
    NameMon = "Peanut Scout"
    CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
    elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
    Ms = "Peanut President"
    NameQuest = "NutsIslandQuest"
    QuestLv = 2
    NameMon = "Peanut President"
    CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
    elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
    Ms = "Ice Cream Chef"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 1
    NameMon = "Ice Cream Chef"
    CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
    elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == 'Ice Cream Island' then
    Ms = "Ice Cream Commander"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 2
    NameMon = "Ice Cream Commander"
    CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
    elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
    Ms = "Cookie Crafter"
    NameQuest = "CakeQuest1"
    QuestLv = 1
    NameMon = "Cookie Crafter"
    CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
    CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
    elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
    Ms = "Cake Guard"
    NameQuest = "CakeQuest1"
    QuestLv = 2
    NameMon = "Cake Guard"
    CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
    CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
    elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
    Ms = "Baking Staff"
    NameQuest = "CakeQuest2"
    QuestLv = 1
    NameMon = "Baking Staff"
    CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
    CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
    elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
    Ms = "Head Baker"
    NameQuest = "CakeQuest2"
    QuestLv = 2
    NameMon = "Head Baker"
    CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
    CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
    elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
    Ms = "Cocoa Warrior"
    NameQuest = "ChocQuest1"
    QuestLv = 1
    NameMon = "Cocoa Warrior"
    CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
    elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
    Ms = "Chocolate Bar Battler"
    NameQuest = "ChocQuest1"
    QuestLv = 2
    NameMon = "Chocolate Bar Battler"
    CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
    elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
    Ms = "Sweet Thief"
    NameQuest = "ChocQuest2"
    QuestLv = 1
    NameMon = "Sweet Thief"
    CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
    elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
    Ms = "Candy Rebel"
    NameQuest = "ChocQuest2"
    QuestLv = 2
    NameMon = "Candy Rebel"
    CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
    elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
    Ms = "Candy Pirate"
    NameQuest = "CandyQuest1"
    QuestLv = 1
    NameMon = "Candy Pirate"
    CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
    CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
    elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == 'Candy Island' then
    Ms = "Snow Demon"
    NameQuest = "CandyQuest1"
    QuestLv = 2
    NameMon = "Snow Demon"
    CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
    CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
    Ms = "Isle Outlaw"
    NameQuest = "TikiQuest1"
    QuestLv = 1
    NameMon = "Isle Outlaw"
    CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
    CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
    elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then
    Ms = "Island Boy"
    NameQuest = "TikiQuest1"
    QuestLv = 2
    NameMon = "Island Boy"
    CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
    CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
    elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
    Ms = "Isle Champion"
    NameQuest = "TikiQuest2"
    QuestLv = 2
    NameMon = "Isle Champion"
    CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
    CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
    end
    end
    end
    
    --// Select Monster
    if First_Sea then
    tableMon = {
      "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
    } elseif Second_Sea then
    tableMon = {
      "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
    } elseif Third_Sea then
    tableMon = {
      "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"
    }
    end
    
    --// Select Island
    if First_Sea then
    AreaList = {
      'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
    } elseif Second_Sea then
    AreaList = {
      'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
    } elseif Third_Sea then
    AreaList = {
      'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
    }
    end
    
    --// Check Boss Quest
    function CheckBossQuest()
    if First_Sea then
    if SelectBoss == "The Gorilla King" then
    BossMon = "The Gorilla King"
    NameBoss = 'The Gorrila King'
    NameQuestBoss = "JungleQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$2,000\n7,000 Exp."
    CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
    CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
    elseif SelectBoss == "Bobby" then
    BossMon = "Bobby"
    NameBoss = 'Bobby'
    NameQuestBoss = "BuggyQuest1"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$8,000\n35,000 Exp."
    CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
    CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
    elseif SelectBoss == "The Saw" then
    BossMon = "The Saw"
    NameBoss = 'The Saw'
    CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
    elseif SelectBoss == "Yeti" then
    BossMon = "Yeti"
    NameBoss = 'Yeti'
    NameQuestBoss = "SnowQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$10,000\n180,000 Exp."
    CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
    CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
    elseif SelectBoss == "Mob Leader" then
    BossMon = "Mob Leader"
    NameBoss = 'Mob Leader'
    CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
    elseif SelectBoss == "Vice Admiral" then
    BossMon = "Vice Admiral"
    NameBoss = 'Vice Admiral'
    NameQuestBoss = "MarineQuest2"
    QuestLvBoss = 2
    RewardBoss = "Reward:\n$10,000\n180,000 Exp."
    CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
    CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
    elseif SelectBoss == "Saber Expert" then
    NameBoss = 'Saber Expert'
    BossMon = "Saber Expert"
    CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
    elseif SelectBoss == "Warden" then
    BossMon = "Warden"
    NameBoss = 'Warden'
    NameQuestBoss = "ImpelQuest"
    QuestLvBoss = 1
    RewardBoss = "Reward:\n$6,000\n850,000 Exp."
    CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
    CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
    elseif SelectBoss == "Chief Warden" then
    BossMon = "Chief Warden"
    NameBoss = 'Chief Warden'
    NameQuestBoss = "ImpelQuest"
    QuestLvBoss = 2
    RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
    CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
    CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
    elseif SelectBoss == "Swan" then
    BossMon = "Swan"
    NameBoss = 'Swan'
    NameQuestBoss = "ImpelQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
    CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
    CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
    elseif SelectBoss == "Magma Admiral" then
    BossMon = "Magma Admiral"
    NameBoss = 'Magma Admiral'
    NameQuestBoss = "MagmaQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
    CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
    CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
    elseif SelectBoss == "Fishman Lord" then
    BossMon = "Fishman Lord"
    NameBoss = 'Fishman Lord'
    NameQuestBoss = "FishmanQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
    CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
    elseif SelectBoss == "Wysper" then
    BossMon = "Wysper"
    NameBoss = 'Wysper'
    NameQuestBoss = "SkyExp1Quest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
    CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
    CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
    elseif SelectBoss == "Thunder God" then
    BossMon = "Thunder God"
    NameBoss = 'Thunder God'
    NameQuestBoss = "SkyExp2Quest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
    CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
    CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
    elseif SelectBoss == "Cyborg" then
    BossMon = "Cyborg"
    NameBoss = 'Cyborg'
    NameQuestBoss = "FountainQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
    CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
    CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
    elseif SelectBoss == "Ice Admiral" then
    BossMon = "Ice Admiral"
    NameBoss = 'Ice Admiral'
    CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
    elseif SelectBoss == "Greybeard" then
    BossMon = "Greybeard"
    NameBoss = 'Greybeard'
    CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
    end
    end
    if Second_Sea then
    if SelectBoss == "Diamond" then
    BossMon = "Diamond"
    NameBoss = 'Diamond'
    NameQuestBoss = "Area1Quest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
    CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
    CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
    elseif SelectBoss == "Jeremy" then
    BossMon = "Jeremy"
    NameBoss = 'Jeremy'
    NameQuestBoss = "Area2Quest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
    CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
    CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
    elseif SelectBoss == "Fajita" then
    BossMon = "Fajita"
    NameBoss = 'Fajita'
    NameQuestBoss = "MarineQuest3"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
    CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
    CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
    elseif SelectBoss == "Don Swan" then
    BossMon = "Don Swan"
    NameBoss = 'Don Swan'
    CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
    elseif SelectBoss == "Smoke Admiral" then
    BossMon = "Smoke Admiral"
    NameBoss = 'Smoke Admiral'
    NameQuestBoss = "IceSideQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
    CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
    CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
    elseif SelectBoss == "Awakened Ice Admiral" then
    BossMon = "Awakened Ice Admiral"
    NameBoss = 'Awakened Ice Admiral'
    NameQuestBoss = "FrostQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
    CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
    CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
    elseif SelectBoss == "Tide Keeper" then
    BossMon = "Tide Keeper"
    NameBoss = 'Tide Keeper'
    NameQuestBoss = "ForgottenQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
    CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
    CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
    elseif SelectBoss == "Darkbeard" then
    BossMon = "Darkbeard"
    NameBoss = 'Darkbeard'
    CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
    elseif SelectBoss == "Cursed Captain" then
    BossMon = "Cursed Captain"
    NameBoss = 'Cursed Captain'
    CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
    elseif SelectBoss == "Order" then
    BossMon = "Order"
    NameBoss = 'Order'
    CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
    end
    end
    if Third_Sea then
    if SelectBoss == "Stone" then
    BossMon = "Stone"
    NameBoss = 'Stone'
    NameQuestBoss = "PiratePortQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
    CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
    CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
    elseif SelectBoss == "Island Empress" then
    BossMon = "Island Empress"
    NameBoss = 'Island Empress'
    NameQuestBoss = "AmazonQuest2"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
    CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
    CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
    elseif SelectBoss == "Kilo Admiral" then
    BossMon = "Kilo Admiral"
    NameBoss = 'Kilo Admiral'
    NameQuestBoss = "MarineTreeIsland"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
    CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
    CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
    elseif SelectBoss == "Captain Elephant" then
    BossMon = "Captain Elephant"
    NameBoss = 'Captain Elephant'
    NameQuestBoss = "DeepForestIsland"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
    CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
    CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
    elseif SelectBoss == "Beautiful Pirate" then
    BossMon = "Beautiful Pirate"
    NameBoss = 'Beautiful Pirate'
    NameQuestBoss = "DeepForestIsland2"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
    CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
    CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
    elseif SelectBoss == "Cake Queen" then
    BossMon = "Cake Queen"
    NameBoss = 'Cake Queen'
    NameQuestBoss = "IceCreamIslandQuest"
    QuestLvBoss = 3
    RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
    CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
    CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
    elseif SelectBoss == "Longma" then
    BossMon = "Longma"
    NameBoss = 'Longma'
    CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
    elseif SelectBoss == "Soul Reaper" then
    BossMon = "Soul Reaper"
    NameBoss = 'Soul Reaper'
    CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
    elseif SelectBoss == "rip_indra True Form" then
    BossMon = "rip_indra True Form"
    NameBoss = 'rip_indra True Form'
    CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
    end
    end
    end
    
    --// Check Material
    function MaterialMon()
    if SelectMaterial == "Radioactive Material" then
    MMon = "Factory Staff"
    MPos = CFrame.new(295,73,-56)
    SP = "Default"
    elseif SelectMaterial == "Mystic Droplet" then
    MMon = "Water Fighter"
    MPos = CFrame.new(-3385,239,-10542)
    SP = "Default"
    elseif SelectMaterial == "Magma Ore" then
    if First_Sea then
    MMon = "Military Spy"
    MPos = CFrame.new(-5815,84,8820)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Magma Ninja"
    MPos = CFrame.new(-5428,78,-5959)
    SP = "Default"
    end
    elseif SelectMaterial == "Angel Wings" then
    MMon = "God's Guard"
    MPos = CFrame.new(-4698,845,-1912)
    SP = "Default"
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
    end
    elseif SelectMaterial == "Leather" then
    if First_Sea then
    MMon = "Brute"
    MPos = CFrame.new(-1145,15,4350)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Marine Captain"
    MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
    SP = "Default"
    elseif Third_Sea then
    MMon = "Jungle Pirate"
    MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
    SP = "Default"
    end
    elseif SelectMaterial == "Scrap Metal" then
    if First_Sea then
    MMon = "Brute"
    MPos = CFrame.new(-1145,15,4350)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Swan Pirate"
    MPos = CFrame.new(878,122,1235)
    SP = "Default"
    elseif Third_Sea then
    MMon = "Jungle Pirate"
    MPos = CFrame.new(-12107,332,-10549)
    SP = "Default"
    end
    elseif SelectMaterial == "Fish Tail" then
    if Third_Sea then
    MMon = "Fishman Raider"
    MPos = CFrame.new(-10993,332,-8940)
    SP = "Default"
    elseif First_Sea then
    MMon = "Fishman Warrior"
    MPos = CFrame.new(61123,19,1569)
    SP = "Default"
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
    end
    end
    elseif SelectMaterial == "Demonic Wisp" then
    MMon = "Demonic Soul"
    MPos = CFrame.new(-9507,172,6158)
    SP = "Default"
    elseif SelectMaterial == "Vampire Fang" then
    MMon = "Vampire"
    MPos = CFrame.new(-6033,7,-1317)
    SP = "Default"
    elseif SelectMaterial == "Conjured Cocoa" then
    MMon = "Chocolate Bar Battler"
    MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
    SP = "Default"
    elseif SelectMaterial == "Dragon Scale" then
    MMon = "Dragon Crew Archer"
    MPos = CFrame.new(6594,383,139)
    SP = "Default"
    elseif SelectMaterial == "Gunpowder" then
    MMon = "Pistol Billionaire"
    MPos = CFrame.new(-469,74,5904)
    SP = "Default"
    elseif SelectMaterial == "Mini Tusk" then
    MMon = "Mythological Pirate"
    MPos = CFrame.new(-13545,470,-6917)
    SP = "Default"
    end
    end

    local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local function ngu(targetCFrame)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
        local startCFrame = humanoidRootPart.CFrame
        local distance = (targetCFrame.Position - startCFrame.Position).Magnitude
        
        local speed
        if distance < 25 then
            speed = 300
        elseif distance < 50 then
            speed = 300
        elseif distance < 150 then
            speed = 300
        elseif distance < 250 then
            speed = 300
        elseif distance < 500 then
            speed = 300
        elseif distance < 750 then
            speed = 300
        elseif distance >= 1000 then
            speed = 300
        end
        
        local duration = distance / speed
        local startTime = tick()
        
        while tick() - startTime < duration do
            local alpha = (tick() - startTime) / duration
            humanoidRootPart.CFrame = startCFrame:Lerp(targetCFrame, alpha)
            wait()
        end
        humanoidRootPart.CFrame = targetCFrame
    end
    
    local function moveToPosition(targetCFrame, speed)
        local distance = (targetCFrame.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local duration = distance / speed
    
        local tween = TweenService:Create(
            LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(duration, Enum.EasingStyle.Linear),
            { CFrame = targetCFrame }
        )
        tween:Play()
    
        return tween
    end
    
    local function PlayerTP(Tween_Pos)
        local TeleportPos = Tween_Pos.Position
        local plrPP = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart
        if not plrPP then return end
        local Distance = (plrPP.Position - Tween_Pos.Position).Magnitude
        local PortalPos = GetTPPos(Tween_Pos.Position)
    
        if (plrPP.Position - Tween_Pos.Position).Magnitude > (Tween_Pos.Position - PortalPos).Magnitude + 250 then
            plrPP.CFrame = CFrame.new(PortalPos)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PortalPos)
        else
            local tweenDuration = Distance / (getgenv().TweenSpeed or 180)
            if Distance <= 450 then
                tweenDuration = Distance / ((getgenv().TweenSpeed or 180) * 1.8)
            end
    
            local tween = TweenService:Create(
                LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(tweenDuration, Enum.EasingStyle.Linear),
                { CFrame = Tween_Pos }
            )
            tween:Play()
        end
    end
    
    function TP2(P1)
        local Distance = (P1.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
    
        if Distance >= 1 then
            Speed = 150
        end
    
        local tween = moveToPosition(P1, Speed)
    
        if _G.CancelTween2 then
            tween:Cancel()
            _G.CancelTween2 = false
            return
        end
    
        _G.Clip2 = true
        wait(Distance / Speed)
        _G.Clip2 = false
    end
    
    function Tween(Pos)
        local Distance = (Pos.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 180
    
        if LocalPlayer.Character.Humanoid.Sit then
            LocalPlayer.Character.Humanoid.Sit = true
        end
    
        local tween = moveToPosition(Pos, Speed)
    
        if Distance <= 150 then
            tween:Cancel()
            LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            return
        end
    
        if _G.StopTween then
            tween:Cancel()
            _G.StopTween = false
            _G.Clip = false
            return
        end
    end
    
    function TP1(Pos)
        local targetCFrame = Pos
        ngu(targetCFrame)
    end
    
    function topos(Pos)
        local targetCFrame = Pos
        ngu(targetCFrame)
    end

function EquipTool(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(0.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end


spawn(function()
    pcall(function()
      while task.wait() do
      for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") then
      if v:FindFirstChild("RemoteFunctionShoot") then
      CurrentEquipGun = v.Name
      end
      end
      end
      end
      end)
    end)spawn(function()
			while task.wait() do
				pcall(function()
					if _G.TeleportIsland or _G.dao or _G.AutoBoss or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or SailBoat or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBossHop or _G.AutoAllBoss or _G.Autotushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoDoughKingV2 or PirateShip or _G.Auto_Seabest or AutoFarmNearestMob or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or AutoFarmQuest or _G.Clip2 or AutoFarmNoQuest or AutoFarmBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

--//No CLip Auto Farm
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
        if _G.TeleportIsland or _G.dao or _G.AutoBoss or AutoFarmAcient or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or SailBoat or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBossHop or _G.AutoAllBoss or _G.AutoHolyTorch or _G.Autotushita or _G.farmpiranya or _G.AutoTerrorshark or AutoFarmNearestMob or _G.AutoDoughKingV2 or PirateShip or _G.Auto_Seabest or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or AutoFarmQuest or _G.Clip2 or AutoFarmNoQuest or AutoFarmBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)

  spawn(function()
    while task.wait() do
        pcall(function()
            if _G.TeleportIsland or TwenetoHighestPoint or TweenMirage or _G.dao or _G.AutoBoss or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or SailBoat or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBossHop or _G.AutoAllBoss or _G.Autotushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoDoughKingV2 or PirateShip or _G.Auto_Seabest or AutoFarmNearestMob or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or AutoFarmQuest or _G.Clip2 or AutoFarmNoQuest or AutoFarmBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)


--//No CLip Auto Farm
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
            if _G.TeleportIsland or _G.dao or _G.AutoBoss or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or SailBoat or AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBossHop or _G.AutoAllBoss or _G.AutoHolyTorch or _G.Autotushita or _G.farmpiranya or _G.AutoTerrorshark or AutoFarmNearestMob or _G.AutoDoughKingV2 or PirateShip or _G.Auto_Seabest or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or AutoFarmQuest or _G.Clip2 or AutoFarmNoQuest or AutoFarmBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                    v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)


    function Click()
        if not _G.FastAttack then
            local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
            CamShake:Stop()
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 180
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end


--Sword Weapon
function GetWeaponInventory(Weaponname)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Sword" then
                if v.Name == Weaponname then
                    return true
                    end
                end
            end
        end
    return false
end

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.UseSkill then
                        args[2] = PositionSkillMasteryDevilFruit
                        return old(unpack(args))
                    elseif Skillaimbot then
                        args[2] = AimBotSkillPosition
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

--------bring Mob Island

_G.BringMonster = true

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.BringMonster then
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                    if _G.AutoEctoplasm and StartEctoplasmMagnet then
                        if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = EctoplasmMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoRengoku and StartRengokuMagnet then
                        if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(1500,1500,1500)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = RengokuMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                        if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = MusketeerHatMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoObservationHakiV2 and Mangnetcitzenmon then
                        if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosHee
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Auto_EvoRace and StartEvoMagnet then
                        if v.Name == "Zombie" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonEvo
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoBartilo and AutoBartiloBring then
                        if v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBarto
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                        if v.Name == "Monkey" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                        if v.Name == "Monkey" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.Auto_Bone and StartMagnetBoneMon then
                        if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmCandy and StartCandyMagnet then
                        if (v.Name == "Ice Cream Chef" or v.Name == "Ice Cream Commander") and (v.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = CandyMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if BringAcient and AutoFarmAcient then
                        if (v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel") and (v.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = FarmPos
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Farmfast and StardMag then
                        if (v.Name == "Shanda" or v.Name == "Shanda") and (v.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = FastMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoDoughtBoss and MagnetDought then
                        if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
            end
        end)
  end
end)

task.spawn(function()
    while true do wait()
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end)



PosY = 5
Type = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(-30,PosY,0)
        elseif Type == 2 then
            Pos = CFrame.new(0,PosY,-30)
        elseif Type == 3 then
            Pos = CFrame.new(30,PosY,0)
        elseif Type == 4 then
            Pos = CFrame.new(0,PosY,30)	
        elseif Type == 5 then
            Pos = CFrame.new(-30,PosY,0)
        elseif Type == 6 then
            Pos = CFrame.new(0,PosY,-30)
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.1)
        Type = 2
        wait(0.1)
        Type = 3
        wait(0.1)
        Type = 4
        wait(0.1)
        Type = 5
        wait(0.1)
    end
end)

  function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end


function BTP(P)
	repeat wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function BTP(p)
    pcall(function()
        if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            if NQuest == "FishmanQuest" then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif Mon == "God's Guard"  then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif NQuest == "SkyExp1Quest" then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif NQuest == "ShipQuest1" then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif NQuest == "ShipQuest2" then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif NQuest == "FrostQuest" then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            else
                Mix_Farm = true
                    repeat wait(0.5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    wait(.05)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
                wait()
                Mix_Farm = nil
            end
        end
    end)
end


local Client = game.Players.LocalPlayer
    local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
    local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    spawn(function()
        while task.wait() do
            pcall(function()
                if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
                if not shared.cpc then shared.cpc = STOP.play end
                    STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                    local Hits = STOPRL.getBladeHits(b,c,d)
                    if Hits then
                        if FastAttack then
                            STOP.play = function() end
                            a:Play(0.01,0.01,0.01)
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        else
                            a:Play()
                        end
                    end
                end
            end)
        end
    end)



    function AttackNoCD()
        if not AutoFarmMasDevilFruit or AutoFarmMasGun then
            if not Auto_Raid then
                local AC = CbFw2.activeController
                for i = 1, 1 do 
                    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        plr.Character,
                        {plr.Character.HumanoidRootPart},
                        60
                    )
                    local cac = {}
                    local hash = {}
                    for k, v in pairs(bladehit) do
                        if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                            table.insert(cac, v.Parent.HumanoidRootPart)
                            hash[v.Parent] = true
                        end
                    end
                    bladehit = cac
                    if #bladehit > 0 then
                        local u8 = debug.getupvalue(AC.attack, 5)
                        local u9 = debug.getupvalue(AC.attack, 6)
                        local u7 = debug.getupvalue(AC.attack, 4)
                        local u10 = debug.getupvalue(AC.attack, 7)
                        local u12 = (u8 * 798405 + u7 * 727595) % u9
                        local u13 = u7 * 798405
                        (function()
                            u12 = (u12 * u9 + u13) % 1099511627776
                            u8 = math.floor(u12 / u9)
                            u7 = u12 - u8 * u9
                        end)()
                        u10 = u10 + 1
                        debug.setupvalue(AC.attack, 5, u8)
                        debug.setupvalue(AC.attack, 6, u9)
                        debug.setupvalue(AC.attack, 4, u7)
                        debug.setupvalue(AC.attack, 7, u10)
                        pcall(function()
                            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                                AC.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(GetCurrentBlade()))
                                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                            end
                        end)
                    end
                end
            end
        end
    end



    function CheckAcientOneStatus()
		while wait() do
			wait(0.1);
			if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
				return "You have yet to achieve greatness";
			end;
			local v227 = nil;
			local v228 = nil;
			local v229 = nil;
			v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check");
			if v229 == 1 then
				return "Required Train More";
			elseif v229 == 2 or v229 == 4 or v229 == 7 then
				return "You Can Buy Next Gear With " .. v227 .. " F";
			elseif v229 == 3 then
				return "Required Train More";
			elseif v229 == 5 then
				return "You Are Done Your Race.";
			elseif v229 == 6 then
				return "Done Quest " .. v228 - 2 .. "/3, Need Trains More";
			end;
			if v229 ~= 8 then
				if v229 == 0 then
					return "Ready For Trial";
				else
					return "You have yet to achieve greatness";
				end;
			end;
		end;
		return "Remaining " .. 10 - v228 .. " training sessions.";
	end;

local posX = 0
local posY = 30
local posZ = 15

--------------------------------------------------------------------------------------------------------------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
--------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "SUMMER HUB",
    SubTitle = "Made By Summerhub",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})



local Tabs = {
    Main = Window:AddTab({ Title = "Main 1", Icon = "" }),
    Main2 = Window:AddTab({ Title = "Main 2", Icon = "" }),
    Main3 = Window:AddTab({ Title = "Get Items", Icon = "" }),
    Setting = Window:AddTab({ Title = "Setting", Icon = "" }),
    Race = Window:AddTab({ Title = "RaceV4-Mirage", Icon = "" }),
    Seaevent = Window:AddTab({ Title = "Sea Event", Icon = "" }),
    Status = Window:AddTab({ Title = "Status", Icon = "" }),
    Raid = Window:AddTab({ Title = "Raid - Material", Icon = "" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }),
}
Window:SelectTab(1)
local Options = Fluent.Options


----------------------------------------------------------------------------------------------------------------------------------------------



Tabs.Main:AddButton({
    Title = "Redeem All Code",
    Description = "Redeem all code x2 exp",
    Callback = function()
        UseCode("Sub2Fer999")
        UseCode("Enyu_is_Pro")
        UseCode("Magicbus")
        UseCode("JCWK")
        UseCode("Starcodeheo")
        UseCode("Bluxxy")
        UseCode("THEGREATACE")
        UseCode("SUB2GAMERROBOT_EXP1")
        UseCode("StrawHatMaine")
        UseCode("Sub2OfficialNoobie")
        UseCode("SUB2NOOBMASTER123")
        UseCode("Sub2Daigrock")
        UseCode("Axiore")
        UseCode("TantaiGaming")
        UseCode("STRAWHATMAINE")
    end
})

function UseCode(Text)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end


Tabs.Main:AddParagraph({
    Title = "Setting Farm",
    Content = ""
})

local ToggleBringMob = Tabs.Main:AddToggle("ToggleBringMob", {Title = "Fast Attack", Default = true })
    ToggleBringMob:OnChanged(function(Value)
        FastAttack = Value
    end)
    
function CheckKick(v)
    if v.Name == "ErrorPrompt" then
        if v.Visible then
            if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                game:GetService("TeleportService"):TeleportToPlaceInstance(
                    game.PlaceId,
                    game.JobId,
                    game.Players.LocalPlayer
                )
            end
        end
        v:GetPropertyChangedSignal("Visible"):Connect(
            function()
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            game.PlaceId,
                            game.JobId,
                            game.Players.LocalPlayer
                        )
                    end
                end
            end
        )
    end
end
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(CheckKick)


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

    local ToggleBringMob = Tabs.Main:AddToggle("ToggleBringMob", {Title = "Bring Mob", Default = true })
    ToggleBringMob:OnChanged(function(Value)
        _G.BringMob = Value
    end)
    Options.ToggleBringMob:SetValue(true)
        spawn(function()
            while wait() do
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.BringMob and bringmob then
                            if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Factory Staff" then
                                    if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 250 then
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = FarmPos
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == MonFarm then
                                    if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 250 then
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = FarmPos
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                        end
                    end
                end)
             end
        end)
        --[[
            task.spawn(function()
                while task.wait() do
             if _G.BringMob and bringmob then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                if InMyNetWork(v.HumanoidRootPart) then
                v.HumanoidRootPart.CFrame = FarmPos
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                end
                end
                end
                end)
              end
              end
              end)
            
            task.spawn(function()
              while true do wait()
              if setscriptable then
              setscriptable(game.Players.LocalPlayer,"SimulationRadius",true)
              end
              if sethiddenproperty then
              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
              end
              end
              end)
            
            function InMyNetWork(object)
            if isnetworkowner then
            return isnetworkowner(object)
            else
              if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
            return true
            end
            return false
            end
            end
     ]]


    local ToggleBypassTP = Tabs.Main:AddToggle("ToggleBypassTP", {Title = "Bypass Tp", Default = false })
    ToggleBypassTP:OnChanged(function(Value)
        BypassTP = Value
    end)
    Options.ToggleBypassTP:SetValue(false)


local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Select Weapon",
    Values = {'Melee','Sword'},
    Multi = false,
    Default = 1,
})
DropdownSelectWeapon:SetValue('Melee')
DropdownSelectWeapon:OnChanged(function(Value)
    ChooseWeapon = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.Main:AddParagraph({
    Title = "Select Farming",
    Content = ""
})

local ToggleAutoFarmLevel = Tabs.Main:AddToggle("ToggleAutoFarmLevel", {Title = "Auto Farm Level", Default = false })
ToggleAutoFarmLevel:OnChanged(function(Value)
    AutoFarmQuest = Value
end)
Options.ToggleAutoFarmLevel:SetValue(false)

spawn(function()
    while task.wait() do
    if AutoFarmQuest then
    pcall(function()
      CheckLevel()
      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      if BypassTP then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
      BTP(CFrameQ)
      elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
      Tween(CFrameQ)
      end
else
        Tween(CFrameQ)
        end
      if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
      end
      elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name == Ms then
      repeat game:GetService("RunService").Heartbeat:wait()
        AttackNoCD()
      AutoHaki()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      Click()
      until not AutoFarmQuest or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
      end
           
      end
      end
      for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
      if string.find(v.Name,NameMon) then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
        Tween(v.CFrame * CFrame.new(posX,posY,posZ))
      end
      end
      end
      end
      Tween(CFrameQ)
      end)
    end
    end
    end)


if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

    
local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {Title = "Auto Farm Bone", Default = false })
ToggleBone:OnChanged(function(Value)
    AutoFarmBone = Value
end)
Options.ToggleBone:SetValue(false)


local WScriptQuestBone =  CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(function()
    while wait() do
        if AutoFarmBone then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if BypassTP then
                        wait()
                       if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - WScriptQuestBone.Position).Magnitude > 2500 then
                       BTP(WScriptQuestBone)
              
                       elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - WScriptQuestBone.Position).Magnitude < 2500 then
               
                       Tween(WScriptQuestBone)
                       end
                 else
                         Tween(WScriptQuestBone)
                         end
                if (WScriptQuestBone.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        repeat task.wait()
                                            AttackNoCD()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Pos)
			                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            bringmob = true
                                        until not AutoFarmBone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul").HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                        end
                    end
                end
            end)
        end
    end
end)


local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title = "Check Cake Mobs",
    Content = ""
})

spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				Mob_Kill_Cake_Prince:SetDesc("Cake Prince : 🟢yes")
			end
		end)
	end
end)

local ToggleCake = Tabs.Main:AddToggle("ToggleCake", {Title = "Auto Farm Cake Prince", Default = false })
ToggleCake:OnChanged(function(Value)
 AutoCakePrince = Value
end)
Options.ToggleCake:SetValue(false)

spawn(function()
    while task.wait() do
        if AutoCakePrince then
            if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if AutoCakePrince and v.Name == "Cake Prince" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                AttackNoCD()
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                bringmob = true
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
                                bringmob = false
                            end
                        end
                    else
                    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                end
            else
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                bringmob = true
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                            --  v.Humanoid:ChangeState(11)
                            --  v.Humanoid:ChangeState(14)
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
                                bringmob = false
                            end
                        end
                    end
                else
                    local cakepos = CFrame.new(-2077, 252, -12373)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cakepos.Position).Magnitude > 2000 then
                            BTP(cakepos)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cakepos.Position).Magnitude < 2000 then
                            Tween(cakepos)
                        end
                    else
                    Tween(cakepos)
                end
            end
        end
    end
end
end)

local ToggleCake1 = Tabs.Main:AddToggle("ToggleCake1", {Title = "Auto Spawns Cake Prince", Default = true })
ToggleCake1:OnChanged(function(Value)
    AutoCakePrince1 = Value
end)

spawn(function()
    while wait() do
        if AutoCakePrince1 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        end
    end
end)

--Mastery
Tabs.Main:AddParagraph({
    Title = "Mastery Farm",
    Content = "Auto farm your mastery"
})

local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
    Title = "Farm Mode",
    Values = {"Level"},
    Multi = false,
    Default = 1,
})

DropdownMastery:SetValue("Level")

DropdownMastery:OnChanged(function(Value)
    TypeMastery = Value
end)

local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {Title = "Auto BF Mastery", Default = false })
ToggleMasteryFruit:OnChanged(function(Value)
    AutoFarmMasDevilFruit = Value
end)
Options.ToggleMasteryFruit:SetValue(false)

local ToggleMasteryGun = Tabs.Main:AddToggle("ToggleMasteryGun", {Title = "Auto Gun Mastery", Default = false })
ToggleMasteryGun:OnChanged(function(Value)
    AutoFarmMasGun = Value
end)
Options.ToggleMasteryGun:SetValue(false)



KillPercent = 40
local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
    Title = "Health %",
    Description = "Health for mastery",
    Default = 40,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        KillPercent = Value
    end
})

SliderHealt:OnChanged(function(Value)
    KillPercent = Value
end)

SliderHealt:SetValue(40)

spawn(function()
    while task.wait(.1) do
    if AutoFarmMasGun and TypeMastery == 'Level' then
    pcall(function()
      CheckLevel(SelectMonster)
      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        Tween(CFrameQ)
      if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
      end
      elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      if v.Name == Ms then
      repeat game:GetService("RunService").Heartbeat:wait()
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      EquipTool(CurrentEquipGun)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Pos
      game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
      UseSkillGun = true
      else
        UseSkillGun = false
        AttackNoCD()
        AutoHaki()
      EquipTool(SelectWeapon)
         Click()
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
  --v.Humanoid:ChangeState(11)
  --v.Humanoid:ChangeState(14)
     Click()
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
     
      end
      until not AutoFarmMasGun or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Queat'
      UseSkillGun = false
      end
      end
     
      end
      UseSkillGun = false
      Tween(CFrameQ)
      end
      end)
    elseif AutoFarmMasGun and TypeMastery == 'No Quest' then
    pcall(function()
      if BypassTP then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
      BTP(CFrameMon)
      elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
      Tween(CFrameMon)
      end
      else
        Tween(CFrameMon)
      end
      CheckLevel()
      if game.Workspace.Enemies:FindFirstChild(Ms) then
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      repeat game:GetService("RunService").Heartbeat:wait()
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      EquipTool(CurrentEquipGun)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Pos
      game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
      UseSkillGun = true
      else
        UseSkillGun = false
        AttackNoCD()
        AutoHaki()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
    --v.Humanoid:ChangeState(11)
    --v.Humanoid:ChangeState(14)
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      
      end
      until not AutoFarmMasGun or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'No Quest'
      end
      end
      else
        UseSkillGun = false
      Tween(CFrameMon)
      end
      end)
    elseif AutoFarmMasGun and TypeMastery == 'Near Mobs' then
    pcall(function()
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000 then
      repeat game:GetService("RunService").Heartbeat:wait()
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      EquipTool(CurrentEquipGun)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Pos
      game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
      UseSkillGun = true
      else
        UseSkillGun = false
        AutoHaki()
        AttackNoCD()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
  --v.Humanoid:ChangeState(11)
  --v.Humanoid:ChangeState(14)
  Click()
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      Click()
     
      end
      until not AutoFarmMasGun or not MasteryType == 'Near Mobs' or not v.Parent or v.Humanoid.Health <= 0 or not TypeMastery == 'Near Mobs'
      UseSkillGun = false
      end
     
      end
      end
      end)
    elseif AutoFarmMasGun and TypeMastery == 'Boss' then
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
    CheckBossQuest()
    if BypassTP then
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude > 2000 then
    BTP(CFrameQBoss)
    wait(3)
    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
    Tween(CFrameQBoss)
    end
    else
      Tween(CFrameQBoss)
    end
  
    if (CFrameQBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,QuestLvBoss)
    end
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    pcall(function()
      CheckBossQuest()
      if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      repeat game:GetService("RunService").Heartbeat:wait()
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      EquipTool(CurrentEquipGun)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
      UseSkillGun = true
      else
        UseSkillGun = false
        AttackNoCD()
        AutoHaki()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
  --v.Humanoid:ChangeState(11)
  --v.Humanoid:ChangeState(14)
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
    
      end
      until not AutoFarmMasGun or not TypeMastery == 'Boss' or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end
      end
      else
        UseSkillGun = false
      Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      end
      end)
    end
    end
    end
    end)
  
  spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
      if UseSkillGun then
      pcall(function()
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == MonFarm then
        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position,v.HumanoidRootPart)
        ClickCamera()
        end
        end
        end)
      end
      end)
    end)






    spawn(function()
        while wait(1) do
            if UseSkillGun then
                pcall(function()
                    CheckLevel()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do                                                 
                            if SkillZ then
                                local args = {
                                    [1] = PosMonMasteryGun.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if SkillX then          
                                local args = {
                                    [1] = PosMonMasteryGun.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                    end
                end)
            end
        end
    end)

    
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkillGun then
                    local args = {
                        [1] = PosMonMasteryGun.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.Gun.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)



spawn(function()
while task.wait(1) do
if _G.UseSkill then
pcall(function()
if _G.UseSkill then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
repeat game:GetService("RunService").Heartbeat:wait()
EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
if SkillZ and DevilFruitMastery >= 1 then
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
end
if SkillX and DevilFruitMastery >= 2 then
game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
wait(.2)
game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
end
if SkillC and DevilFruitMastery >= 3 then
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
wait(.3)
game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
end
if SkillV and DevilFruitMastery >= 4 then
game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
wait(.4)
game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
end
if SkillF and DevilFruitMastery >= 5 then
game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
wait(.5)
game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
end
end
until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
end
end
end
end)
end
end
end)

spawn(function()
while task.wait(.1) do
if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
pcall(function()
CheckLevel(SelectMonster)
if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
if BypassTP then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
BTP(CFrameQ)
wait(0.2)
elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
Tween(CFrameQ)
end
else
Tween(CFrameQ)
end
if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
if v.Name == Ms then
repeat game:GetService("RunService").Heartbeat:wait()
if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then

_G.UseSkill = true
else
_G.UseSkill = false
AutoHaki()
AttackNoCD()
EquipTool(SelectWeapon)
 Click()
Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
v.HumanoidRootPart.Transparency = 1
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
--v.Humanoid:ChangeState(11)
--v.Humanoid:ChangeState(14)
Click()
FarmPos = v.HumanoidRootPart.CFrame
MonFarm = v.Name


end
until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Level'
_G.UseSkill = false

end
end
end
_G.UseSkill = false
Tween(Q)
end
end)
elseif AutoFarmMasDevilFruit and TypeMastery == 'No Quest' then
pcall(function()
CheckLevel()
if BypassTP then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
BTP(CFrameMon)
elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
Tween(CFrameMon)
end
else
Tween(CFrameMon)
end
if game.Workspace.Enemies:FindFirstChild(Ms) then
for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
if v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat game:GetService("RunService").Heartbeat:wait()
if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
_G.UseSkill = true
else
_G.UseSkill = false
AttackNoCD()
AutoHaki()
EquipTool(SelectWeapon)
Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
v.HumanoidRootPart.Transparency = 1
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
--v.Humanoid:ChangeState(11)
--v.Humanoid:ChangeState(14)
FarmPos = v.HumanoidRootPart.CFrame
MonFarm = v.Name
end
until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'No Quest'
_G.UseSkill = false
end
end
else
_G.UseSkill = false
Tween(CFrameMon)
end
end)
elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
pcall(function()
for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000 then
repeat game:GetService("RunService").Heartbeat:wait()
if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
_G.UseSkill = true
else
_G.UseSkill = false
AutoHaki()
AttackNoCD()
EquipTool(SelectWeapon)
Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
v.HumanoidRootPart.Transparency = 1
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
--v.Humanoid:ChangeState(11)
--v.Humanoid:ChangeState(14)
FarmPos = v.HumanoidRootPart.CFrame
MonFarm = v.Name
Click()

end
until not AutoFarmMasDevilFruit or not MasteryType == 'Nearest' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Nearest'
_G.UseSkill = false
end

end
end
end)
elseif AutoFarmMasDevilFruit and TypeMastery == 'Boss' then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
CheckBossQuest()
if BypassTP then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude > 2000 then
BTP(CFrameQBoss)
wait(3)
elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
Tween(CFrameQBoss)
end
else
Tween(CFrameQBoss)
end

if (CFrameQBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,QuestLvBoss)
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
pcall(function()
CheckBossQuest()
if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat game:GetService("RunService").Heartbeat:wait()
if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
_G.UseSkill = true
else
_G.UseSkill = false
AttackNoCD()
AutoHaki()
EquipTool(SelectWeapon)
Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
v.HumanoidRootPart.Transparency = 1
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
--v.Humanoid:ChangeState(11)
--v.Humanoid:ChangeState(14)
FarmPos = v.HumanoidRootPart.CFrame
MonFarm = v.Name

end
until not AutoFarmMasDevilFruit or not TypeMastery == 'Boss' or not v.Parent or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
end
end
else
_G.UseSkill = false
Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * PosY)
end
end)
end
end
end
end)



local boss = Tabs.Main:AddSection("Boss Farm")

    if First_Sea then
		tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
	elseif Second_Sea then
		tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
	elseif Third_Sea then
		tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
	end


    local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
        Title = "Dropdown",
        Description = "Chọn Boss",
        Values = tableBoss,
        Multi = false,
        Default = 1,
    })

    DropdownBoss:SetValue("")
    DropdownBoss:OnChanged(function(Value)
		_G.SelectBoss = Value
    end)

	local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {
        Title = "Kill Boss",
        Description = "Đánh Boss", 
        Default = false })

    ToggleAutoFarmBoss:OnChanged(function(Value)
		_G.AutoBoss = Value
    end)

    Options.ToggleAutoFarmBoss:SetValue(false)

    spawn(function()
        while wait() do
            if _G.AutoBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AttackNoCD()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        Click()
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        end
                    end
                end)
            end
        end
    end)



---Farm 2

local ToggleAutoSecondSea = Tabs.Main2:AddToggle("ToggleAutoSecondSea", {Title = "Auto Second Sea", Default = false })
ToggleAutoSecondSea:OnChanged(function(Value)
    AutoSecondSea = Value
end)
spawn(function()
    while wait() do
        if AutoSecondSea then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 and Sea1 then
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        repeat wait() 
                            Tween(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) 
                        until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSecondSea
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipTool("Key")
                        local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat wait() Tween(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSecondSea
                        wait(3)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AttackNoCD()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoSecondSea
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)

local ToggleAutoThirdSea = Tabs.Main2:AddToggle("ToggleAutoThirdSea", {Title = "Auto Third Sea", Default = false })
ToggleAutoThirdSea:OnChanged(function(Value)
    AutoThirdSea = Value
end)
spawn(function()
    while wait() do
        if AutoThirdSea then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and Sea2 then
                    AutoFarmQuest = false
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                        Tween(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                        end
                        wait(1.8)
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "rip_indra" then
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and AutoThirdSea then
                                        OldCFrameThird = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            AttackNoCD()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.CFrame = OldCFrameThird
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            Tween(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)

local ToggleFactory = Tabs.Main2:AddToggle("ToggleFactory", {Title = "Auto Factory", Default = false })
    ToggleFactory:OnChanged(function(Value)
       AutoFactory = Value
    end)
       Options.ToggleFactory:SetValue(false)

       spawn(function()
        while task.wait() do
            if AutoFactory then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Core" then
                                if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and AutoFactory then
                                    repeat task.wait()
                                        AttackNoCD()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                    until AutoFactory == false or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        end
                    else
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(448.46756, 199.356781, -441.389252).Position).Magnitude > 2000 then
                                BP(CFrame.new(448.46756, 199.356781, -441.389252))
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(448.46756, 199.356781, -441.389252).Position).Magnitude < 2000 then
                                Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                            end
                        else
                            Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                        end         
                    end        
                end)
            end
        end
    end)

local ToggleElite = Tabs.Main2:AddToggle("ToggleElite", {Title = "Auto Elite Hunter", Default = false })
    ToggleElite:OnChanged(function(Value)
       AutoEliteHunter = Value
    end)
       Options.ToggleElite:SetValue(false)
       spawn(function()
           while task.wait() do
               if AutoEliteHunter then
                   pcall(function()
                       if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                           if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                               if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                           if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                               repeat task.wait()
                                                AttackNoCD()
                                                   EquipTool(SelectWeapon)
                                                   AutoHaki()
                                                   Tween(v.HumanoidRootPart.CFrame * Pos)
                                                   MonsterPosition = v.HumanoidRootPart.CFrame
                                                   v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   --v.Humanoid:ChangeState(14)
                                                   --v.Humanoid:ChangeState(11)
                                                   Click()
                                                   FarmPos = v.HumanoidRootPart.CFrame
                                                   MonFarm = v.Name
                                                   v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                   BringMobs = false
                                               until AutoEliteHunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                           end
                                           BringMobs = true
                                       end
                                   end
                               else
                                   if BypassTP then
                                   if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                       BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                       BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                       BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   end
                               else
                                   if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                       Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                       Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                       Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   end
                               end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end)
            end
        end
    end)

    local TogglePirateShip = Tabs.Main2:AddToggle("TogglePirateShip", {Title = "Auto Pirate", Default = false })
    TogglePirateShip :OnChanged(function(Value)
        AutoPirateShip = Value
    end)
       Options.TogglePirateShip:SetValue(false)
        spawn(function()
            while wait() do
                if AutoPirateShip then
                    pcall(function()
                        local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                        if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if AutoPirateShip and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                        repeat wait()
                                            AttackNoCD()
                                            AutoHaki()
                                            EquipWeapon(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            Click()
                                        until v.Humanoid.Health <= 0 or not v.Parent or AutoPirateShip == false
                                    end
                                end
                            end
                        else
                            if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                                topos(CFrameBoss)
                            else
                                BTP(CFrameBoss)
                            end
                        end
                    end
                )
            end
        end
    end
)

-----Farm 3

Tabs.Main3:AddParagraph({
    Title = "Get Item",
    Content = "Lấy Item"
})

local ToggleAutoSaber = Tabs.Main3:AddToggle("ToggleAutoSaber", {Title = "Auto Saber",Description = "Only available in sea 1", Default = false })
ToggleAutoSaber:OnChanged(function(Value)
    AutoSaber = Value
end)

spawn(function()
    while task.wait() do
        if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipTool("Torch")
                                Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                            else
                                Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EquipTool("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                    repeat task.wait()
                                                        AttackNoCD()
                                                        EquipTool(SelectWeapon)
                                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                                    until v.Humanoid.Health <= 0 or AutoSaber == false
                                                end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    EquipTool("Relic")
                                    wait(0.5)
                                    Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                    repeat task.wait()
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or AutoSaber == false
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local ToggleAutoPole = Tabs.Main3:AddToggle("ToggleAutoPole", {Title = "Auto Pole",Description = "Only available in sea 1", Default = false })
ToggleAutoPole:OnChanged(function(Value)
    AutoPole = Value
end)
spawn(function()
    while wait() do
        if Autopole and Sea1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Thunder God" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AttackNoCD()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, -20, 2))
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not Autopole or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, -9, 2))
                    end
                end
            end)
        end
    end
end)

local ToggleHallow = Tabs.Main3:AddToggle("ToggleHallow", {Title = "Auto Hallow Scythe [Fully]", Default = false })

    ToggleHallow:OnChanged(function(Value)
        AutoHallowSycthe = Value
    end)
    Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat task.wait()
                                    AutoHaki()
                                    AttackNoCD()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									Click()
                                until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipTool("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
            end
        end
    end)
	
	
	spawn(function()
           while wait(0.001) do
           if AutoHallowSycthe then
           local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
           }
          
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end
           end)
        
           
           local ToggleYama = Tabs.Main3:AddToggle("ToggleYama", {Title = "Auto Get Yama", Default = false })
           ToggleYama:OnChanged(function(Value)
            _G.AutoYama = Value
           end)
           Options.ToggleYama:SetValue(false)
           spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                        repeat wait(.1)
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)


        local ToggleTushita = Tabs.Main3:AddToggle("ToggleTushita", {Title = "Auto Tushita", Default = false })
        ToggleTushita:OnChanged(function(Value)
            _G.Autotushita = Value
        end)
        Options.ToggleTushita:SetValue(false)
        local WScriptTushita = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
        spawn(function()
            while wait() do
                if  _G.Autotushita then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Longma" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            AttackNoCD()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            Tween(v.HumanoidRootPart.CFrame * Pos)
                                            Click()
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - WScriptTushita.Position).Magnitude > 1500 then
                        BTP(WScriptTushita)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - WScriptTushita.Position).Magnitude < 1500 then
                        Tween(WScriptTushita)
                        end
                    else
                        Tween(WScriptTushita)
                    end
                        Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                            end
                        end
                    end)
                end
            end
        end)


        local ToggleHoly = Tabs.Main3:AddToggle("ToggleHoly", {Title = "Auto Holy Torch", Default = false })
        ToggleHoly:OnChanged(function(Value)
            _G.AutoHolyTorch = Value
        end)
        Options.ToggleHoly:SetValue(false)
        spawn(function()
            while wait(.5) do
                pcall(function()
                    if _G.AutoHolyTorch then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                            repeat wait(.2)
                                EquipTool("Holy Torch")
                                Tween(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            until (CFrame.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipTool("Holy Torch")
                                Tween(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                            until (CFrame.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipTool("Holy Torch")
                                Tween(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                            until (CFrame.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipTool("Holy Torch")
                                Tween(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                            until (CFrame.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            EquipTool("Holy Torch")
                            repeat wait(.2)
                                Tween(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                            until (CFrame.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            Com()
                            wait(20)
                        end
                    end
                end)
            end
        end)

---Setting

Tabs.Setting:AddButton({
	Title = "Reset Character",
	Description = "",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0 
    end
})
local ToggleAutoClick = Tabs.Setting:AddToggle("ToggleAutoClick", {Title = "Auto Click", Default = false })
ToggleAutoClick:OnChanged(function(Value)
    _G.AutoClick = Value
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
end)

Tabs.Setting:AddButton({
    Title = "Stop Tween",
    Description = "",
    Callback = function()
        StopTween()
    end
})
function StopTween()
    if tween then
        tween:Cancel()
        tween = nil
        unlockCharacter() 
        _G.Clip = false 
    end
end




local ToggleAutoAgility = Tabs.Setting:AddToggle("ToggleAutoAgility", {Title = "Auto Turn On V3",Description = "Auto Bật Tộc V3", Default = false })
ToggleAutoAgility:OnChanged(function(Value)
    _G.AutoAgility = Value
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAgility then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)

local ToggleAutoV4 = Tabs.Setting:AddToggle("ToggleAutoV4", {Title = "Auto Turn On V4", Description = "Auto Bật Tộc V4", Default = false })
ToggleAutoV4:OnChanged(function(Value)
    _G.AutoV4 = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoV4 then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
            end
        end)
    end
end)

Tabs.Setting:AddParagraph({
    Title = "Setting Spam Skill Race V4 + Mastery",
    Content = ""
})

local ToggleSkillZ = Tabs.Setting:AddToggle("ToggleSkillZ", {Title = "Skill Z", Default = false })
ToggleSkillZ:OnChanged(function(Value)
    SkillZ = Value
end)

local ToggleSkillX = Tabs.Setting:AddToggle("ToggleSkillX", {Title = "Skill X", Default = false })
ToggleSkillX:OnChanged(function(Value)
    SkillX = Value
end)

local ToggleSkillC = Tabs.Setting:AddToggle("ToggleSkillC", {Title = "Skill C", Default = false })
ToggleSkillC:OnChanged(function(Value)
    SkillC = Value
end)

local ToggleSkillV = Tabs.Setting:AddToggle("ToggleSkillV", {Title = "Skill V", Default = false })
ToggleSkillV:OnChanged(function(Value)
    SkillV = Value
end)


---RaceV4 - Mirage

Tabs.Race:AddButton({
    Title = "Tween to Mirage Island",
    Description = "",
    Callback = function()
        TweenMirage()
    end
})


spawn(function()
    while task.wait() do 
        if TweenMirage then 
            pcall(function()
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    AllNPCS = getnilinstances()
                    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                        table.insert(AllNPCS, v)
                    end
                    for i, v in pairs(AllNPCS) do
                        if v.Name == "Advanced Fruit Dealer" then
                            repeat task.wait()
                                toTarget(plr.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                            until (v.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 8 or not OrionLib.Flags["Teleport Mirage"].Value
                        end
                    end
                end
            end)
        end
    end
end)

Tabs.Race:AddButton({
    Title = "Tween to Highest Point",
    Description = "",
    Callback = function()
        TwenetoHighestPoint()
    end
})

function TwenetoHighestPoint()
    HighestPoint = getHighestPoint()
    if HighestPoint then
        Tween2(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
    end
end
function getHighestPoint()
    if not game.workspace.Map:FindFirstChild("MysticIsland") then
        return nil
    end
    for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") then
            if v.MeshId == "rbxassetid://6745037796" then
                return v
            end
        end
    end
end

Tabs.Race:AddButton({
    Title = "Tween To Gear",
    Description = "",
    Callback = function(Value)
        _G.TweenToGear = Value
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                Tween2(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)

local Togglelockmoon = Tabs.Race:AddToggle("Togglelockmoon", {Title = "Lock Moon and Use Race Skill",Description = "Nhìn Trăng + Bật Tộc", Default = false })
    Togglelockmoon:OnChanged(function(Value)
        AutoLockMoon = Value
    end) 
    Options.Togglelockmoon:SetValue(false)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoLockMoon then
                    local moonDir = game.Lighting:GetMoonDirection()
                    local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                end
            end)
        end
    end)


    spawn(function()
        while wait() do
            pcall(function()
                if AutoLockMoon then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"T",false,game)
                end
            end)
        end
    end)

Tabs.Race:AddButton({
	Title = "Remove Fog",
	Description = "",
	Callback = function()
        NoFog()
    end
})
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

Tabs.Race:AddParagraph({
    Title = "Auto Race",
    Content = ""
})

Tabs.Race:AddButton({
    Title = "Timple Of Time",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    end
})


Tabs.Race:AddButton({
    Title = "Lever Pull",
    Description = "",
    Callback = function()
        TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})

Tabs.Race:AddButton({
    Title = "Teleport to Clock",
    Description = "",
    Callback = function()
        TP2(CFrame.new(29551.9941, 15069.002, -85.5179291, 0.603725016, 4.74354529e-08, -0.797192633, -3.64676893e-08, 1, 3.18856408e-08, 0.797192633, 9.82161463e-09, 0.603725016))
    end
})

Tabs.Race:AddButton({
    Title = "Acient One",
    Description = "",
    Callback = function()
        TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})


Tabs.Race:AddButton({
    Title = "Race Door",
    Description = "",
    Callback = function()
    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
        TP2(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
        TP2(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
        TP2(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
        TP2(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
        TP2(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
        TP2(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
    end
end
})

local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {Title = "Auto Trial", Default = false })
ToggleAutotrial:OnChanged(function(Value)
    _G.AutoQuestRace = Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    local c1 = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                    if (c1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        wait(2)
                        Tween(c1.CFrame)
                        wait(3)
                        print("Success Trial")
                    end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							Tween(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							Tween(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {Title = "Auto [ Human / Ghoul ] Trial", Default = false })
ToggleHumanandghoul:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleHumanandghoul:SetValue(false)

local ToggleAutotrial1 = Tabs.Race:AddToggle("ToggleAutotrial1", {Title = "Auto Kill Players Trial", Default = false })
ToggleAutotrial1:OnChanged(function(Value)
    KillPlayer = Value
end)


task.spawn(function()
    while wait() do
        pcall(function()
            if KillPlayer then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                            if v.Humanoid.Health > 0 then
                                repeat wait()
                                    AttackNoCD()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    NameTarget = v.Name
                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))
                                    Click()
                                until not KillPlayer or not v.Parent or v.Humanoid.Health <= 0 
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while wait() do
        if KillPlayer then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                repeat task.wait()
                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):SetKeyDown("0x65")
                        wait(2)
                        game:GetService("VirtualUser"):SetKeyUp("0x65")
                    end
                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not KillPlayer
            end
        end
    end
end)

spawn(function()
    while wait() do
        if skilltrial then
            pcall(function()
                if SkillZ then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                    if SkillX then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        if SkillC then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                            wait(0.1)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                            if SkillV then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local ToggleAutoAcientQuest = Tabs.Race:AddToggle("ToggleAutoAcientQuest", {Title = "Auto Acient Quest", Default = false })
ToggleAutoAcientQuest:OnChanged(function(Value)
    AutoFarmAcient = Value
end)
Options.ToggleAutoAcientQuest:SetValue(false)

local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)
spawn(function()
    while wait() do 
        if AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait()
                                AttackNoCD()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    BringAcient = true
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    Click()
                                until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                                BringAcient = false
                            end
                        end
                    end
                else
                    if BypassTP then
                        BTP(AcientCframe)
                    else
                        Tween(AcientCframe)
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Cocoa Warrior" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Chocolate Bar Battler" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Sweet Thief" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Candy Rebel" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do
        pcall(function()
            if AutoFarmAcient then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
            end
        end)
    end
end)

Tabs.Race:AddButton({
    Title = "Buy Acient One Quest",
    Description = "",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
    end
})

------Sea Event

local ToggleEspKitsune = Tabs.Seaevent:AddToggle("ToggleEspKitsune", {Title = "Esp Kitsune Island", Default = false })
      ToggleEspKitsune:OnChanged(function(Value)
        KitsuneIslandEsp = Value
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP() 
        end
    end)
      Options.ToggleEspKitsune:SetValue(false)

      function UpdateIslandKisuneESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then 
                    if v.Name == "Kitsune Island" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

      local ToggleTPKitsune = Tabs.Seaevent:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island", Default = false })
      ToggleTPKitsune:OnChanged(function(Value)
        _G.TweenToKitsune = Value
      end)
      Options.ToggleTPKitsune:SetValue(false)
      spawn(function()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            Tween(v.CFrame)
                        end
                    end
                end
            end
        end
    end)


      local ToggleCollectAzure = Tabs.Seaevent:AddToggle("ToggleCollectAzure", {Title = "Collect Azure Ambers", Default = false })
      ToggleCollectAzure:OnChanged(function(Value)
        _G.CollectAzure = Value
      end)
      Options.ToggleCollectAzure:SetValue(false)
        spawn(function()
            while wait() do
                if _G.CollectAzure then
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                            Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                            print("Azure")
                        end
                    end)
                end
            end
        end)




------Status
local Time = Tabs.Status:AddParagraph({
    Title = "Time Sever",
    Content = ""
})

function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Time:SetDesc("[Time Sever] : Hours : "..Hour.. "  Minutes : "..Minute.."  Seconds : "..Second)
end

spawn(function()
    while task.wait() do
        pcall(function()
            UpdateTime()
        end)
    end
end)


local Mirragecheck = Tabs.Status:AddParagraph({
    Title = "Mirrage Island",
    Content = ""
})

spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                Mirragecheck:SetDesc('✅')
            else
            Mirragecheck:SetDesc('❌' )
        end
    end
end)
end)

local Moon = Tabs.Status:AddParagraph({
    Title = "Moon",
    Content = ""
})

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        Moon:SetDesc("Moon: ✅")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        Moon:SetDesc("Moon: ❌")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        Moon:SetDesc("Moon: ❌")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        Moon:SetDesc("Moon: ❌")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        Moon:SetDesc("Moon: ❌")
                    else
                        Moon:SetDesc("Moon: ❌")
                    end
                end
            )
        end
    end
)

local Elite_Hunter_Status = Tabs.Status:AddParagraph({
    Title = "Elite Status",
    Content = ""
})
spawn(function()
    while wait() do
        spawn(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") 
            or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") 
            or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                Elite_Hunter_Status:SetDesc("Status : ✅")	
            else
                Elite_Hunter_Status:SetDesc("Status : ❌")	
            end
        end)
    end
end)

local Kitsune = Tabs.Status:AddParagraph({
    Title = "KITSUNE Island",
    Content = ""
})

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                Kitsune:SetDesc('✅')
            else
                Kitsune:SetDesc('❌' )
            end
        end
    end)
end)

local FrozenIsland = Tabs.Status:AddParagraph({
    Title = "Frozen Dimension",
    Content = ""
})

spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                FrozenIsland:SetDesc('✅')
            else
                FrozenIsland:SetDesc('❌')
            end
        end
    end)
end)


------Raid - Material

Tabs.Raid:AddParagraph({
    Title = "Material",
    Content = "Auto farm material"
})


if First_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
    } elseif Second_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
    } elseif Third_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
    }
    end

local DropdownMaterial = Tabs.Raid:AddDropdown("DropdownMaterial", {
    Title = "Select Material List",
    Values = MaterialList,
    Multi = false,
    Default = 1,
})

DropdownMaterial:SetValue("Conjured Cocoa")

DropdownMaterial:OnChanged(function(Value)
    SelectMaterial = Value
end)


local ToggleMaterial = Tabs.Raid:AddToggle("ToggleMaterial", {Title = "Auto Farm Material", Default = false })

ToggleMaterial:OnChanged(function(Value)
    AutoFarmMaterial = Value
end)
Options.ToggleMaterial:SetValue(false)
spawn(function()
    while task.wait() do
    if AutoFarmMaterial then
    pcall(function()
      MaterialMon(SelectMaterial)
      if BypassTP then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude > 3500 then
      BTP(MPos)
      elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
      Tween(MPos)
      end
      else
        Tween(MPos)
      end
      if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name == MMon then
      repeat task.wait()
      AutoHaki()
      AttackNoCD()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      Click()
      until not AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0
      end
      end
      end
      else
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
      if string.find(v.Name, Mon) then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
      Tween(v.CFrame * CFrame.new(posX,posY,posZ))
      end
      end
      end
      end
      end)
    end
    end
  end)

    if Second_Sea then
        Tabs.Raid:AddButton({
            Title = "Raid Lab",
            Description = "",
            Callback = function()
                TP2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end
        })
        elseif Third_Sea then
            Tabs.Raid:AddButton({
                Title = "Raid Lab",
                Description = "",
                Callback = function()
                    TP2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
                end
            })
        end


local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Select Raid List",
    Values = Chips,
    Multi = false,
    Default = 1,
})
DropdownRaid:SetValue("...")
DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)

local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title = "Buy Chip", Default = false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)


    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title = "Start Raid", Default = false })
    ToggleStart:OnChanged(function(Value)
        _G.Auto_StartRaid = Value
end)
Options.ToggleStart:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)


local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {Title = "Kill Aura", Default = false })
ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
local FloderMobss = game.Workspace.Enemies:GetChildren()
spawn(function()
    while wait() do
        if KillAura then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    pcall(function()
                        repeat wait(.1)
                          if v.Humanoid then
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                        until not KillAura  or not v.Parent
                    end)
                end
            end
    end
end)
spawn(function()
        while wait() do
            if KillAura then
            for r, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and v.Humanoid.Health > 0 then
                    v.Humanoid.Health = 0
                end
            end
        end
    end
end)

local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {Title = "Next Island", Default = false })
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland = Value
end)
Options.ToggleNextIsland:SetValue(false)
function IsIslandRaid(cu)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
        min = 4500
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
             then
                min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
             then
                return v
            end
        end
    end
end
function getNextIsland()
    TableIslandsRaid = {5, 4, 3, 2, 1}
    for r, v in pairs(TableIslandsRaid) do
        if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return IsIslandRaid(v)
        end
    end
end
spawn(function()
    while wait() do
        if AutoNextIsland then
            if getNextIsland() then
                spawn(Tween(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
            end
        end
    end
end)


local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title = "Auto Awake", Default = false })
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)


local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title = "Get Fruit Low Bely", Default = false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Autofruit then
         
                local args = {
                    [1] = "LoadFruit",
                    [2] = "Rocket-Rocket"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))




                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spin-Spin"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Chop-Chop"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spring-Spring"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Bomb-Bomb"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Smoke-Smoke"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spike-Spike"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Flame-Flame"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Falcon-Falcon"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Ice-Ice"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Sand-Sand"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Dark-Dark"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Ghost-Ghost"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Diamond-Diamond"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Light-Light"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Rubber-Rubber"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


                local args = {
                    [1] = "LoadFruit",
                    [2] = "Barrier-Barrier"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end)
        end
    end)


        Tabs.Raid:AddParagraph({
            Title = "Raid Law",
            Content = ""
        })
        
        
        local ToggleLaw = Tabs.Raid:AddToggle("ToggleLaw", {Title = "Auto Law", Default = false })
        
        ToggleLaw:OnChanged(function(Value)
            Auto_Law = Value
        end)
        Options.ToggleLaw:SetValue(false)
        spawn(function()
            pcall(function()
                while wait() do
                    if Auto_Law then
                        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                        end
                    end
                end
            end)
        end)
        
        spawn(function()
            pcall(function()
                while wait(.1) do
                    if Auto_Law then
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                            end
                        end
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Order" then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                            Click()
                                        until not v.Parent or v.Humanoid.Health <= 0 or Auto_Law == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                                Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                            end
                        end
                    end
                end
            end)
        end)


------// Teleport

Tabs.Teleport:AddParagraph({
    Title = "World",
    Content = "Sea1 & Sea2 & Sea3"
})

Tabs.Teleport:AddButton({
    Title = "First Sea",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})



Tabs.Teleport:AddButton({
    Title = "Second Sea",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})



Tabs.Teleport:AddButton({
    Title = "Third Sea",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})



Tabs.Teleport:AddParagraph({
    Title = "Island",
    Content = "Teleport to Island"
})

if First_Sea then
 IslandList = {
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village",
                "Desert",
                "Snow Island",
                "MarineFord",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                "Shank Room",
                "Mob Island",
}

elseif Second_Sea then
       IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
       }

elseif Third_Sea then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
       }
    end

local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland",{
    Title = "Select Island",
    Values = IslandList,
    Multi = false,
    Default = 1,
})

DropdownIsland:SetValue("...")
DropdownIsland:OnChanged(function(Value)
    _G.SelectIsland = Value
end)



local ToggleIsland = Tabs.Teleport:AddToggle("ToggleIsland", {Title = "Teleport", Default = false })
ToggleIsland:OnChanged(function(Value)
    _G.TeleportIsland = Value
    if _G.TeleportIsland == true then
        repeat wait()
            if _G.SelectIsland == "WindMill" then
                Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                Tween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                Tween( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                Tween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                Tween( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
                Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                Tween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                Tween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
            elseif _G.SelectIsland == "Flamingo Room" then
                Tween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
            elseif _G.SelectIsland == "Green Zone" then
                Tween( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                Tween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                Tween( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                Tween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                Tween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                Tween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                Tween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                Tween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                Tween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                Tween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                Tween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                BTPZ(CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            elseif _G.SelectIsland == "MiniSky" then
                Tween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                Tween(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
            elseif _G.SelectIsland == "Floating Turtle" then
                Tween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
            elseif _G.SelectIsland == "Haunted Castle" then
                Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                Tween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                Tween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                Tween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif _G.SelectIsland == "Cocoa Island" then
                Tween(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
            elseif _G.SelectIsland == "Candy Island" then
                Tween(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
            end
        until not _G.TeleportIsland
    end
end)
Options.ToggleIsland:SetValue(false)

function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
 




---Misc


Tabs.Misc:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})


Tabs.Misc:AddButton({
	Title = "Hop Server",
	Description = "",
	Callback = function()
		Hop()
	end
})

function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end      

local JobIDInput = Tabs.Misc:AddInput("JobIDInput", {
    Title = "Put Job Id",
    Default = "",
    Placeholder = "",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    _G.JobId = Value
    end
})
Tabs.Misc:AddButton({
    Title = "Join Job ID",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(_G.JobId))
    end
})
    

Tabs.Misc:AddButton({
    Title = "Delete ID",
    Description = "",
    Callback = function()
        _G.JobId = nil
        JobIDInput:SetValue("")
    end
})

Tabs.Misc:AddButton({
    Title = "Open Devil Fruit Shop",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
      game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Open Haki Color",
    Description = "",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Open Title Name",
    Description = "",
    Callback = function()
        local args = {
    [1] = "getTitles"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end})

Tabs.Misc:AddButton({
    Title = "Boost FPS",
    Description = "",
    Callback = function()
        fpsboost()
    end
})

function fpsboost()
    pcall(function()
    local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                v.Material = "Plastic"
                v.Reflectance = 0
                --v.CanCollide = false
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
        elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957    
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
        end
    end
    for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
        if v.Name == ("Water;") then
            v.Transparency = 1
            v.Material = "Plastic"
        end
    end
    end)
    pcall(function()
        if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
        if hookfunction and setreadonly then
        local mt = getrawmetatable(game)
        local old = mt.__newindex
        setreadonly(mt, false)
        local sda
        sda = hookfunction(old, function(t, k, v)
            if k == "Material" then
                if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
            elseif k == "TopSurface" then v = "Smooth"
            elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
            elseif k == "WaterTransparency" then v = 1
            elseif k == "GlobalShadows" then v = false end
            return sda(t, k, v)
        end)
        setreadonly(mt, true)
        end
        local g = game
        local w = g.Workspace
        local l = g:GetService"Lighting"
        local t = w:WaitForChild"Terrain"
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 1
        l.GlobalShadows = false
    end)
end

local ToggleWalkonWater = Tabs.Misc:AddToggle("ToggleWalkonWater", {Title = "Walk on Water",Description = "Đi Trên nước", Default = true })
ToggleWalkonWater:OnChanged(function(Value)
  _G.WalkonWater = Value
end)
Options.ToggleWalkonWater:SetValue(true)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkonWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
            end
        end)
    end
end)

--// Close Ui

local AzureGui = Instance.new("ScreenGui")
    local ToggleUIButton = Instance.new("TextButton")
    local UICorner_10 = Instance.new("UICorner")
    local Frame = Instance.new("Frame")

    AzureGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    AzureGui.Name = "AzureGui"
    AzureGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    ToggleUIButton.Name = "ToggleUIButton"
    ToggleUIButton.Parent = AzureGui
    ToggleUIButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ToggleUIButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    ToggleUIButton.Size = UDim2.new(0, 50, 0, 50)
    ToggleUIButton.Text = "OFF"
    ToggleUIButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleUIButton.TextSize = 15.000
    ToggleUIButton.TextWrapped = true
    ToggleUIButton.Visible = true

    UICorner_10.Parent = ToggleUIButton

    local toggleState = true

    ToggleUIButton.MouseButton1Click:Connect(
        function()
            toggleState = not toggleState -- Toggling the state
            if toggleState then
                ToggleUIButton.Text = "OFF"
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
            else
                ToggleUIButton.Text = "ON"
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
            end
        end
    )

    local function drag()
        local script = Instance.new("LocalScript", ToggleUIButton)
        local UIS = game:GetService("UserInputService")
        local frame = script.Parent
        local dragToggle = nil
        local dragSpeed = 0.25
        local dragStart = nil
        local startPos = nil

        local function updateInput(input)
            local delta = input.Position - dragStart
            local position =
                UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end

        frame.InputBegan:Connect(
            function(input)
                if
                    (input.UserInputType == Enum.UserInputType.MouseButton1 or
                        input.UserInputType == Enum.UserInputType.Touch)
                 then
                    dragToggle = true
                    dragStart = input.Position
                    startPos = frame.Position
                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end
                    )
                end
            end
        )

        UIS.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    if dragToggle then
                        updateInput(input)
                    end
                end
            end
        )
    end
    coroutine.wrap(drag)()
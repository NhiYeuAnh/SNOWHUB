notis = require(game.ReplicatedStorage:WaitForChild("Notification"))
notis.new("<Color=White>Summer Hub<Color=/>"):Display()
notis.new("<Color=Blue>Owner: summerhub<Color=/>"):Display() 
notis.new("<Color=Yellow>Exploit Use:<Color=/> ".. identifyexecutor()):Display() 
notis.new("<Color=Black>Join Discord To Youtube<Color=/>"):Display() 
notis.new("<Color=Red>Name Youtube: summerhub<Color=/>"):Display() 

--------------------------------------------------------------------------------------------------------------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
--------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "SUMMER HUB",
    SubTitle = "Blox Fruits Version",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 350),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local vu = game:GetService("VirtualUser")
  repeat wait() until game:IsLoaded()
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  end)

local Tabs = {
    Main = Window:AddTab({ Title = "Sub Farming", Icon = "" }),
    Setting = Window:AddTab({ Title = "Setting", Icon = "" }),
    Item = Window:AddTab({ Title = "Get Item", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }),
}
Window:SelectTab(1)
local Options = Fluent.Options

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

----------------------------------------------------------------------------------------------------------------------------------------------

if game.PlaceId == 2753915549 then
    yeunhi1 = true
elseif game.PlaceId == 4442272183 then
    yeunhi2 = true 
elseif game.PlaceId == 7449423635 then
    yeunhi3 = true
end
function Checknhiemvu()
    YourLevel = game: GetService("Players").LocalPlayer.Data.Level.Value
    if yeunhi1 then
        if YourLevel == 1 or YourLevel <= 9 then
            Mob = "Bandit"
            NumberQuest = 1
            NameQuest = "BanditQuest1"
            NameMob = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMob = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            elseif YourLevel == 10 or YourLevel <= 14 then
            Mob = "Monkey"
            NumberQuest = 1
            NameQuest = "JungleQuest"
            NameMob = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMob = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            elseif YourLevel == 15 or YourLevel <= 29 then
            Mob = "Gorilla"
            NumberQuest = 2
            NameQuest = "JungleQuest"
            NameMob = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMob = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            elseif YourLevel == 30 or YourLevel <= 39 then
            Mob = "Pirate"
            NumberQuest = 1
            NameQuest = "BuggyQuest1"
            NameMob = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMob = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
            elseif YourLevel == 40 or YourLevel <= 59 then
            Mob = "Brute"
            NumberQuest = 2
            NameQuest = "BuggyQuest1"
            NameMob = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMob = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif YourLevel == 60 or YourLevel <= 74 then
            Mob = "Desert Bandit"
            NumberQuest = 1
            NameQuest = "DesertQuest"
            NameMob = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMob = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
            elseif YourLevel == 75 or YourLevel <= 89 then
            Mob = "Desert Officer"
            NumberQuest = 2
            NameQuest = "DesertQuest"
            NameMob = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMob = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
            elseif YourLevel == 90 or YourLevel <= 99 then
            Mob = "Snow Bandit"
            NumberQuest = 1
            NameQuest = "SnowQuest"
            NameMob = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMob = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
            elseif YourLevel == 100 or YourLevel <= 119 then
            Mob = "Snowman"
            NumberQuest = 2
            NameQuest = "SnowQuest"
            NameMob = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMob = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif YourLevel == 120 or YourLevel <= 149 then
            Mob = "Chief Petty Officer"
            NumberQuest = 1
            NameQuest = "MarineQuest2"
            NameMob = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif YourLevel == 150 or YourLevel <= 174 then
            Mob = "Sky Bandit"
            NumberQuest = 1
            NameQuest = "SkyQuest"
            NameMob = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMob = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
            elseif YourLevel == 175 or YourLevel <= 189 then
            Mob = "Dark Master"
            NumberQuest = 2
            NameQuest = "SkyQuest"
            NameMob = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMob = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif YourLevel == 190 or YourLevel <= 209 then
            Mob = "Prisoner"
            NumberQuest = 1
            NameQuest = "PrisonerQuest"
            NameMob = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMob = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif YourLevel == 210 or YourLevel <= 249 then
            Mob = "Dangerous Prisoner"
            NumberQuest = 2
            NameQuest = "PrisonerQuest"
            NameMob = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMob = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif YourLevel == 250 or YourLevel <= 274 then
            Mob = "Toga Warrior"
            NumberQuest = 1
            NameQuest = "ColosseumQuest"
            NameMob = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMob = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif YourLevel == 275 or YourLevel <= 299 then
            Mob = "Gladiator"
            NumberQuest = 2
            NameQuest = "ColosseumQuest"
            NameMob = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMob = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif YourLevel == 300 or YourLevel <= 324 then
            Mob = "Military Soldier"
            NumberQuest = 1
            NameQuest = "MagmaQuest"
            NameMob = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMob = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif YourLevel == 325 or YourLevel <= 374 then
            Mob = "Military Spy"
            NumberQuest = 2
            NameQuest = "MagmaQuest"
            NameMob = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMob = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif YourLevel == 375 or YourLevel <= 399 then
            Mob = "Fishman Warrior"
            NumberQuest = 1
            NameQuest = "FishmanQuest"
            NameMob = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMob = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
            elseif YourLevel == 400 or YourLevel <= 449 then
            Mob = "Fishman Commando"
            NumberQuest = 2
            NameQuest = "FishmanQuest"
            NameMob = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMob = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
            elseif YourLevel == 450 or YourLevel <= 474 then
            Mob = "God's Guard"
            NumberQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMob = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMob = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
            elseif YourLevel == 475 or YourLevel <= 524 then
            Mob = "Shanda"
            NumberQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMob = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMob = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
            elseif YourLevel == 525 or YourLevel <= 549 then
            Mob = "Royal Squad"
            NumberQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMob = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif YourLevel == 550 or YourLevel <= 624 then
            Mob = "Royal Soldier"
            NumberQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMob = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif YourLevel == 625 or YourLevel <= 649 then
            Mob = "Galley Pirate"
            NumberQuest = 1
            NameQuest = "FountainQuest"
            NameMob = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMob = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif YourLevel >= 650 then
            Mob = "Galley Captain"
            NumberQuest = 2
            NameQuest = "FountainQuest"
            NameMob = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMob = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
            elseif yeunhi2 then
            if YourLevel == 700 or YourLevel <= 724 then
            Mob = "Raider"
            NumberQuest = 1
            NameQuest = "Area1Quest"
            NameMob = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMob = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif YourLevel == 725 or YourLevel <= 774 then
            Mob = "Mercenary"
            NumberQuest = 2
            NameQuest = "Area1Quest"
            NameMob = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMob = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif YourLevel == 775 or YourLevel <= 799 then
            Mob = "Swan Pirate"
            NumberQuest = 1
            NameQuest = "Area2Quest"
            NameMob = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMob = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif YourLevel == 800 or YourLevel <= 874 then
            Mob = "Factory Staff"
            NameQuest = "Area2Quest"
            NumberQuest = 2
            NameMob = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMob = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif YourLevel == 875 or YourLevel <= 899 then
            Mob = "Marine Lieutenant"
            NumberQuest = 1
            NameQuest = "MarineQuest3"
            NameMob = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMob = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif YourLevel == 900 or YourLevel <= 949 then
            Mob = "Marine Captain"
            NumberQuest = 2
            NameQuest = "MarineQuest3"
            NameMob = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMob = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif YourLevel == 950 or YourLevel <= 974 then
            Mob = "Zombie"
            NumberQuest = 1
            NameQuest = "ZombieQuest"
            NameMob = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMob = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif YourLevel == 975 or YourLevel <= 999 then
            Mob = "Vampire"
            NumberQuest = 2
            NameQuest = "ZombieQuest"
            NameMob = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMob = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif YourLevel == 1000 or YourLevel <= 1049 then
            Mob = "Snow Trooper"
            NumberQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMob = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMob = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif YourLevel == 1050 or YourLevel <= 1099 then
            Mob = "Winter Warrior"
            NumberQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMob = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMob = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif YourLevel == 1100 or YourLevel <= 1124 then
            Mob = "Lab Subordinate"
            NumberQuest = 1
            NameQuest = "IceSideQuest"
            NameMob = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMob = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif YourLevel == 1125 or YourLevel <= 1174 then
            Mob = "Horned Warrior"
            NumberQuest = 2
            NameQuest = "IceSideQuest"
            NameMob = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMob = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif YourLevel == 1175 or YourLevel <= 1199 then
            Mob = "Magma Ninja"
            NumberQuest = 1
            NameQuest = "FireSideQuest"
            NameMob = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMob = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif YourLevel == 1200 or YourLevel <= 1249 then
            Mob = "Lava Pirate"
            NumberQuest = 2
            NameQuest = "FireSideQuest"
            NameMob = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMob = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif YourLevel == 1250 or YourLevel <= 1274 then
            Mob = "Ship Deckhand"
            NumberQuest = 1
            NameQuest = "ShipQuest1"
            NameMob = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMob = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            elseif YourLevel == 1275 or YourLevel <= 1299 then
            Mob = "Ship Engineer"
            NumberQuest = 2
            NameQuest = "ShipQuest1"
            NameMob = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMob = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            elseif YourLevel == 1300 or YourLevel <= 1324 then
            Mob = "Ship Steward"
            NumberQuest = 1
            NameQuest = "ShipQuest2"
            NameMob = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMob = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            elseif YourLevel == 1325 or YourLevel <= 1349 then
            Mob = "Ship Officer"
            NumberQuest = 2
            NameQuest = "ShipQuest2"
            NameMob = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMob = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            elseif YourLevel == 1350 or YourLevel <= 1374 then
            Mob = "Arctic Warrior"
            NumberQuest = 1
            NameQuest = "FrostQuest"
            NameMob = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMob = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoLevel and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
            elseif YourLevel == 1375 or YourLevel <= 1424 then
            Mob = "Snow Lurker"
            NumberQuest = 2
            NameQuest = "FrostQuest"
            NameMob = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMob = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif YourLevel == 1425 or YourLevel <= 1449 then
            Mob = "Sea Soldier"
            NumberQuest = 1
            NameQuest = "ForgottenQuest"
            NameMob = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMob = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif YourLevel >= 1450 then
            Mob = "Water Fighter"
            NumberQuest = 2
            NameQuest = "ForgottenQuest"
            NameMob = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMob = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
            elseif yeunhi3 then
            if YourLevel == 1500 or YourLevel <= 1524 then
            Mob = "Pirate Millionaire"
            NumberQuest = 1
            NameQuest = "PiratePortQuest"
            NameMob = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMob = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif YourLevel == 1525 or YourLevel <= 1574 then
            Mob = "Pistol Billionaire"
            NumberQuest = 2
            NameQuest = "PiratePortQuest"
            NameMob = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMob = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            elseif YourLevel == 1575 or YourLevel <= 1599 then
            Mob = "Dragon Crew Warrior"
            NumberQuest = 1
            NameQuest = "AmazonQuest"
            NameMob = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMob = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
            elseif YourLevel == 1600 or YourLevel <= 1624 then
            Mob = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            NumberQuest = 2
            NameMob = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMob = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
            elseif YourLevel == 1625 or YourLevel <= 1649 then
            Mob = "Female Islander"
            NameQuest = "AmazonQuest2"
            NumberQuest = 1
            NameMob = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMob = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
            elseif YourLevel == 1650 or YourLevel <= 1699 then
            Mob = "Giant Islander"
            NameQuest = "AmazonQuest2"
            NumberQuest = 2
            NameMob = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMob = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
            elseif YourLevel == 1700 or YourLevel <= 1724 then
            Mob = "Marine Commodore"
            NumberQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMob = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMob = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
            elseif YourLevel == 1725 or YourLevel <= 1774 then
            Mob = "Marine Rear Admiral"
            NameMob = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            NumberQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMob = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
            elseif YourLevel == 1775 or YourLevel <= 1799 then
            Mob = "Fishman Raider"
            NumberQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMob = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMob = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif YourLevel == 1800 or YourLevel <= 1824 then
            Mob = "Fishman Captain"
            NumberQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMob = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMob = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
            elseif YourLevel == 1825 or YourLevel <= 1849 then
            Mob = "Forest Pirate"
            NumberQuest = 1
            NameQuest = "DeepForestIsland"
            NameMob = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMob = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif YourLevel == 1850 or YourLevel <= 1899 then
            Mob = "Mythological Pirate"
            NumberQuest = 2
            NameQuest = "DeepForestIsland"
            NameMob = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMob = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif YourLevel == 1900 or YourLevel <= 1924 then
            Mob = "Jungle Pirate"
            NumberQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMob = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMob = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif YourLevel == 1925 or YourLevel <= 1974 then
            Mob = "Musketeer Pirate"
            NumberQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMob = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMob = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif YourLevel == 1975 or YourLevel <= 1999 then
            Mob = "Reborn Skeleton"
            NumberQuest = 1
            NameQuest = "HauntedQuest1"
            NameMob = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMob = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif YourLevel == 2000 or YourLevel <= 2024 then
            Mob = "Living Zombie"
            NumberQuest = 2
            NameQuest = "HauntedQuest1"
            NameMob = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMob = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif YourLevel == 2025 or YourLevel <= 2049 then
            Mob = "DeMobic Soul"
            NumberQuest = 1
            NameQuest = "HauntedQuest2"
            NameMob = "DeMobic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif YourLevel == 2050 or YourLevel <= 2074 then
            Mob = "Posessed Mummy"
            NumberQuest = 2
            NameQuest = "HauntedQuest2"
            NameMob = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif YourLevel == 2075 or YourLevel <= 2099 then
            Mob = "Peanut Scout"
            NumberQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMob = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif YourLevel == 2100 or YourLevel <= 2124 then
            Mob = "Peanut President"
            NumberQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMob = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif YourLevel == 2125 or YourLevel <= 2149 then
            Mob = "Ice Cream Chef"
            NumberQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMob = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif YourLevel == 2150 or YourLevel <= 2199 then
            Mob = "Ice Cream Commander"
            NumberQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMob = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMob = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif YourLevel == 2200 or YourLevel <= 2224 then
            Mob = "Cookie Crafter"
            NumberQuest = 1
            NameQuest = "CakeQuest1"
            NameMob = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMob = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif YourLevel == 2225 or YourLevel <= 2249 then
            Mob = "Cake Guard"
            NumberQuest = 2
            NameQuest = "CakeQuest1"
            NameMob = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMob = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif YourLevel == 2250 or YourLevel <= 2274 then
            Mob = "Baking Staff"
            NumberQuest = 1
            NameQuest = "CakeQuest2"
            NameMob = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMob = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif YourLevel == 2275 or YourLevel <= 2299 then
            Mob = "Head Baker"
            NumberQuest = 2
            NameQuest = "CakeQuest2"
            NameMob = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMob = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif YourLevel == 2300 or YourLevel <= 2324 then
            Mob = "Cocoa Warrior"
            NumberQuest = 1
            NameQuest = "ChocQuest1"
            NameMob = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMob = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif YourLevel == 2325 or YourLevel <= 2349 then
            Mob = "Chocolate Bar Battler"
            NumberQuest = 2
            NameQuest = "ChocQuest1"
            NameMob = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMob = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif YourLevel == 2350 or YourLevel <= 2374 then
            Mob = "Sweet Thief"
            NumberQuest = 1
            NameQuest = "ChocQuest2"
            NameMob = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMob = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif YourLevel == 2375 or YourLevel <= 2399 then
            Mob = "Candy Rebel"
            NumberQuest = 2
            NameQuest = "ChocQuest2"
            NameMob = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMob = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif YourLevel == 2400 or YourLevel <= 2424 then
            Mob = "Candy Pirate"
            NumberQuest = 1
            NameQuest = "CandyQuest1"
            NameMob = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMob = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif YourLevel == 2425 or YourLevel <= 2449 then
            Mob = "Snow DeMob"
            NumberQuest = 2
            NameQuest = "CandyQuest1"
            NameMob = "Snow DeMob"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMob = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif YourLevel == 2450 or YourLevel <= 2474 then
            Mob = "Isle Outlaw"
            NumberQuest = 1
            NameQuest = "TikiQuest1"
            NameMob = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMob = CFrame.new(-16120.6035, 116.520554, -103.038849)
            elseif YourLevel == 2475 or YourLevel <= 2524 then
            Mob = "Island Boy"
            NumberQuest = 2
            NameQuest = "TikiQuest1"
            NameMob = "Island Boy"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMob = CFrame.new(-16751.3125, 121.226219, -264.015015)
            elseif YourLevel >= 2525 then
            Mob = "Isle Champion"
            NumberQuest = 2
            NameQuest = "TikiQuest2"
            NameMob = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMob = CFrame.new(-16933.2129, 93.3503036, 999.450989)
        end
    end
end




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

function WaitHRP(q0) 
    if not q0 then 
        return 
    end
    return q0.Character:WaitForChild("HumanoidRootPart", 9) 
end

------ Bay Mà Không Cần Cánh

function Tween(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if not Pos then 
            return 
        end
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)
        game.Players.LocalPlayer.Character:WaitForChild("Head", 9)
        if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold") then
            local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
            Hold.Name = "Hold"
            Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            Hold.Velocity = Vector3.new(0, 0, 0)
        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold"):Destroy()
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", game.Players.LocalPlayer.Character) -- Create part
            PartTele.Size = Vector3.new(10,1,10)
            PartTele.Name = "PartTele"
            PartTele.Anchored = true
            PartTele.Transparency = 1
            PartTele.CanCollide = false
            PartTele.CFrame = WaitHRP(game.Players.LocalPlayer).CFrame 
            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                task.wait(0.01)
                local hrp = WaitHRP(game.Players.LocalPlayer)
                if hrp then
                    hrp.CFrame = PartTele.CFrame
                end
            end)
        end
        if didauvaynhi then
            didauvaynhi:Cancel()
        end
        didauvaynhi = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele, TweenInfo.new(Distance / getgenv().TweenSpeed, Enum.EasingStyle.Linear),{CFrame = Pos})
        didauvaynhi:Play()
    end
end

yeunhinhieulam = 1
  spawn(function()
      while wait() do
          if yeunhinhieulam == 1 then
              Dodge = CFrame.new(0,20,0)
          elseif yeunhinhieulam == 2 then
              Dodge = CFrame.new(0,20,-30)
          elseif yeunhinhieulam == 3 then
              Dodge = CFrame.new(30,20,0)
          elseif yeunhinhieulam == 4 then
              PDodgeos = CFrame.new(0,20,30)	
          elseif yeunhinhieulam == 5 then
              Dodge = CFrame.new(-30,20,0)
          elseif yeunhinhieulam == 6 then
              Dodge = CFrame.new(0,20,30)
          end
      end
  end)
  
  spawn(function()
      while wait() do
          yeunhinhieulam = 1
          wait(0.5)
          yeunhinhieulam = 2
          wait(0.5)
          yeunhinhieulam = 3
          wait(0.5)
          yeunhinhieulam = 4
          wait(0.5)
          yeunhinhieulam = 5
          wait(0.5)
      end
  end)
  
  
function EquipTool(Toolse)
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Toolse)
    if tool then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

function UnEquipTool(Toolse)
    if game.Players.LocalPlayer.Character:FindFirstChild(Toolse) then
        game.Players.LocalPlayer.Character:FindFirstChild(Toolse).Parent = game.Players.LocalPlayer.Backpack
    end
end


function EnableBuso()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function BTP(Pos)
    repeat wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
        wait(2)
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Pos
        wait(3)
    until (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function InstanceTween(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function CheckBalo(Name)
    if game.Players.LocalPlayer.BackPack:FindFirstChild(Name) then
        return
    end
end


function SendKey(Key)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Key,false,game)
    wait(0.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Key,false,game)
end

task.spawn(function()
    while task.wait() do
        if _G.AutoClick == true then
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end
end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.KillTrials or _G.AutoTrials or AutoFarmAcient or UpgradeRacev3 or AutoChest or AutoEvoRace or UpRaceV2V3  or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or CollectBlueGear or _G.AutoMysticIsland or _G.AutoDoughKing or _G.AutoChimden or _G.AutoAdmin or _G.AutoAdmin or _G.AutoElite or _G.AutoFactory or _G.AutoCastleRaid or _G.AutoSwan or _G.Bartilonhucac or _G.AutoLevel or _G.AutoKatakuri or _G.AutoBone or _G.KillNearest or _G.TeleportIsland or _G.AutoFarmNearest or NoCLip == true then
                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyGyro") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        Noclip.Velocity = Vector3.new(0, 0, 0)
                        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                              v.CanCollide = false
                            end
                        end
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
            end)
        end
    end)

    local Main = game.Players.LocalPlayer

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoLevel or _G.AutoKatakuri or _G.AutoBone or _G.KillNearest or _G.AutoFarmNearest or NoCLip == true then
                    if Main.Character.Humanoid.Sit == true then
                        Main.Character.Humanoid.Sit = false
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSwan and not _G.Bartilonhucac and not _G.AutoLevel and not _G.AutoKatakuri and not _G.AutoBone and not _G.KillNearest and not _G.AutoFarmNearest and not _G.AutoSea2 then
                    _G.AutoClick = false
                end
            end)
        end
    end) 

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
  


function CheckEnemies(thangnao)
    if game.Workspace.Enemies:FindFirstChild(thangnao) then
        return true
    else
        return false
    end
end
function KillMob(yeunhivai)
    if game.Workspace.Enemies:FindFirstChild(yeunhivai) then
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == yeunhivai and v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
                repeat task.wait()
                    EnableBuso()
                    EquipTool(_G.UsingTool)
                    AttackNoCD()
                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                    v.Humanoid.WalkSpeed = 0
                    v.HumanoidRootPart.CanCollide = false
                    v.Head.CanCollide = false
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart")
            end
        end
    else
        if game:GetService("ReplicatedStorage"):FindFirstChild(yeunhivai) then
            Tween(game:GetService("ReplicatedStorage"):FindFirstChild(yeunhivai).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
        end
    end
end

local CheckLevel = game.Players.LocalPlayer.Data.Level.Value


local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Select Weapon",
    Values = {'Melee','Sword'},
    Multi = false,
    Default = 1,
})
DropdownSelectWeapon:SetValue('Melee')
DropdownSelectWeapon:OnChanged(function(Value)
    _G.UsingTool = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.UsingTool == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.UsingTool = v.Name
                        end
                    end
                end
            elseif _G.UsingTool == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.UsingTool = v.Name
                        end
                    end
                end
            end
        end)
    end
end)
Tabs.Main:AddParagraph({
     Title = "Stats"
     Content = "Farm Level Nhớ Chọn Nhé'
     local Stats = Tabs.Main:AddDropdown("Stats", {
    Title = "Select Stats To Add",
    Values = {"Melee", "Defense", "Sword", "Gun", "Devil Fruit"},
    Multi = false,
    Default = 1,
})

Stats:SetValue("Melee")

Stats:OnChanged(function(Value)
    _G.Stats = Value
end)

spawn(function()
    while wait() do
        if game.Players.localPlayer.Data.Points.Value >= 1 then
            if _G.Stats == "Melee" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if _G.Stats == "Defense" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if _G.Stats == "Sword" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if _G.Stats == "Gun" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            if _G.Stats == "Blox Fruit" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Blox Fruit",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)


Tabs.Main:AddParagraph({
    Title = "Farming",
    Content = "Chọn farm đi thk béo"
})
local ToggleAutoLevel = Tabs.Main:AddToggle("ToggleAutoLevel", {Title = "Auto Farm Level", Default = false })
    ToggleAutoLevel:OnChanged(function(Value)
        _G.AutoLevel = Value
end)
Options.ToggleAutoLevel:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLevel then
                Checknhiemvu()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMob) or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                            BTP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 2000 then
                            Tween(CFrameQuest)
                        end
                    else
                        Tween(CFrameQuest)
                    end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, NumberQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMob) then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mob) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Mob and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipTool(_G.UsingTool)
                                    EnableBuso()                                            
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    Tween(v.HumanoidRootPart.CFrame * Dodge)
                                    BringMob = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                until not _G.AutoLevel or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        Tween(CFrameMob)
                        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                            if string.find(v.Name, NameMob) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude and not game:GetService("Workspace").Enemies:FindFirstChild(NameMob) then
                                Tween(v.CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local bonefarm = Tabs.Main:AddSection("Bone Farm")

local ToggleAutoRandumBone = Tabs.Main:AddToggle("ToggleAutoRandumBone", {Title = "Auto Randum Bone", Default = false })
    ToggleAutoRandumBone:OnChanged(function(Value)
        _G.AutoRandumBone = Value
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoRandumBone then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "buy",1,1)
            end
        end)
    end
end)

local ToggleAutoBone = Tabs.Main:AddToggle("ToggleAutoBone", {Title = "Auto Farm Bone", Default = false })
    ToggleAutoBone:OnChanged(function(Value)
        _G.AutoBone = Value
end)
Options.ToggleAutoBone:SetValue(false)

local PosBone = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoBone and yeunhi3 then
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                if v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart") or v.Parent or _G.AutoBone) then
                                    repeat wait()
                                        EquipTool(_G.UsingTool)
                                        EnableBuso()                                            
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                        Tween(v.HumanoidRootPart.CFrame * Dodge)
                                        StartCheckBone = true
                                        Dungimanhdabijbat = v.HumanoidRootPart.CFrame
                                    until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoBone
                                end
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosBone.Position).Magnitude > 2000 then
                            BTP(PosBone)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosBone.Position).Magnitude < 2000 then
                            Tween(PosBone)
                        end
                    else
                        Tween(PosBone)
                    end
                end
            end
        end)
    end
end)
    

local katakuri = Tabs.Main:AddSection("Katakuri Farm")

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



local ToggleAutoKatakuri = Tabs.Main:AddToggle("ToggleAutoKatakuri", {Title = "Auto Farm Katakuri", Default = false })
    ToggleAutoKatakuri:OnChanged(function(Value)
        _G.AutoKatakuri = Value
end)
Options.ToggleAutoKatakuri:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.AutoKatakuri and yeunhi3 then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner") == 88 then
                    CountMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41)) - 500
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner") == 87 then
                    CountMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 40, 41)) - 500
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner") == 86 then
                    CountMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 41, 41)) - 500
                end
            end
        end)
    end
end)
local CakeIsland = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKatakuri and yeunhi3 then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" or v.Name == "Dough King" then
                            if v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart") or v.Parent or _G.AutoKatakuri) then
                                repeat wait()
                                    EquipTool(_G.UsingTool)
                                    EnableBuso()                                            
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    Tween(v.HumanoidRootPart.CFrame * Dodge)
                                until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoKatakuri or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(20,- 20 ,20))
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(20,- 20 ,20))
                    else
                        if CountMob == 0 then
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart") or v.Parent or _G.AutoKatakuri) then
                                            repeat wait()
                                                EquipTool(_G.UsingTool)
                                                EnableBuso()                                            
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                                Tween(v.HumanoidRootPart.CFrame * Dodge)
                                                BringKatakuriMob = true
                                                PosMobCake = v.HumanoidRootPart.CFrame
                                            until not _G.AutoKatakuri or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeIsland.Position).Magnitude > 2000 then
                                        BTP(CakeIsland)
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeIsland.Position).Magnitude < 2000 then
                                        Tween(CakeIsland)
                                    end
                                else
                                    Tween(CakeIsland)
                                end
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(20,40,20))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(20,40,20))
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local Mastery = Tabs.Main:AddSection("Mastery Farm")

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Mastery Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmFruitMastery = Value
		    if _G.AutoFarmFruitMastery == false then
		        UseSkill = false 
		    end
        end)

    spawn(function()
        while wait() do
            if _G.AutoFarmFruitMastery then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMob) then
                        Magnet = false
                        UseSkill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        Checknhiemvu()
                        repeat wait()
                            Tween(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.1)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        Checknhiemvu()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mob) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mob then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMob) then
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    EnableBuso()
                                                    EquipTool(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                else           
                                                    UseSkill = false 
                                                    EnableBuso()
                                                    EquipWeapon(_G.UsingTool)
                                                    Tween(v.HumanoidRootPart.CFrame * Doge)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryFruitMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryFruitMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            Tween(CFrameMob)
                            StartMasteryFruitMagnet = false   
                            UseSkill = false 
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mob) 
                            if Mob then
                                Tween(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
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
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)

    spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    Checknhiemvu()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if _G.SkillZ and _G.HoldZ then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                wait(_G.HoldZ)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX and _G.HoldX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                wait(_G.HoldX)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC and _G.HoldC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(_G.HoldC)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV and _G.HoldV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                wait(_G.HoldV)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkill then
                    local args = {
                        [1] = PosMonMasteryFruit.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)
    
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Mastery Gun", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmGunMastery = Value
    end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmGunMastery then
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMob) then
                    Magnet = false                                      
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    SStartMasteryGunMagnet= false
                    Checknhiemvu()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                                BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 1500 then
                                Tween(CFrameQuest)
                            else
                                Tween(CFrameQuest)
                            end
                        else
                            Tween(CFrameQuest)
                        end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    Checknhiemvu()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mob) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mob then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then                                                
                                                EquipWeapon(SelectWeaponGun)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                wait(.2)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                wait(.2)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            else
                                                EnableBuso()
                                                EquipWeapon(_G.UsingTool)
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false               
                                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new * Doge)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            SStartMasteryGunMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            SStartMasteryGunMagnet= false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or not _G.AutoFarmGunMastery or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    SStartMasteryGunMagnet = false
                                end
                            end
                        end)
                    else
                       Tween(CFrameMob)
                        SStartMasteryGunMagnet = false
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mob) 
                        if Mob then
                            Tween(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        if _G.AutoFarmGunMastery then
            while wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end
    end)
end)
    

---- Setting
local ToggleAutoAgility = Tabs.Setting:AddToggle("ToggleAutoAgility", {Title = "Auto On Race V3",Description = "", Default = false })
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
local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {Title = "Bypass Tp", Default = false })
    ToggleBypassTP:OnChanged(function(Value)
        BypassTP = Value
    end)
    Options.ToggleBypassTP:SetValue(false)

local DropdownTweenSpeed = Tabs.Setting:AddDropdown("DropdownTweenSpeed", {
    Title = "Tween Speed",
    Values = {"180", "200", "250", "300", "325", "350" , "400", "450", "500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000"},
    Multi = false,
    Default = 1,
})
DropdownTweenSpeed:SetValue("250")
DropdownTweenSpeed:OnChanged(function(Value)
    getgenv().TweenSpeed = Value
end)


    local Toggle = Tabs.Setting:AddToggle("MyToggle", {Title = "Bring Mob", Default = true })

    Toggle:OnChanged(function(Value)
        _G.BringMob = Value
    end)
    
    spawn(function()
        while wait() do
            if _G.BringMob then
                pcall(function()
                    Checknhiemvu()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoLevel and BringMob and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMob) and v.Name == Mob and (Mob == "Factory Staff" or Mob == "Monkey" or Mob == "Dragon Crew Warrior" or Mob == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            vv.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        elseif _G.AutoLevel and BringMob and v.Name == Mob and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMob) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (PosMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.BringMob then
                pcall(function()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarmNearest and BringNearest then
                            if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and _G.AutoFarmNearest and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                v.HumanoidRootPart.CFrame = PosNearestMob
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoKatakuri and BringKatakuriMob then
                            if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Parent and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                v.HumanoidRootPart.CFrame = PosMobCake
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoBone and StartCheckBone then
                            if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Parent and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                v.HumanoidRootPart.CFrame = Dungimanhdabijbat
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end)
            end
        end
    end)
         
     local DropdownFastAttackDelay = Tabs.Setting:AddDropdown("DropdownFastAttackDelay", {
        Title = "Fast Attack Cooldown",
        Values = {"0", "0.1", "0.15", "0.155", "0.16", "0.165", "0.17", "0.175", "0.18", "0.185"},
        Multi = false,
        Default = 1,
    })
    DropdownFastAttackDelay:SetValue('0.18')
    DropdownFastAttackDelay:OnChanged(function(Value)
        _G.FastAttackDelay = Value
    end)
    spawn(function()
        while wait(.1) do
            if _G.FastAttackDelay then
                pcall(function()
                    if _G.FastAttackDelay == "0" then
                        _G.FastAttackDelay = 0
                    elseif _G.FastAttackDelay == "0.1" then
                        _G.FastAttackDelay = 0.1
                    elseif _G.FastAttackDelay == "0.15" then
                        _G.FastAttackDelay = 0.15
                    elseif _G.FastAttackDelay == "0.15" then
                        _G.FastAttackDelay = 0.15
                    elseif _G.FastAttackDelay == "0.16" then
                        _G.FastAttackDelay = 0.16
                    elseif _G.FastAttackDelay == "0.165" then
                        _G.FastAttackDelay = 0.165
                    elseif _G.FastAttackDelay == "0.17" then
                        _G.FastAttackDelay = 0.17
                    elseif _G.FastAttackDelay == "0.175" then
                        _G.FastAttackDelay = 0.175
                    elseif _G.FastAttackDelay == "0.18" then
                        _G.FastAttackDelay = 0.18
                    elseif _G.FastAttackDelay == "0.185" then
                        _G.FastAttackDelay = 0.185
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if _G.FastAttackOld == true then
                game.Players.LocalPlayer.Character.Stun.Value = 0
                game.Players.LocalPlayer.Character.Busy.Value = false        
            end
        end)
    end)
    
    function GetBladeHit()
        local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
        local CBFRLIB2 = CombatFrameworkLib[2]
        local p13 = CBFRLIB2.activeController
        local weapon = p13.blades[1]
        if not weapon then 
            return weapon
        end
        while weapon.Parent ~= game.Players.LocalPlayer.Character do
            weapon = weapon.Parent 
        end
        return weapon
    end
    function AttackHit()
        local CBFRLIB = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
        local CBFRLIB2 = CombatFrameworkLib[2]
        local plr = game.Players.LocalPlayer
        for i = 1, 1 do
            local hit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            hit = cac
            if #hit > 0 then
                pcall(function()
                    CBFRLIB2.activeController.timeToNextAttack = 0
                    CBFRLIB2.activeController.attacking = false
                    CBFRLIB2.activeController.blocking = false
                    CBFRLIB2.activeController.timeToNextBlock = 0
                    CBFRLIB2.activeController.increment = 3
                    CBFRLIB2.activeController.hitboxMagnitude = 60
                    CBFRLIB2.activeController.focusStart = 0
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", hit, i, 2, "")
                end)
            end
        end
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
                        if _G.FastAttackOld then
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
    
    local plr = game.Players.LocalPlayer
        local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
        local CbFw2 = CbFw[2]
    
        function GetCurrentBlade() 
            local p13 = CbFw2.activeController
            local ret = p13.blades[1]
            if not ret then return end
            while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
            return ret
        end
        
        function AttackNoCD()
            if not _G.AutoMasFruit or _G.AutoMasGun then
                if not _G.NextIsland then
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
                                  for k, v in pairs(AC.animator.anims.basic) do
                                      v:Play()
                                  end
                                  game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                                  game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                                  game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                                  game:GetService'VirtualUser':CaptureController()
                                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                            end)
                        end
                    end
                end
            end
        end
    
    spawn(function()
        while wait() do
            if _G.FastAttackOld then
                pcall(function()
                    repeat task.wait(_G.FastAttackDelay)
                        AttackNoCD()
                    until not _G.FastAttackOld
                end)
            end
        end
    end)
    local ToggleFastAttackOld = Tabs.Setting:AddToggle("ToggleFastAttackOld", {Title = "Fast Attack", Default = true })
    ToggleFastAttackOld:OnChanged(function(Value)
        _G.FastAttackOld = Value
    end)
    
    local Camerabattu = require(game.ReplicatedStorage.Util.CameraShaker)
    taisaoanhlaigianemhahirimii = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    lon = debug.getupvalues(taisaoanhlaigianemhahirimii)[2]
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if _G.FastAttackOld then
                if typeof(lon) == "table" then
                    pcall(function()
                        Camerabattu:Stop()
                        lon.activeController.timeToNextAttack = 0
                        lon.activeController.hitboxMagnitude = 120
                        lon.activeController.active = false
                        lon.activeController.timeToNextBlock = 0
                        lon.activeController.focusStart = 1655503339.0980349
                        lon.activeController.increment = 1
                        lon.activeController.blocking = false
                        lon.activeController.attacking = false
                        lon.activeController.humanoid.AutoRotate = true
                    end)
                end
            end
        end)
    end)
-- Item
local Toggle = Tabs.Item:AddToggle("MyToggle", {Title = "Auto Soul Guitar", Default = false })

    Toggle:OnChanged(function(Value)
        _G.QuestSoulGuitar = Value    
          StopTween(_G.QuestSoulGuitar)
        end)

spawn(function()
        while task.wait() do
            pcall(function()
                if _G.QuestSoulGuitar then
                    if GetWeaponInventory("Soul Guitar") == false then
                        if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                            if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                            else
                                if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                    if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                        Quest2 = true
                                        repeat task.wait() 
                                            topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) 
                                        until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.QuestSoulGuitar
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                        wait(1)
                                    elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                            Quest4 = true
                                            repeat task.wait() 
                                                topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) 
                                            until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.QuestSoulGuitar
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        else
                                            Quest3 = true
                                            --Not Work Yet
                                        end
                                    else
                                        if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                            local args = {
                                                [1] = "GuitarPuzzleProgress",
                                                [2] = "Ghost"
                                            }
    
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                    if v.Name == "Living Zombie" then
                                                        EquipWeapon(_G.SelectWeapon)
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        Click()
                                                    end
                                                end
                                            end
                                        else
                                            topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                        end
                                    end
                                else    
                                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                        print("Go to Grave")
                                        topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                    elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                        print("Wait Next Night")
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                        end
                    end
                end
            end)
        end
    end)

local Toggle = Tabs.Item:AddToggle("MyToggle", {Title = "Auto Crused Dual Katana", Default = false })

    Toggle:OnChanged(function(Value)
        Auto_Cursed_Dual_Katana = Value
    StopTween(Auto_Cursed_Dual_Katana)
        end)
        
        spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                            end
                        elseif 
                                game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if GetMaterial("Alucard Fragment") == 0 then
                        Auto_Quest_Yama_1 = true
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 1 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 2 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = true
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 3 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = true
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 4 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = true
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 5 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
                                        if v.Humanoid.Health > 0 then
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                            else
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            end   
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                repeat wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Quest_Yama_2 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonsEsp
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                            vc.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                else
                                    EquipWeapon(Sword)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end							
                                end      
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                    else
                                        topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Soul Reaper" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                    end
                end)
            end
        end
    end)
local ToggleYama = Tabs.Item:AddToggle("ToggleYama", {Title = "Auto Get Yama", Default = false })
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

local ToggleTushita = Tabs.Item:AddToggle("ToggleTushita", {Title = "Auto Tushita", Default = false })
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

local Toggle = Tabs.Item:AddToggle("MyToggle", {Title = "Get Saber", Default = false })

    Toggle:OnChanged(function(autosaberfunc)
        AutoSaber = autosaberfunc
		StopTween(AutoSaber)
        end)
        
        spawn(function()
        while task.wait() do
            if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
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
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
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
                                        until v.Humanoid.Health <= 0 or not AutoSaber
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



   -- Misc
   
     
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

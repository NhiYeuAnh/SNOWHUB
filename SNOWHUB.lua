game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "SUMMER HUB",
	Text = "LOADER SCRIPT",
	Icon = "rbxassetid://16730867128"
})

function GetUi() 
    if getgenv().Tvk then
    if game.CoreGui:FindFirstChild("Summer Hub GUI") then
        for a, v in ipairs(game.CoreGui:GetChildren()) do
            if v.Name == "Summer Hub GUI" then
                v:Destroy()
            end
        end
    end
end
getgenv().Tvk = true
getgenv().Chon = true

local oldcolor = {
    ["Border Color"] = Color3.fromRGB(131, 181, 255),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://16730867128",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(0, 0, 0),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(131, 181, 255),
    ["Section Text Color"] = Color3.fromRGB(131, 181, 255),
    ["Section Underline Color"] = Color3.fromRGB(131, 181, 255),
    ["Toggle Border Color"] = Color3.fromRGB(131, 181, 255),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(131, 181, 255),
    ["Label Color"] = Color3.fromRGB(101, 152, 220),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(131, 181, 255),
    ["Textbox Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["Box Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(59, 82, 115),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1
}

local b = {
    ["Border Color"] = Color3.fromRGB(255, 255, 255),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://16730867128",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Background Main Color"] = Color3.fromRGB(0, 0, 0),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(131, 181, 255),
    ["Section Text Color"] = Color3.fromRGB(131, 181, 255),
    ["Section Underline Color"] = Color3.fromRGB(131, 181, 255),
    ["Toggle Border Color"] = Color3.fromRGB(131, 181, 255),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(131, 181, 255),
    ["Button Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Label Color"] = Color3.fromRGB(101, 152, 220),
    ["Label Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(131, 181, 255),
    ["Textbox Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["Box Highlight Color"] = Color3.fromRGB(131, 181, 255),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(59, 82, 115),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1
}

local c = {}
for d, v in pairs(b) do
    c[d] = {}
end
local e = {}
for d, v in pairs(b) do
    e[d] = {Color = v, Rainbow = false, Breathing = {Toggle = false, Color1 = Color3.new(), Color2 = Color3.new()}}
end
local function f(g)
    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255), "Dit"}
end
function CorrectTable(h)
    local i = {}
    for d, v in pairs(h) do
        if typeof(v) == "Color3" then
            i[d] = f(v)
        elseif type(v) == "table" then
            i[d] = CorrectTable(v)
        else
            i[d] = v
        end
    end
    return i
end
function DCorrectTable(h)
    local i = {}
    for d, v in pairs(h) do
        if type(v) == "table" and v[4] == "Dit" then
            i[d] = Color3.fromRGB(unpack(v))
        elseif type(v) == "table" then
            i[d] = DCorrectTable(v)
        else
            i[d] = v
        end
    end
    return i
end
local j = game:GetService("HttpService")
local k = "!CustomUI.json"
function SaveCustomUISettings()
    local j = game:GetService("HttpService")
    if not isfolder("Summer Hub") then
        makefolder("Summer Hub")
    end
    writefile("Summer Hub/" .. k, j:JSONEncode(CorrectTable(e)))
end
function ReadCustomUISetting()
    local l, m =
        pcall(
        function()
            local j = game:GetService("HttpService")
            if not isfolder("Summer Hub") then
                makefolder("Summer Hub")
            end
            local n = j:JSONDecode(readfile("Summer Hub/" .. k))
            for d, v in pairs(n) do
                local function o()
                    if v.Color == nil then
                        return
                    end
                    if v.Rainbow == nil then
                        return
                    end
                    if v.Breathing == nil then
                        return
                    end
                    if v.Breathing.Color1 == nil then
                        return
                    end
                    if v.Breathing.Color2 == nil then
                        return
                    end
                    return true
                end
                if not o() then
                    SaveCustomUISettings()
                    return ReadCustomUISetting()
                end
            end
            return n
        end
    )
    if l then
        return m
    else
        SaveCustomUISettings()
        return ReadCustomUISetting()
    end
end
if not getgenv().Chon then 
    e = DCorrectTable(ReadCustomUISetting())
    for d, v in pairs(e) do
        b[d] = v.Color
    end
end
if not getgenv().ractvkretarddumb then
    spawn(
        function()
            while wait(1) do
                SaveCustomUISettings()
            end
        end
    )
    getgenv().ractvkretarddumb = true
end
getgenv().UIColor = b
    setmetatable(
    {},
    {__newindex = function(p, q, r)
            if c[q] then
                for d, v in pairs(c[q]) do
                    v()
                end
            end
            rawset(b, q, r)
            if not e[q] then
                e[q] = {
                    Color = v,
                    Rainbow = false,
                    Breathing = {Toggle = false, Color1 = Color3.new(), Color2 = Color3.new()}
                }
            end
            e[q].Color = r
        end, __index = b}
)
local s = {}
local t = {}
local u = {}
local w = game:GetService("TweenService")
local x = game:GetService("UserInputService")
function u.ButtonEffect()
    local y = game:GetService("Players").LocalPlayer:GetMouse()
    local z = Drawing.new("Circle")
    z.Visible = true
    z.Radius = 10
    z.Filled = true
    z.Color = getgenv().UIColor["Click Effect Color"]
    z.Position = Vector2.new(y.X, y.Y + 35)
    local A = Instance.new("Folder")
    A.Parent = u.gui
    A.Name = "Game nhu buoi"
    local n = Instance.new("NumberValue")
    n.Value = 10
    n.Parent = A
    n.Name = "Rua nhu buoi"
    local B = Instance.new("NumberValue")
    B.Value = 1
    B.Parent = A
    B.Name = "Rua nhu buoi 2"
    w:Create(n, TweenInfo.new(.25), {Value = 25}):Play()
    w:Create(B, TweenInfo.new(.25), {Value = 0}):Play()
    n:GetPropertyChangedSignal("Value"):Connect(
        function()
            z.Radius = n.Value
        end
    )
    B:GetPropertyChangedSignal("Value"):Connect(
        function()
            z.Transparency = B.Value
        end
    )
    wait(.5)
    A:Destroy()
end
u.GetIMG = function(C)
    local D = "SynAsset ["
    local E = ""
    if string.find(C, "rbxassetid://") then
        E = C
    else
        pcall(
            function()
                if C and type(C) == "string" and tostring(game:HttpGet(C)):find("PNG") then
                    for a = 1, 5 do
                        D = tostring(D .. string.char(math.random(65, 122)))
                    end
                    D = D .. "].png"
                    writefile(D, game:HttpGet(C))
                    spawn(
                        function()
                            wait(5)
                            delfile(D)
                        end
                    )
                    E = getsynasset(D)
                end
            end
        )
    end
    return E
end
u.Gui = Instance.new("ScreenGui")
u.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.Gui.Name = "Summer Hub GUI"
getgenv().ReadyForGuiLoaded = false
spawn(
    function()
        u.Gui.Enabled = false
        repeat
            wait()
        until getgenv().ReadyForGuiLoaded
        u.Gui.Enabled = true
    end
)
u.NotiGui = Instance.new("ScreenGui")
u.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.NotiGui.Name = "Summer Hub Notification"
local F = Instance.new("Frame")
local G = Instance.new("UIListLayout")
F.Name = "NotiContainer"
F.Parent = u.NotiGui
F.AnchorPoint = Vector2.new(1, 1)
F.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
F.BackgroundTransparency = 1.000
F.Position = UDim2.new(1, -5, 1, -5)
F.Size = UDim2.new(0, 350, 1, -10)
G.Name = "NotiList"
G.Parent = F
G.SortOrder = Enum.SortOrder.LayoutOrder
G.VerticalAlignment = Enum.VerticalAlignment.Bottom
G.Padding = UDim.new(0, 5)
wait()
getgenv().GUI = u.Gui
--syn.unprotect_gui(GUI)
-- // GOOGLE TRANSLATE // --

-- function SetUpTranslate()
--     local YourLang = "vi" -- Language code that the messages are going to be translated to

--     local googlev = isfile'googlev.txt' and readfile'googlev.txt' or ''
--     local request = request or syn.request
    
--     local function outputHook(fnc)
--         return function(...)
--             return fnc('[INLINE TRANSLATOR]', ...)
--         end
--     end
--     local translate, getISOCode do
--         function googleConsent(Body) -- Because google really said: "Fuck you."
--             local args = {}
    
--             for match in Body:gmatch('<input type="hidden" name=".-" value=".-">') do
--                 local k,v = match:match('<input type="hidden" name="(.-)" value="(.-)">')
--                 args[k] = v
--             end
--             googlev = args.v
--             writefile('googlev.txt', args.v)
--         end
    
--         local function got(url, Method, Body) -- Basic version of https://www.npmjs.com/package/got using synapse's request API for google websites
--             Method = Method or "GET"
            
--             local res = request({
--                 Url = url,
--                 Method = Method,
--                 Headers = {cookie="CONSENT=YES+"..googlev},
--                 Body = Body
--             })
            
--             if res.Body:match('https://consent.google.com/s') then
--                 googleConsent(res.Body)
--                 res = request({
--                     Url = url,
--                     Method = "GET",
--                     Headers = {cookie="CONSENT=YES+"..googlev}
--                 })
--             end
            
--             return res
--         end
    
--         getgenv().languages = {
--             auto = "Automatic",
--             ['zh-cn'] = "Chinese Simplified",
--             ['zh-tw'] = "Chinese Traditional",
--             en = "English",
--             fr = "French",
--             de = "German",
--             el = "Greek",
--             hu = "Hungarian",
--             id = "Indonesian",
--             it = "Italian",
--             ja = "Japanese",
--             ko = "Korean",
--             mg = "Malagasy",
--             pl = "Polish",
--             pt = "Portuguese",
--             ru = "Russian",
--             es = "Spanish",
--             tr = "Turkish",
--             vi = "Vietnamese",
--         };
--         local listl = {}
--         for k,v in pairs(languages) do table.insert(listl,k) end
--         function SetRandomLang() 
--             YourLang = listl[math.random(1,#listl)]
--         end
--         function find(lang)
--             for i,v in pairs(languages) do
--                 if i == lang or v == lang then
--                     return i
--                 end
--             end
--         end
    
--         function isSupported(lang)
--             local key = find(lang)
--             return key and true or false 
--         end
    
--         function getISOCode(lang)
--             local key = find(lang)
--             return key
--         end
    
--         function stringifyQuery(dataFields)
--             local data = ""
--             for k, v in pairs(dataFields) do
--                 if type(v) == "table" then
--                     for _,v in pairs(v) do
--                         data = data .. ("&%s=%s"):format(
--                             game.HttpService:UrlEncode(k),
--                             game.HttpService:UrlEncode(v)
--                         )
--                     end
--                 else
--                     data = data .. ("&%s=%s"):format(
--                         game.HttpService:UrlEncode(k),
--                         game.HttpService:UrlEncode(v)
--                     )
--                 end
--             end
--             data = data:sub(2)
--             return data
--         end
    
--         local reqid = math.random(1000,9999)
--         local rpcidsTranslate = "MkEWBc"
--         local rootURL = "https://translate.google.com/"
--         local executeURL = "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute"
--         local fsid, bl
    
--         do -- init
--             local InitialReq = got(rootURL)
--             fsid = InitialReq.Body:match('"FdrFJe":"(.-)"')
--             bl = InitialReq.Body:match('"cfb2h":"(.-)"')
--         end
    
--         local HttpService = game:GetService("HttpService")
--         function jsonE(o)
--             return HttpService:JSONEncode(o)
--         end
--         function jsonD(o)
--             return HttpService:JSONDecode(o)
--         end
    
--         function translate(str, to, from)
--             reqid = reqid + 10000
--             from = from and getISOCode(from) or 'auto'
--             to = to and getISOCode(to) or 'en'
    
--             local data = {{str, from, to, true}, {nil}}
    
--             local freq = {
--                 {
--                     {
--                         rpcidsTranslate, 
--                         jsonE(data),
--                         nil,
--                         "generic"
--                     }
--                 }
--             }
    
--             local url = executeURL..'?'..stringifyQuery{rpcids = rpcidsTranslate, ['f.sid'] = fsid, bl = bl, hl="en", _reqid = reqid-10000, rt = 'c'}
--             local body = stringifyQuery{['f.req'] = jsonE(freq)}
            
--             local req = got(url, "POST", body)
            
--             local body = jsonD(req.Body:match'%[.-%]\n')
--             local translationData = jsonD(body[1][3])
--             local result = {
--                 text = "",
--                 from = {
--                     language = "",
--                     text = ""
--                 },
--                 raw = ""
--             }
--             result.raw = translationData
--             result.text = translationData[2][1][1][6][1][1]
            
--             result.from.language = translationData[3]
--             result.from.text = translationData[2][5][1]
    
--             return result
--         end
--     end
--     function translateFrom(message)
--         local translation = translate(message, YourLang)
    
--         local text
--         if translation.from.language ~= YourLang then 
--             text = translation.text
--         end
    
--         return {text, translation.from.language}
--     end
--     function Translate(message) 
--         local s,translated =  pcall(function() 
--             return translateFrom(message)[1]
--         end)
--         if s then return translated 
--         else
--             --print(message,translated)
--         end
--     end
-- end
-- SetUpTranslate()
-- getgenv().TranslateCache = {}
-- if not isfolder("Summer Hub") then
--     makefolder("Summer Hub")
-- end
-- local s,Translated = pcall(function() 
--     return game.HttpService:JSONDecode(readfile("Summer Hub/!UIText.json"))
-- end)
-- function SaveFile() 
--     pcall(function() 
--         writefile("Summer Hub/!UIText.json",game.HttpService:JSONEncode(getgenv().TranslateCache))
--     end)
-- end
-- function isnumber() end
-- local UIChanged = false
-- if s and Translated then 
--     getgenv().TranslateCache = Translated end
-- if GUI then 
--     GUI.DescendantAdded:Connect(function(des) 
--         if des then 
--             if pcall(function() return des.Text end) then 
--                 delay(0,function() 
--                     if des.Text=="" or #des.Text<=4 or tonumber(des.Text)~=nil then
--                         return
--                     end
--                     if string.match(des.Text,"Summer Hub") then 
--                         local tvk = des.Text:gsub("Summer Hub","Trung Tâm Biển")
--                         des.Text = tvk
--                         return
--                     end
--                     local old = des.Text
--                     local c = 0
--                     while des.Text==old and c<3 do 
--                         --SetRandomLang()
--                         if getgenv().TranslateCache[des.Text] then 
--                             des.Text = getgenv().TranslateCache[des.Text]
--                             return
--                         end
--                         local t = Translate(des.Text)
--                         if t and t ~= old then 
--                             getgenv().TranslateCache[des.Text] = t
--                             UIChanged =true
--                             if t then des.Text = t end
--                         end
--                         wait(1)
--                         c=c+1
--                     end
--                     getgenv().TranslateCache[des.Text]  = des.Text
--                     UIChanged =true
--                 end)
--             end
--         end
--     end)
-- end
-- spawn(function() 
--     local t = tick()
--     while wait(2) do 
--         if tick()-t>30 then 
--             if UIChanged then 
--                 SaveFile()
--                 UIChanged = false
--             end
--         else
--             SaveFile()
--         end
--     end
-- end)
-- if syn.protect_gui then
--     syn.protect_gui(u.Gui)
--     syn.protect_gui(u.NotiGui)
--     u.Gui.Parent = game:GetService("CoreGui")
--     u.NotiGui.Parent = game:GetService("CoreGui")
-- end
u.Gui.Parent = game:GetService("CoreGui")
u.NotiGui.Parent = game:GetService("CoreGui")

function u.Getcolor(g)
    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255)}
end
function t.CreateNoti(H)
    getgenv().TitleNameNoti = H.Title or ""
    local I = H.Desc
    local J = H.ShowTime or 10
    local K = Instance.new("Frame")
    local L = Instance.new("Frame")
    local M = Instance.new("UICorner")
    local N = Instance.new("Frame")
    local O = Instance.new("ImageLabel")
    local P = Instance.new("UICorner")
    local Q = Instance.new("TextLabel")
    local R = Instance.new("Frame")
    local S = Instance.new("ImageLabel")
    local T = Instance.new("TextButton")
    local U = Instance.new("TextLabel")
    K.Name = "NotiFrame"
    K.Parent = F
    K.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    K.BackgroundTransparency = 1.000
    K.ClipsDescendants = true
    K.Position = UDim2.new(0, 0, 0, 0)
    K.Size = UDim2.new(1, 0, 0, 0)
    K.AutomaticSize = Enum.AutomaticSize.Y
    L.Name = "Noticontainer"
    L.Parent = K
    L.Position = UDim2.new(1, 0, 0, 0)
    L.Size = UDim2.new(1, 0, 1, 6)
    L.AutomaticSize = Enum.AutomaticSize.Y
    L.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
    table.insert(
        c["Background 3 Color"],
        function()
            L.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
        end
    )
    M.CornerRadius = UDim.new(0, 4)
    M.Parent = L
    N.Name = "Topnoti"
    N.Parent = L
    N.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    N.BackgroundTransparency = 1.000
    N.Position = UDim2.new(0, 0, 0, 5)
    N.Size = UDim2.new(1, 0, 0, 25)
    O.Name = "Ruafimg"
    O.Parent = N
    O.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    O.BackgroundTransparency = 1.000
    O.Position = UDim2.new(0, 10, 0, 0)
    O.Size = UDim2.new(0, 25, 0, 25)
    O.Image = getgenv().UIColor["Logo Image"]
    table.insert(
        c["Logo Image"],
        function()
            O.Image = u.GetIMG(getgenv().UIColor["Logo Image"])
        end
    )
    P.CornerRadius = UDim.new(1, 0)
    P.Name = "RuafimgCorner"
    P.Parent = O
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    Q.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().TitleNameNoti
    table.insert(
        c["Title Text Color"],
        function()
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            Q.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().TitleNameNoti
        end
    )
    Q.Name = "TextLabelNoti"
    Q.Parent = N
    Q.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    Q.BackgroundTransparency = 1.000
    Q.Position = UDim2.new(0, 40, 0, 0)
    Q.Size = UDim2.new(1, -40, 1, 0)
    Q.Font = Enum.Font.GothamBold
    Q.TextSize = 14.000
    Q.TextWrapped = true
    Q.TextXAlignment = Enum.TextXAlignment.Left
    Q.RichText = true
    Q.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            Q.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    R.Name = "CloseContainer"
    R.Parent = N
    R.AnchorPoint = Vector2.new(1, 0.5)
    R.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    R.BackgroundTransparency = 1.000
    R.Position = UDim2.new(1, -4, 0.5, 0)
    R.Size = UDim2.new(0, 22, 0, 22)
    S.Name = "CloseImage"
    S.Parent = R
    S.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    S.BackgroundTransparency = 1.000
    S.Size = UDim2.new(1, 0, 1, 0)
    S.Image = "rbxassetid://3926305904"
    S.ImageRectOffset = Vector2.new(284, 4)
    S.ImageRectSize = Vector2.new(24, 24)
    S.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    table.insert(
        c["Search Icon Color"],
        function()
            S.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        end
    )
    T.Parent = R
    T.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    T.BackgroundTransparency = 1.000
    T.Size = UDim2.new(1, 0, 1, 0)
    T.Font = Enum.Font.SourceSans
    T.Text = ""
    T.TextColor3 = Color3.fromRGB(0, 0, 0)
    T.TextSize = 14.000
    if I then
        U.Name = "TextColor"
        U.Parent = L
        U.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        U.BackgroundTransparency = 1.000
        U.Position = UDim2.new(0, 10, 0, 35)
        U.Size = UDim2.new(1, -15, 0, 0)
        U.Font = Enum.Font.GothamBold
        U.Text = I
        U.TextSize = 14.000
        U.TextXAlignment = Enum.TextXAlignment.Left
        U.RichText = true
        U.TextColor3 = getgenv().UIColor["Text Color"]
        U.AutomaticSize = Enum.AutomaticSize.Y
        U.TextWrapped = true
        table.insert(
            c["Text Color"],
            function()
                U.TextColor3 = getgenv().UIColor["Text Color"]
            end
        )
    end
    local function Y()
        w:Create(L, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(1, 0, 0, 0)}):Play(

        )
        wait(.25)
        K:Destroy()
    end
    w:Create(L, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(0, 0, 0, 0)}):Play()
    T.MouseEnter:Connect(
        function()
            w:Create(
                S,
                TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
            ):Play()
        end
    )
    T.MouseLeave:Connect(
        function()
            w:Create(
                S,
                TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
            ):Play()
        end
    )
    T.MouseButton1Click:Connect(
        function()
            spawn(
                function()
                    u.ButtonEffect()
                end
            )
            wait(.25)
            Y()
        end
    )
    spawn(
        function()
            wait(J)
            Y()
        end
    )
end
function t.CreateMain(H)
    local Z = tostring(H.Title) or "Summer Hub"
    getgenv().MainDesc = H.Desc or ""
    local _ = false
    cac = false
    local function a0(a1, a2)
        local a3 = nil
        local a4 = nil
        local a5 = nil
        local a6 = nil
        a1.InputBegan:Connect(
            function(a7)
                if a7.UserInputType == Enum.UserInputType.MouseButton1 or a7.UserInputType == Enum.UserInputType.Touch then
                    a3 = true
                    a5 = a7.Position
                    a6 = a2.Position
                    a7.Changed:Connect(
                        function()
                            if a7.UserInputState == Enum.UserInputState.End then
                                a3 = false
                            end
                        end
                    )
                end
            end
        )
        a1.InputChanged:Connect(
            function(a7)
                if a7.UserInputType == Enum.UserInputType.MouseMovement or a7.UserInputType == Enum.UserInputType.Touch then
                    a4 = a7
                end
            end
        )
        x.InputChanged:Connect(
            function(a7)
                if a7 == a4 and a3 then
                    local a8 = a7.Position - a5
                    if not _ and cac then
                        w:Create(
                            a2,
                            TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Position = UDim2.new(a6.X.Scale, a6.X.Offset + a8.X, a6.Y.Scale, a6.Y.Offset + a8.Y)}
                        ):Play()
                    elseif not _ and not cac then
                        a2.Position = UDim2.new(a6.X.Scale, a6.X.Offset + a8.X, a6.Y.Scale, a6.Y.Offset + a8.Y)
                    end
                end
            end
        )
    end
    local a9 = Instance.new("Frame")
    local aa = Instance.new("ImageLabel")
    local ab = Instance.new("UICorner")
    local ac = Instance.new("Frame")
    local O = Instance.new("ImageLabel")
    local ad = Instance.new("TextLabel")
    local ae = Instance.new("Frame")
    local M = Instance.new("UICorner")
    local af = Instance.new("ScrollingFrame")
    local ag = Instance.new("UIListLayout")
    local ah = Instance.new("TextLabel")
    local ai = Instance.new("Frame")
    local aj = Instance.new("UIPageLayout")
    local ak = Instance.new("Frame")
    local al = Instance.new("TextButton")
    local am = Instance.new("ImageLabel")
    local an = Instance.new("Frame")
    local ao = Instance.new("Frame")
    local ap = Instance.new("Frame")
    local aq = Instance.new("UIPageLayout")
    local ar
    a9.Name = "Main"
    a9.Parent = u.Gui
    a9.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    a9.BackgroundTransparency = 1.000
    a9.Position = UDim2.new(0.5, 0, 0.5, 0)
    a9.AnchorPoint = Vector2.new(0.5, 0.5)
    a9.Size = UDim2.new(0, 629, 0, 359)
    a0(a9, a9)
    aa.Name = "maingui"
    aa.Parent = a9
    aa.AnchorPoint = Vector2.new(0.5, 0.5)
    aa.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    aa.BackgroundTransparency = 1.000
    aa.Position = UDim2.new(0.5, 0, 0.5, 0)
    aa.Selectable = true
    aa.Size = UDim2.new(1, 30, 1, 30)
    aa.Image = "rbxassetid://8068653048"
    aa.ScaleType = Enum.ScaleType.Slice
    aa.SliceCenter = Rect.new(15, 15, 175, 175)
    aa.SliceScale = 1.300
    aa.ImageColor3 = getgenv().UIColor["Border Color"]
    table.insert(
        c["Border Color"],
        function()
            aa.ImageColor3 = getgenv().UIColor["Border Color"]
        end
    )
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    _G.CloseandOpenUi = true

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.100739375, 0, 0.121457487, 0)
    ImageButton.Size = UDim2.new(0, 40, 0, 40)
    ImageButton.Image = "rbxassetid://16730867128"
    ImageButton.MouseButton1Click:Connect(function()
        _G.CloseandOpenUi = not _G.CloseandOpenUi
        a9.Visible = _G.CloseandOpenUi
    end)

    UICorner.Parent = ImageButton

    UIStroke.Color = Color3.fromRGB(255, 255, 255)
    UIStroke.Parent = ImageButton
    function u.ReloadMain(v)
        aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
        local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
        local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
        local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
        local g = V .. "," .. W .. "," .. X
        ad.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().MainDesc
        table.insert(
            c["Title Text Color"],
            function()
                aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
                local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
                local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
                local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
                local g = V .. "," .. W .. "," .. X
                ad.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().MainDesc
            end
        )
        local as
        if
            v ~= "" and type(v) == "string" and string.find(v:lower(), ".webm") and
                pcall(
                    function()
                        writefile("seahub.webm", syn.request({Url = v}).Body)
                    end
                )
         then
            wait(.25)
            local at = isfile("seahub.webm")
            wait(.25)
            if at then
                as = Instance.new("VideoFrame")
                as.Name = "MainContainer"
                as.Parent = a9
                as.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
                as.Size = UDim2.new(1, 0, 1, 0)
                as.Video = getsynasset("seahub.webm")
                as.Looped = true
                as:Play()
                wait(.5)
                delfile("seahub.webm")
            end
        else
            as = Instance.new("ImageLabel")
            as.Name = "MainContainer"
            as.Parent = a9
            as.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
            as.Size = UDim2.new(1, 0, 1, 0)
            as.Image = u.GetIMG(v)
        end
        MainCorner_ = Instance.new("UICorner")
        MainCorner_.CornerRadius = UDim.new(0, 4)
        MainCorner_.Name = "MainCorner"
        MainCorner_.Parent = as
        for a, m in next, a9:GetChildren() do
            if m.Name == "MainContainer" then
                for a, v in next, m:GetChildren() do
                    v.Parent = as
                end
                wait()
                m:Destroy()
                break
            end
        end
        table.insert(
            c["Background 3 Color"],
            function()
                as.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            end
        )
    end
    aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    ad.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().MainDesc
    table.insert(
        c["Title Text Color"],
        function()
            aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            ad.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().MainDesc
        end
    )
    local ar
    local au = getgenv().UIColor["Background Image"]
    if
        au ~= "" and type(au) == "string" and string.find(au:lower(), ".webm") and
            pcall(
                function()
                    writefile("seahub.webm", syn.request({Url = au}).Body)
                end
            )
     then
        wait(.25)
        local at = isfile("seahub.webm")
        wait(.25)
        if at then
            ar = Instance.new("VideoFrame")
            ar.Name = "MainContainer"
            ar.Parent = a9
            ar.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
            ar.Size = UDim2.new(1, 0, 1, 0)
            ar.Video = getsynasset("seahub.webm")
            ar.Looped = true
            ar:Play()
            wait(.5)
            delfile("seahub.webm")
        end
    else
        ar = Instance.new("ImageLabel")
        ar.Name = "MainContainer"
        ar.Parent = a9
        ar.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
        ar.Size = UDim2.new(1, 0, 1, 0)
        ar.Image = u.GetIMG(au)
    end
    table.insert(
        c["Background 3 Color"],
        function()
            ar.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
        end
    )
    getgenv().ReadyForGuiLoaded = true
    ab.CornerRadius = UDim.new(0, 4)
    ab.Name = "MainCorner"
    ab.Parent = ar
    an.Name = "Concacontainer"
    an.Parent = ar
    an.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    an.BackgroundTransparency = 1.000
    an.ClipsDescendants = true
    an.Position = UDim2.new(0, 0, 0, 30)
    an.Size = UDim2.new(1, 0, 1, -30)
    ao.Name = "Concacmain"
    ao.Parent = an
    ao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ao.BackgroundTransparency = 1.000
    ao.Selectable = true
    ao.Size = UDim2.new(1, 0, 1, 0)
    ap.Name = "Background1"
    ap.Parent = an
    ap.LayoutOrder = 1
    ap.Selectable = true
    ap.Size = UDim2.new(1, 0, 1, 0)
    ap.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
    table.insert(
        c["Background 1 Transparency"],
        function()
            ap.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        end
    )
    ap.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    table.insert(
        c["Background 1 Color"],
        function()
            ap.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        end
    )
    aq.Name = "Concacpage"
    aq.Parent = an
    aq.SortOrder = Enum.SortOrder.LayoutOrder
    aq.EasingDirection = Enum.EasingDirection.InOut
    aq.EasingStyle = Enum.EasingStyle.Quad
    aq.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    table.insert(
        c["Tween Animation 1 Speed"],
        function()
            aq.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
        end
    )
    ac.Name = "TopMain"
    ac.Parent = ar
    ac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ac.BackgroundTransparency = 1.000
    ac.Size = UDim2.new(1, 0, 0, 25)
    O.Name = "Ruafimg"
    O.Parent = ac
    O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    O.BackgroundTransparency = 1.000
    O.Position = UDim2.new(0, 5, 0, 0)
    O.Size = UDim2.new(0, 25, 0, 25)
    O.Image = getgenv().UIColor["Logo Image"]
    table.insert(
        c["Logo Image"],
        function()
            O.Image = getgenv().UIColor["Logo Image"]
        end
    )
    ad.Name = "TextLabelMain"
    ad.Parent = ac
    ad.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ad.BackgroundTransparency = 1.000
    ad.Position = UDim2.new(0, 35, 0, 0)
    ad.Size = UDim2.new(1, -35, 1, 0)
    ad.Font = Enum.Font.GothamBold
    ad.RichText = true
    ad.TextSize = 16.000
    ad.TextWrapped = true
    ad.TextXAlignment = Enum.TextXAlignment.Left
    ad.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ad.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    ad.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().MainDesc
    table.insert(
        c["Title Text Color"],
        function()
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            ad.Text = '<font color="rgb(' .. g .. ')">Summer Hub</font> ' .. getgenv().MainDesc
        end
    )
    ak.Name = "SettionMain"
    ak.Parent = ac
    ak.AnchorPoint = Vector2.new(1, 0)
    ak.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ak.BackgroundTransparency = 1.000
    ak.Position = UDim2.new(1, 0, 0, 0)
    ak.Size = UDim2.new(0, 30, 0, 30)
    al.Name = "SettionButton"
    al.Parent = ak
    al.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    al.BackgroundTransparency = 1.000
    al.BorderColor3 = Color3.fromRGB(27, 42, 53)
    al.Size = UDim2.new(1, 0, 1, 0)
    al.Font = Enum.Font.SourceSans
    al.Text = ""
    al.TextColor3 = Color3.fromRGB(0, 0, 0)
    al.TextSize = 14.000
    al.Visible = true
    am.Name = "SettingIcon"
    am.Parent = ak
    am.AnchorPoint = Vector2.new(0.5, 0.5)
    am.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    am.BackgroundTransparency = 1.000
    am.Position = UDim2.new(0.5, 0, 0.5, 0)
    am.Size = UDim2.new(1, -10, 1, -10)
    am.Image = "rbxassetid://7397332215"
    am.Visible = true
    am.ImageColor3 = getgenv().UIColor["Setting Icon Color"]
    table.insert(
        c["Setting Icon Color"],
        function()
            am.ImageColor3 = getgenv().UIColor["Setting Icon Color"]
        end
    )
    ae.Name = "Background1"
    ae.Parent = ao
    ae.Position = UDim2.new(0, 5, 0, 0)
    ae.Size = UDim2.new(0, 180, 0, 325)
    ae.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
    table.insert(
        c["Background 1 Transparency"],
        function()
            ae.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        end
    )
    ae.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    table.insert(
        c["Background 1 Color"],
        function()
            ae.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        end
    )
    M.CornerRadius = UDim.new(0, 4)
    M.Parent = ae
    af.Name = "ControlList"
    af.Parent = ae
    af.Active = true
    af.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    af.BackgroundTransparency = 1.000
    af.BorderColor3 = Color3.fromRGB(27, 42, 53)
    af.BorderSizePixel = 0
    af.Position = UDim2.new(0, 0, 0, 30)
    af.Size = UDim2.new(1, -5, 1, -30)
    af.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    af.CanvasSize = UDim2.new(0, 0, 0, 0)
    af.ScrollBarThickness = 5
    af.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    ag.Parent = af
    ag.SortOrder = Enum.SortOrder.LayoutOrder
    ag.Padding = UDim.new(0, 5)
    ah.Name = "GUITextColor"
    ah.Parent = ae
    ah.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ah.BackgroundTransparency = 1.000
    ah.Position = UDim2.new(0, 5, 0, 0)
    ah.Size = UDim2.new(1, 0, 0, 25)
    ah.Font = Enum.Font.GothamBold
    ah.Text = Z
    ah.TextSize = 14.000
    ah.TextXAlignment = Enum.TextXAlignment.Left
    ah.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ah.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    ai.Name = "MainPage"
    ai.Parent = ao
    ai.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ai.BackgroundTransparency = 1.000
    ai.ClipsDescendants = true
    ai.Position = UDim2.new(0, 190, 0, 0)
    ai.Size = UDim2.new(0, 435, 0, 325)
    aj.Name = "UIPage"
    aj.Parent = ai
    aj.FillDirection = Enum.FillDirection.Vertical
    aj.SortOrder = Enum.SortOrder.LayoutOrder
    aj.EasingDirection = Enum.EasingDirection.InOut
    aj.EasingStyle = Enum.EasingStyle.Quart
    aj.Padding = UDim.new(0, 10)
    aj.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    aj.ScrollWheelInputEnabled = false
    table.insert(
        c["Tween Animation 1 Speed"],
        function()
            aj.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
        end
    )
    ag:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            af.CanvasSize = UDim2.new(0, 0, 0, ag.AbsoluteContentSize.Y + 5)
        end
    )
    local av = false
    al.MouseButton1Click:Connect(
        function()
            u.ButtonEffect()
        end
    )
    al.MouseButton1Click:Connect(
        function()
            av = not av
            pa = av and 1 or 0
            ro = av and 180 or 0
          --  aq:JumpToIndex(pa)
            game.TweenService:Create(am, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Rotation = ro}):Play(

            )
        end
    )
    local aw = Instance.new("ScrollingFrame")
    local ax = Instance.new("UIListLayout")
    aw.Name = "CustomList"
    aw.Parent = ap
    aw.Active = true
    aw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aw.BackgroundTransparency = 1.000
    aw.BorderColor3 = Color3.fromRGB(27, 42, 53)
    aw.BorderSizePixel = 0
    aw.Position = UDim2.new(0, 5, 0, 30)
    aw.Size = UDim2.new(1, -10, 1, -30)
    aw.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    aw.ScrollBarThickness = 5
    aw.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    ax.Name = "CustomListLayout"
    ax.Parent = aw
    ax.SortOrder = Enum.SortOrder.LayoutOrder
    ax.Padding = UDim.new(0, 5)
    ax:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            aw.CanvasSize = UDim2.new(0, 0, 0, ax.AbsoluteContentSize.Y + 5)
        end
    )
    local ay = Instance.new("TextLabel")
    ay.Name = "GUITextColor"
    ay.Parent = ap
    ay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ay.BackgroundTransparency = 1.000
    ay.Position = UDim2.new(0, 15, 0, 0)
    ay.Size = UDim2.new(1, -15, 0, 25)
    ay.Font = Enum.Font.GothamBold
    ay.Text = ""
    ay.TextSize = 16.000
    ay.TextXAlignment = Enum.TextXAlignment.Left
    ay.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ay.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    local az = Instance.new("Frame")
    local aA = Instance.new("UICorner")
    local aB = Instance.new("Frame")
    local aC = Instance.new("ImageLabel")
    local aD = Instance.new("TextButton")
    local aE = Instance.new("TextBox")
    az.Name = "Background2"
    az.Parent = ap
    az.AnchorPoint = Vector2.new(1, 0)
    az.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
    az.ClipsDescendants = true
    az.Position = UDim2.new(1, -5, 0, 5)
    az.Size = UDim2.new(0, 20, 0, 20)
    az.ClipsDescendants = true
    table.insert(
        c["Background 2 Color"],
        function()
            az.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
        end
    )
    aA.CornerRadius = UDim.new(0, 2)
    aA.Name = "PageSearchCorner"
    aA.Parent = az
    aB.Name = "SearchFrame"
    aB.Parent = az
    aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aB.BackgroundTransparency = 1.000
    aB.Size = UDim2.new(0, 20, 0, 20)
    aC.Name = "SearchIcon"
    aC.Parent = aB
    aC.AnchorPoint = Vector2.new(0.5, 0.5)
    aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aC.BackgroundTransparency = 1.000
    aC.Position = UDim2.new(0.5, 0, 0.5, 0)
    aC.Size = UDim2.new(0, 16, 0, 16)
    aC.Image = "rbxassetid://8154282545"
    aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    table.insert(
        c["Search Icon Color"],
        function()
            aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        end
    )
    aD.Name = "active"
    aD.Parent = aB
    aD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aD.BackgroundTransparency = 1.000
    aD.Size = UDim2.new(1, 0, 1, 0)
    aD.Font = Enum.Font.SourceSans
    aD.Text = ""
    aD.TextColor3 = Color3.fromRGB(0, 0, 0)
    aD.TextSize = 14.000
    aE.Name = "TextColorPlaceholder"
    aE.Parent = az
    aE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aE.BackgroundTransparency = 1.000
    aE.Position = UDim2.new(0, 30, 0, 0)
    aE.Size = UDim2.new(1, -30, 1, 0)
    aE.Font = Enum.Font.GothamBold
    aE.Text = ""
    aE.TextSize = 14.000
    aE.TextXAlignment = Enum.TextXAlignment.Left
    aE.PlaceholderText = "Search Section name"
    aE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
    aE.TextColor3 = getgenv().UIColor["Text Color"]
    table.insert(
        c["Placeholder Text Color"],
        function()
            aE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
        end
    )
    table.insert(
        c["Text Color"],
        function()
            aE.TextColor3 = getgenv().UIColor["Text Color"]
        end
    )
    local aF = false
    aD.MouseEnter:Connect(
        function()
            w:Create(
                aC,
                TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
            ):Play()
        end
    )
    aD.MouseLeave:Connect(
        function()
            w:Create(
                aC,
                TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
            ):Play()
        end
    )
    aD.MouseButton1Click:Connect(
        function()
            u.ButtonEffect()
        end
    )
    aE.Focused:Connect(
        function()
            u.ButtonEffect()
        end
    )
    aD.MouseButton1Click:Connect(
        function()
            aF = not aF
            local aG = aF and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
            game.TweenService:Create(az, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = aG}):Play(

            )
        end
    )
    local function aH()
        for a, v in next, aw:GetChildren() do
            if not v:IsA("UIListLayout") then
                v.Visible = false
            end
        end
    end
    local function aI()
        for n, B in pairs(aw:GetChildren()) do
            if not B:IsA("UIListLayout") then
                if string.find(string.lower(B.Name), string.lower(aE.Text)) then
                    B.Visible = true
                end
            end
        end
    end
    aE:GetPropertyChangedSignal("Text"):Connect(
        function()
            aH()
            aI()
        end
    )
    function t.CreateCustomColor(aJ)
        ay.Text = aJ or "Custom GUI"
        local aK = {}
        function aK.CreateSection(aL)
            local aM = Instance.new("Frame")
            local M = Instance.new("UICorner")
            local aN = Instance.new("Frame")
            local aO = Instance.new("TextLabel")
            local aP = Instance.new("Frame")
            local aQ = Instance.new("UIGradient")
            local aR = Instance.new("UIListLayout")
            local aS = aL or "Section"
            aM.Name = aL .. "Section"
            aM.Parent = aw
            aM.Size = UDim2.new(1, 0, 0, 285)
            aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            table.insert(
                c["Background 3 Color"],
                function()
                    aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                end
            )
            aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            table.insert(
                c["Background 1 Transparency"],
                function()
                    aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                end
            )
            M.CornerRadius = UDim.new(0, 4)
            M.Parent = aM
            aN.Name = "Topsec"
            aN.Parent = aM
            aN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aN.BackgroundTransparency = 1.000
            aN.Size = UDim2.new(1, 0, 0, 27)
            aO.Name = "Sectiontitle"
            aO.Parent = aN
            aO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aO.BackgroundTransparency = 1.000
            aO.Size = UDim2.new(1, 0, 1, 0)
            aO.Font = Enum.Font.GothamBold
            aO.Text = aL
            aO.TextSize = 14.000
            aO.TextColor3 = getgenv().UIColor["Section Text Color"]
            table.insert(
                c["Section Text Color"],
                function()
                    aO.TextColor3 = getgenv().UIColor["Section Text Color"]
                end
            )
            aP.Name = "Linesec"
            aP.Parent = aN
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.BorderSizePixel = 0
            aP.Position = UDim2.new(0.5, 0, 1, -2)
            aP.Size = UDim2.new(1, -10, 0, 2)
            aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
            table.insert(
                c["Section Underline Color"],
                function()
                    aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                end
            )
            aQ.Transparency =
                NumberSequence.new {
                NumberSequenceKeypoint.new(0.00, 1.00),
                NumberSequenceKeypoint.new(0.50, 0.00),
                NumberSequenceKeypoint.new(0.51, 0.02),
                NumberSequenceKeypoint.new(1.00, 1.00)
            }
            aQ.Parent = aP
            aR.Name = "SectionList"
            aR.Parent = aM
            aR.SortOrder = Enum.SortOrder.LayoutOrder
            aR.Padding = UDim.new(0, 5)
            aR:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    aM.Size = UDim2.new(1, 0, 0, aR.AbsoluteContentSize.Y + 5)
                end
            )
            local aT = {}
            function aT.CreateColorPicker(H)
                local aU =
                    setmetatable(
                    {},
                    {__index = function(p, q)
                            if q == "Cungroi" then
                                return e[H.Type].Rainbow
                            end
                        end, __newindex = function(p, q, r)
                            if q == "Cungroi" then
                                e[H.Type].Rainbow = r
                            end
                        end}
                )
                local aV, aW, aX
                local aY = H.Title or "Color Picker"
                local aZ = e[H.Type].Color or Color3.fromRGB(255, 255, 255)
                local a_ = H.Type
                local b0 = Instance.new("Frame")
                local b1 = Instance.new("UICorner")
                local b2 = Instance.new("Frame")
                local b3 = Instance.new("UICorner")
                local b4 = Instance.new("TextLabel")
                local b5 = Instance.new("Frame")
                local b6 = Instance.new("UICorner")
                local b7 = Instance.new("TextButton")
                local b8 = Instance.new("Frame")
                local b9 = Instance.new("UIGradient")
                local ba = Instance.new("Frame")
                local M = Instance.new("UICorner")
                local bb = Instance.new("Frame")
                local bc = Instance.new("Frame")
                local bd = Instance.new("TextLabel")
                local be = Instance.new("TextBox")
                local bf = Instance.new("Frame")
                local bg = Instance.new("TextLabel")
                local bh = Instance.new("TextBox")
                local bi = Instance.new("Frame")
                local bj = Instance.new("TextLabel")
                local bk = Instance.new("TextBox")
                local ag = Instance.new("UIListLayout")
                local bl = Instance.new("Frame")
                local bm = Instance.new("TextLabel")
                local bn = Instance.new("TextBox")
                local aP = Instance.new("Frame")
                local aQ = Instance.new("UIGradient")
                local bo = Instance.new("Frame")
                local bp = Instance.new("Frame")
                local bq = Instance.new("TextLabel")
                local br = Instance.new("ImageLabel")
                local bs = Instance.new("ImageLabel")
                local bt = Instance.new("TextButton")
                local bu = Instance.new("ImageLabel")
                local bv = Instance.new("Frame")
                local bw = Instance.new("UICorner")
                local bx = Instance.new("Frame")
                local by = Instance.new("Frame")
                local bz = Instance.new("TextLabel")
                local bA = Instance.new("ImageLabel")
                local bB = Instance.new("ImageLabel")
                local bC = Instance.new("TextButton")
                local bD = Instance.new("Frame")
                local bE = Instance.new("UIListLayout")
                local bF = Instance.new("Frame")
                local bG = Instance.new("UICorner")
                local bH = Instance.new("TextButton")
                local bI = Instance.new("Frame")
                local bJ = Instance.new("UICorner")
                local bK = Instance.new("TextButton")
                b0.Name = "ColorPick"
                b0.Parent = aM
                b0.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                b0.BackgroundTransparency = 1.000
                b0.ClipsDescendants = true
                b0.Position = UDim2.new(0, 0, 0.112280704, 0)
                b0.Size = UDim2.new(1, 0, 0, 35)
                b1.CornerRadius = UDim.new(0, 4)
                b1.Name = "ColorPickCorner"
                b1.Parent = b0
                b2.Name = "Background1"
                b2.Parent = b0
                b2.AnchorPoint = Vector2.new(0.5, 0.5)
                b2.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                b2.Position = UDim2.new(0.5, 0, 0.5, 0)
                b2.Size = UDim2.new(1, -10, 1, 0)
                table.insert(
                    c["Background 1 Color"],
                    function()
                        b2.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                b2.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        b2.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                b3.CornerRadius = UDim.new(0, 4)
                b3.Name = "ColorpickBGCorner"
                b3.Parent = b2
                b4.Name = "TextColor"
                b4.Parent = b2
                b4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b4.BackgroundTransparency = 1.000
                b4.Position = UDim2.new(0, 10, 0, 0)
                b4.Size = UDim2.new(1, -10, 0, 35)
                b4.Font = Enum.Font.GothamBlack
                b4.Text = aY
                b4.TextSize = 14.000
                b4.TextXAlignment = Enum.TextXAlignment.Left
                b4.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        b4.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                b5.Name = "ColorVal"
                b5.Parent = b0
                b5.AnchorPoint = Vector2.new(1, 0)
                b5.BackgroundColor3 = e[a_].Color
                b5.Position = UDim2.new(1, -10, 0, 5)
                b5.Size = UDim2.new(0, 150, 0, 25)
                b6.CornerRadius = UDim.new(0, 4)
                b6.Name = "ColorValCorner"
                b6.Parent = b5
                b7.Name = "ColorValButton"
                b7.Parent = b5
                b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b7.BackgroundTransparency = 1.000
                b7.Size = UDim2.new(1, 0, 1, 0)
                b7.Font = Enum.Font.SourceSans
                b7.Text = ""
                b7.TextColor3 = Color3.fromRGB(0, 0, 0)
                b7.TextSize = 14.000
                b8.Name = "Hue"
                b8.Parent = b0
                b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b8.BorderSizePixel = 0
                b8.Position = UDim2.new(0, 460, 0, 40)
                b8.Size = UDim2.new(0, 25, 0, 200)
                b9.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(0.17, Color3.fromRGB(235, 7, 255)),
                    ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 9, 189)),
                    ColorSequenceKeypoint.new(0.49, Color3.fromRGB(0, 193, 196)),
                    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 255, 0)),
                    ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 247, 0)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
                }
                b9.Rotation = 90
                b9.Name = "HueGra"
                b9.Parent = b8
                ba.Parent = b8
                ba.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ba.Position = UDim2.new(0, 0, 1, 0)
                ba.Size = UDim2.new(1, 0, 0, 2)
                M.CornerRadius = UDim.new(0, 4)
                M.Parent = b8
                bb.Name = "Concac"
                bb.Parent = b0
                bb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bb.BackgroundTransparency = 1.000
                bb.Position = UDim2.new(0, 495, 0, 40)
                bb.Size = UDim2.new(0, 115, 0, 100)
                bc.Name = "RFrame"
                bc.Parent = bb
                bc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bc.BackgroundTransparency = 1.000
                bc.Size = UDim2.new(1, 0, 0, 25)
                bc.LayoutOrder = 0
                bd.Name = "RText"
                bd.Parent = bc
                bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bd.BackgroundTransparency = 1.000
                bd.Size = UDim2.new(0, 25, 0, 25)
                bd.Font = Enum.Font.GothamBold
                bd.Text = "R:"
                bd.TextColor3 = Color3.fromRGB(115, 115, 115)
                bd.TextSize = 14.000
                bd.TextXAlignment = Enum.TextXAlignment.Left
                be.Name = "RBox"
                be.Parent = bc
                be.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                be.BackgroundTransparency = 1.000
                be.Position = UDim2.new(0, 25, 0, 0)
                be.Size = UDim2.new(1, -25, 1, 0)
                be.ClearTextOnFocus = false
                be.Font = Enum.Font.GothamBold
                be.Text = "255"
                be.TextColor3 = Color3.fromRGB(255, 255, 255)
                be.TextSize = 14.000
                be.TextXAlignment = Enum.TextXAlignment.Left
                bf.Name = "GFrame"
                bf.Parent = bb
                bf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bf.BackgroundTransparency = 1.000
                bf.Size = UDim2.new(1, 0, 0, 25)
                bf.LayoutOrder = 1
                bg.Name = "GText"
                bg.Parent = bf
                bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bg.BackgroundTransparency = 1.000
                bg.Size = UDim2.new(0, 25, 0, 25)
                bg.Font = Enum.Font.GothamBold
                bg.Text = "G:"
                bg.TextColor3 = Color3.fromRGB(115, 115, 115)
                bg.TextSize = 14.000
                bg.TextXAlignment = Enum.TextXAlignment.Left
                bh.Name = "GBox"
                bh.Parent = bf
                bh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bh.BackgroundTransparency = 1.000
                bh.Position = UDim2.new(0, 25, 0, 0)
                bh.Size = UDim2.new(1, -25, 1, 0)
                bh.ClearTextOnFocus = false
                bh.Font = Enum.Font.GothamBold
                bh.Text = "255"
                bh.TextColor3 = Color3.fromRGB(255, 255, 255)
                bh.TextSize = 14.000
                bh.TextXAlignment = Enum.TextXAlignment.Left
                bi.Name = "BFrame"
                bi.Parent = bb
                bi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bi.BackgroundTransparency = 1.000
                bi.Size = UDim2.new(1, 0, 0, 25)
                bi.LayoutOrder = 2
                bj.Name = "BText"
                bj.Parent = bi
                bj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bj.BackgroundTransparency = 1.000
                bj.Size = UDim2.new(0, 25, 0, 25)
                bj.Font = Enum.Font.GothamBold
                bj.Text = "B:"
                bj.TextColor3 = Color3.fromRGB(115, 115, 115)
                bj.TextSize = 14.000
                bj.TextXAlignment = Enum.TextXAlignment.Left
                bk.Name = "BBox"
                bk.Parent = bi
                bk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bk.BackgroundTransparency = 1.000
                bk.Position = UDim2.new(0, 25, 0, 0)
                bk.Size = UDim2.new(1, -25, 1, 0)
                bk.ClearTextOnFocus = false
                bk.Font = Enum.Font.GothamBold
                bk.Text = "255"
                bk.TextColor3 = Color3.fromRGB(255, 255, 255)
                bk.TextSize = 14.000
                bk.TextXAlignment = Enum.TextXAlignment.Left
                ag.Parent = bb
                ag.SortOrder = Enum.SortOrder.LayoutOrder
                bl.Name = "HexFrame"
                bl.Parent = bb
                bl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bl.BackgroundTransparency = 1.000
                bl.Size = UDim2.new(1, 0, 0, 25)
                bl.LayoutOrder = 3
                bm.Name = "HexText"
                bm.Parent = bl
                bm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bm.BackgroundTransparency = 1.000
                bm.Size = UDim2.new(0, 25, 0, 25)
                bm.Font = Enum.Font.GothamBold
                bm.Text = "#"
                bm.TextColor3 = Color3.fromRGB(115, 115, 115)
                bm.TextSize = 14.000
                bm.TextXAlignment = Enum.TextXAlignment.Left
                bn.Name = "HexBox"
                bn.Parent = bl
                bn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bn.BackgroundTransparency = 1.000
                bn.Position = UDim2.new(0, 25, 0, 0)
                bn.Size = UDim2.new(1, -25, 1, 0)
                bn.ClearTextOnFocus = false
                bn.Font = Enum.Font.GothamBold
                bn.Text = "FFFFFF"
                bn.TextColor3 = Color3.fromRGB(255, 255, 255)
                bn.TextSize = 14.000
                bn.TextXAlignment = Enum.TextXAlignment.Left
                aP.Name = "Linesec"
                aP.Parent = bb
                aP.AnchorPoint = Vector2.new(0.5, 1)
                aP.BorderSizePixel = 0
                aP.Position = UDim2.new(0.5, 0, 1, -2)
                aP.Size = UDim2.new(1, -10, 0, 2)
                aP.LayoutOrder = 4
                aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                table.insert(
                    c["Section Underline Color"],
                    function()
                        aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                    end
                )
                aQ.Transparency =
                    NumberSequence.new {
                    NumberSequenceKeypoint.new(0.00, 1.00),
                    NumberSequenceKeypoint.new(0.30, 0.25),
                    NumberSequenceKeypoint.new(0.70, 0.25),
                    NumberSequenceKeypoint.new(1.00, 1.00)
                }
                aQ.Parent = aP
                bo.Name = "CungroiF"
                bo.Parent = b0
                bo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bo.BackgroundTransparency = 1.000
                bo.Position = UDim2.new(0, 495, 0, 145)
                bo.Size = UDim2.new(0, 115, 0, 25)
                bp.Name = "CungroiFF"
                bp.Parent = bo
                bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bp.BackgroundTransparency = 1.000
                bp.Size = UDim2.new(1, 0, 0, 25)
                bp.LayoutOrder = 4
                bq.Name = "TextColor"
                bq.Parent = bp
                bq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bq.BackgroundTransparency = 1.000
                bq.Size = UDim2.new(0, 85, 0, 25)
                bq.Font = Enum.Font.GothamBold
                bq.Text = "Rainbow"
                bq.TextSize = 14.000
                bq.TextXAlignment = Enum.TextXAlignment.Left
                bq.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        bq.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                br.Name = "Setting_checkbox"
                br.Parent = bp
                br.AnchorPoint = Vector2.new(1, 0.5)
                br.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                br.BackgroundTransparency = 1.000
                br.Position = UDim2.new(1, -5, 0.5, 0)
                br.Size = UDim2.new(0, 25, 0, 25)
                br.Image = "rbxassetid://4552505888"
                br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bs.Name = "Setting_check"
                bs.Parent = br
                bs.AnchorPoint = Vector2.new(0, 1)
                bs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bs.BackgroundTransparency = 1.000
                bs.Position = UDim2.new(0, 0, 1, 0)
                bs.Image = "rbxassetid://4555411759"
                bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                bt.Name = "Cungroitog"
                bt.Parent = bp
                bt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bt.BackgroundTransparency = 1.000
                bt.Size = UDim2.new(1, 0, 1, 0)
                bt.Font = Enum.Font.SourceSans
                bt.Text = ""
                bt.TextColor3 = Color3.fromRGB(0, 0, 0)
                bt.TextSize = 14.000
                bu.Name = "Color"
                bu.Parent = b0
                bu.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                bu.BorderSizePixel = 0
                bu.Position = UDim2.new(0, 10, 0, 40)
                bu.Size = UDim2.new(0, 440, 0, 200)
                bu.Image = "rbxassetid://4155801252"
                bv.Name = "SelectorColor"
                bv.Parent = bu
                bv.AnchorPoint = Vector2.new(0.5, 0.5)
                bv.BackgroundColor3 = Color3.fromRGB(203, 203, 203)
                bv.BorderColor3 = Color3.fromRGB(70, 70, 70)
                bv.Position = UDim2.new(1, 0, 0, 0)
                bv.Size = UDim2.new(0, 4, 0, 4)
                bw.CornerRadius = UDim.new(0, 4)
                bw.Parent = bu
                bx.Name = "HoithoF"
                bx.Parent = b0
                bx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bx.BackgroundTransparency = 1.000
                bx.Position = UDim2.new(0, 495, 0, 175)
                bx.Size = UDim2.new(0, 115, 0, 25)
                bx.LayoutOrder = 5
                by.Name = "HoithoF"
                by.Parent = bx
                by.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                by.BackgroundTransparency = 1.000
                by.Size = UDim2.new(1, 0, 1, 25)
                bz.Name = "TextColor"
                bz.Parent = by
                bz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bz.BackgroundTransparency = 1.000
                bz.Size = UDim2.new(0, 85, 0, 25)
                bz.Font = Enum.Font.GothamBold
                bz.Text = "Breathing"
                bz.TextSize = 14.000
                bz.TextXAlignment = Enum.TextXAlignment.Left
                bz.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        bz.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                bA.Name = "setting_checkbox"
                bA.Parent = by
                bA.AnchorPoint = Vector2.new(1, 0)
                bA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bA.BackgroundTransparency = 1.000
                bA.Position = UDim2.new(1, -5, 0, 0)
                bA.Size = UDim2.new(0, 25, 0, 25)
                bA.Image = "rbxassetid://4552505888"
                bA.ImageColor3 = Color3.fromRGB(131, 181, 255)
                bA.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        bA.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bB.Name = "setting_check"
                bB.Parent = bA
                bB.AnchorPoint = Vector2.new(0, 1)
                bB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bB.BackgroundTransparency = 1.000
                bB.Position = UDim2.new(0, 0, 1, 0)
                bB.Image = "rbxassetid://4555411759"
                bB.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bB.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                bC.Name = "Hoithoitog"
                bC.Parent = by
                bC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bC.BackgroundTransparency = 1.000
                bC.Size = UDim2.new(1, 0, 0, 25)
                bC.Font = Enum.Font.SourceSans
                bC.Text = ""
                bC.TextColor3 = Color3.fromRGB(0, 0, 0)
                bC.TextSize = 14.000
                bD.Parent = by
                bD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bD.BackgroundTransparency = 1.000
                bD.Position = UDim2.new(0, 0, 0, 30)
                bD.Size = UDim2.new(1, 0, 0, 25)
                bE.Parent = bD
                bE.FillDirection = Enum.FillDirection.Horizontal
                bE.SortOrder = Enum.SortOrder.LayoutOrder
                bE.Padding = UDim.new(0, 5)
                bF.Name = "Cor1"
                bF.Parent = bD
                bF.BackgroundColor3 = e[a_].Breathing.Color1
                bF.Selectable = true
                bF.Size = UDim2.new(0, 25, 0, 25)
                bG.CornerRadius = UDim.new(1, 0)
                bG.Parent = bF
                bH.Name = "BCor1"
                bH.Parent = bF
                bH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bH.BackgroundTransparency = 1.000
                bH.Size = UDim2.new(1, 0, 1, 0)
                bH.Font = Enum.Font.SourceSans
                bH.Text = ""
                bH.TextColor3 = Color3.fromRGB(0, 0, 0)
                bH.TextSize = 14.000
                bI.Name = "Cor2"
                bI.Parent = bD
                bI.BackgroundColor3 = e[a_].Breathing.Color2
                bI.Selectable = true
                bI.Size = UDim2.new(0, 25, 0, 25)
                bJ.CornerRadius = UDim.new(1, 0)
                bJ.Parent = bI
                bK.Name = "BCor2"
                bK.Parent = bI
                bK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bK.BackgroundTransparency = 1.000
                bK.Size = UDim2.new(1, 0, 1, 0)
                bK.Font = Enum.Font.SourceSans
                bK.Text = ""
                bK.TextColor3 = Color3.fromRGB(0, 0, 0)
                bK.TextSize = 14.000
                local bL = false
                b7.MouseButton1Click:Connect(
                    function()
                        bL = not bL
                        local bM = bL and UDim2.new(1, 0, 0, 255) or UDim2.new(1, 0, 0, 35)
                        w:Create(b0, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Size = bM}):Play()
                    end
                )
                b7.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                local bN = game:GetService("UserInputService")
                local bO = game:GetService("RunService")
                local bP = game.Players.LocalPlayer
                local y = bP:GetMouse()
                local bQ, bR = nil, nil
                local bS = true
                local bT = 0
                local function bU(...)
                    if bS then
                        return wait(...)
                    else
                        wait()
                        return false
                    end
                end
                local function bV(g)
                    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255)}
                end
                local function bW(bX)
                    bX = bX:gsub("#", ""):upper():gsub("0X", "")
                    return Color3.fromRGB(
                        tonumber(bX:sub(1, 2), 16),
                        tonumber(bX:sub(3, 4), 16),
                        tonumber(bX:sub(5, 6), 16)
                    )
                end
                local function bY(g)
                    local bZ, b_, B =
                        string.format("%X", math.floor(g.R * 255)),
                        string.format("%X", math.floor(g.G * 255)),
                        string.format("%X", math.floor(g.B * 255))
                    if #bZ < 2 then
                        bZ = "0" .. bZ
                    end
                    if #b_ < 2 then
                        b_ = "0" .. b_
                    end
                    if #B < 2 then
                        B = "0" .. B
                    end
                    return string.format("%s%s%s", bZ, b_, B)
                end
                aV, aW, aX = 1, 1, 1
                local function c0(n, B)
                    if n > B then
                        return n, B
                    else
                        return B, n
                    end
                end
                local function c1(n, B)
                    if n + B > 255 then
                        local c2, c3 = c0(n, B)
                        local a8 = 255 - c2
                        local c4, c5 = c0(a8, c3)
                        return c4 - c5
                    else
                        return n + B
                    end
                end
                function CongColor(n, B)
                    local c6, c7 = n, B
                    local c8 = math.sqrt
                    local c9 = {}
                    c9.R = 255 - c8(((255 - c6.R) ^ 2 + (255 - c7.R) ^ 2) / 2)
                    c9.G = 255 - c8(((255 - c6.G) ^ 2 + (255 - c7.G) ^ 2) / 2)
                    c9.B = 255 - c8(((255 - c6.B) ^ 2 + (255 - c7.B) ^ 2) / 2)
                    return Color3.new(c9.R, c9.G, c9.B)
                end
                local function ca(cb)
                    local c9 = cb or Color3.fromHSV(aV, aW, aX)
                    if not c9 then
                        aW, aV, aX = cb:ToHSV()
                    end
                    bn.Text = bY(c9)
                    bu.BackgroundColor3 = Color3.fromHSV(aV, 1, 1)
                    if cb then
                        bu.BackgroundColor3 = cb
                        bv.Position = UDim2.new(cb and select(3, Color3.toHSV(cb)))
                    end
                    local cc = 1 - Color3.toHSV(c9)
                    local cd = b8.Frame.Position.Y.Scale
                    if cd ~= cc and not ((cc == 0 or cc == 1) and (cd == 1 or cd == 0)) then
                        b8.Frame.Position = UDim2.fromScale(0, cc)
                    end
                    be.Text, bh.Text, bk.Text = bV(c9)[1], bV(c9)[2], bV(c9)[3]
                    b5.BackgroundColor3 = c9
                    local ce = {}
                    getgenv().UIColor[a_] = c9
                end
                ca(e[a_].Color)
                local function cf(cg)
                    if bQ then
                        bQ = bQ:Disconnect() and nil or nil
                    end
                    if bR then
                        bR = bR:Disconnect() and nil or nil
                    end
                    if cg then
                        pcall(
                            function()
                                local ch = 1 / 255
                                while bU() and aU.Cungroi do
                                    bT = ch + bT
                                    if bT > 1 then
                                        bT = 0
                                    end
                                    aV = bT
                                    ca(Color3.fromHSV(bT, 1, 1))
                                end
                            end
                        )
                    end
                end
                local ci = aU.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                local cc = aU.Cungroi and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                local cj = aU.Cungroi and Vector2.new(.5, .5) or Vector2.new(0, 1)
                bs.Size = ci
                bs.Position = cc
                bs.AnchorPoint = cj
                spawn(
                    function()
                        cf(aU.Cungroi)
                    end
                )
                bt.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bt.MouseButton1Click:Connect(
                    function()
                        aU.Cungroi = not aU.Cungroi
                        ci = aU.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                        cc = aU.Cungroi and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                        cj = aU.Cungroi and Vector2.new(.5, .5) or Vector2.new(0, 1)
                        game.TweenService:Create(
                            bs,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                            {Size = ci, Position = cc, AnchorPoint = cj}
                        ):Play()
                        cf(aU.Cungroi)
                    end
                )
                bn.FocusLost:Connect(
                    function()
                        if #bn.Text > 5 then
                            local ck, cl = pcall(bW, bn.Text)
                            ca(ck and cl)
                        end
                    end
                )
                be.FocusLost:Connect(
                    function()
                        if tonumber(be.Text) > 255 then
                            be.Text = 255
                        elseif tonumber(be.Text) < 0 then
                            be.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                bh.FocusLost:Connect(
                    function()
                        if tonumber(bh.Text) > 255 then
                            bh.Text = 255
                        elseif tonumber(bh.Text) < 0 then
                            bh.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                bk.FocusLost:Connect(
                    function()
                        if tonumber(bk.Text) > 255 then
                            bk.Text = 255
                        elseif tonumber(bk.Text) < 0 then
                            bk.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                aV =
                    1 -
                    math.clamp(b8.Frame.AbsolutePosition.Y - b8.AbsolutePosition.Y, 0, b8.AbsoluteSize.Y) /
                        b8.AbsoluteSize.Y
                aW =
                    math.clamp(bu.SelectorColor.AbsolutePosition.X - bu.AbsolutePosition.X, 0, bu.AbsoluteSize.X) /
                    bu.AbsoluteSize.X
                aX =
                    1 -
                    math.clamp(bu.SelectorColor.AbsolutePosition.Y - bu.AbsolutePosition.Y, 0, bu.AbsoluteSize.Y) /
                        bu.AbsoluteSize.Y
                bu.InputBegan:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bQ then
                                bQ:Disconnect()
                            end
                            _ = true
                            bQ =
                                bO.RenderStepped:Connect(
                                function()
                                    local cm =
                                        math.clamp(y.X - bu.AbsolutePosition.X, 0, bu.AbsoluteSize.X) /
                                        bu.AbsoluteSize.X
                                    local cn =
                                        math.clamp(y.Y - bu.AbsolutePosition.Y, 0, bu.AbsoluteSize.Y) /
                                        bu.AbsoluteSize.Y
                                    bv.Position = UDim2.fromScale(cm, cn)
                                    aW = cm
                                    aX = 1 - cn
                                    ca()
                                end
                            )
                        end
                    end
                )
                bu.InputEnded:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bQ then
                                _ = false
                                bQ:Disconnect()
                            end
                        end
                    end
                )
                b8.InputBegan:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bR then
                                bR:Disconnect()
                            end
                            _ = true
                            bR =
                                bO.RenderStepped:Connect(
                                function()
                                    local co =
                                        math.clamp(y.Y - b8.AbsolutePosition.Y, 0, b8.AbsoluteSize.Y) /
                                        b8.AbsoluteSize.Y
                                    b8.Frame.Position = UDim2.fromScale(0, co)
                                    aV = 1 - co
                                    ca()
                                end
                            )
                        end
                    end
                )
                b8.InputEnded:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bR then
                                _ = false
                                bR:Disconnect()
                            end
                        end
                    end
                )
                bH.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bK.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bH.MouseButton1Click:Connect(
                    function()
                        bF.BackgroundColor3 = b5.BackgroundColor3
                        e[a_].Breathing.Color1 = b5.BackgroundColor3
                    end
                )
                bK.MouseButton1Click:Connect(
                    function()
                        bI.BackgroundColor3 = b5.BackgroundColor3
                        e[a_].Breathing.Color2 = b5.BackgroundColor3
                    end
                )
                bC.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                local cp = false
                spawn(
                    function()
                        while wait() do
                            if e[a_].Breathing.Toggle then
                                ca(b5.BackgroundColor3)
                            end
                        end
                    end
                )
                local function cq()
                    local cr, cs = bI.BackgroundColor3, bF.BackgroundColor3
                    local ci = e[a_].Breathing.Toggle and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                    local cc = e[a_].Breathing.Toggle and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                    local cj = e[a_].Breathing.Toggle and Vector2.new(.5, .5) or Vector2.new(0, 1)
                    game.TweenService:Create(
                        bB,
                        TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                        {Size = ci, Position = cc, AnchorPoint = cj}
                    ):Play()
                    if e[a_].Breathing.Toggle then
                        local ct = game.TweenService:Create(b5, TweenInfo.new(2), {BackgroundColor3 = cs})
                        local cu = game.TweenService:Create(bu, TweenInfo.new(2), {BackgroundColor3 = cs})
                        ct:Play()
                        cu:Play()
                        ct.Completed:Connect(
                            function()
                                if e[a_].Breathing.Toggle then
                                    local cv = game.TweenService:Create(b5, TweenInfo.new(2), {BackgroundColor3 = cr})
                                    local cw = game.TweenService:Create(bu, TweenInfo.new(2), {BackgroundColor3 = cr})
                                    cv:Play()
                                    cw:Play()
                                    if e[a_].Breathing.Toggle then
                                        cv.Completed:Connect(
                                            function()
                                                ct:Play()
                                                cu:Play()
                                            end
                                        )
                                    end
                                end
                            end
                        )
                    end
                end
                spawn(
                    function()
                        cq()
                    end
                )
                bC.MouseButton1Click:Connect(
                    function()
                        e[a_].Breathing.Toggle = not e[a_].Breathing.Toggle
                        cq()
                    end
                )
            end
            function aT.CreateBox(H)
                local cx = tostring(H.Title) or ""
                local cy = tostring(H.Placeholder) or ""
                local aZ = getgenv().UIColor[H.Type] or ""
                local cz = Instance.new("Frame")
                local cA = Instance.new("UICorner")
                local cB = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local cD = Instance.new("TextLabel")
                local cE = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local cG = Instance.new("TextBox")
                local cH = Instance.new("Frame")
                cz.Name = "BoxFrame"
                cz.Parent = aM
                cz.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cz.BackgroundTransparency = 1.000
                cz.Position = UDim2.new(0, 0, 0.208333328, 0)
                cz.Size = UDim2.new(1, 0, 0, 60)
                cA.CornerRadius = UDim.new(0, 4)
                cA.Name = "BoxCorner"
                cA.Parent = cz
                cB.Name = "Background1"
                cB.Parent = cz
                cB.AnchorPoint = Vector2.new(0.5, 0.5)
                cB.Position = UDim2.new(0.5, 0, 0.5, 0)
                cB.Size = UDim2.new(1, -10, 1, 0)
                cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = cB
                cD.Name = "TextColor"
                cD.Parent = cB
                cD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cD.BackgroundTransparency = 1.000
                cD.Position = UDim2.new(0, 10, 0, 0)
                cD.Size = UDim2.new(1, -10, 0.5, 0)
                cD.Font = Enum.Font.GothamBlack
                cD.Text = cx
                cD.TextSize = 14.000
                cD.TextXAlignment = Enum.TextXAlignment.Left
                cD.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cD.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cE.Name = "Background2"
                cE.Parent = cB
                cE.AnchorPoint = Vector2.new(1, 0.5)
                cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                cE.ClipsDescendants = true
                cE.Position = UDim2.new(1, -5, 0, 40)
                cE.Size = UDim2.new(1, -10, 0, 25)
                table.insert(
                    c["Text Color"],
                    function()
                        cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = cE
                cG.Name = "TextColorPlaceholder"
                cG.Parent = cE
                cG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cG.BackgroundTransparency = 1.000
                cG.Position = UDim2.new(0, 5, 0, 0)
                cG.Size = UDim2.new(1, -5, 1, 0)
                cG.Font = Enum.Font.GothamBold
                cG.PlaceholderText = cy
                cG.Text = ""
                cG.TextSize = 14.000
                cG.TextXAlignment = Enum.TextXAlignment.Left
                cG.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                cG.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Placeholder Text Color"],
                    function()
                        cG.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                    end
                )
                table.insert(
                    c["Text Color"],
                    function()
                        cG.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cH.Name = "Setting_Lineeeee"
                cH.Parent = cE
                cH.BackgroundTransparency = 1.000
                cH.Position = UDim2.new(0, 0, 1, -2)
                cH.Size = UDim2.new(1, 0, 0, 6)
                cH.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"]
                table.insert(
                    c["Textbox Highlight Color"],
                    function()
                        cH.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"]
                    end
                )
                cG.Focused:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                )
                cG.Focused:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                cG.FocusLost:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 1}
                        ):Play()
                        if cG.Text ~= "" then
                            getgenv().UIColor[H.Type] = cG.Text
                            if H.Type == "Background Image" then
                                u.ReloadMain(cG.Text)
                            end
                        end
                    end
                )
                local cI = {}
                if aZ then
                    cG.Text = aZ
                    getgenv().UIColor[H.Type] = aZ
                end
                function cI.SetValue(r)
                    cG.Text = r
                    getgenv().UIColor[H.Type] = r
                end
                return cI
            end
            function aT.CreateSlider(H)
                local cx = tostring(H.Title) or ""
                local cJ = tonumber(H.Min) or 0
                local cK = tonumber(H.Max) or 100
                local cL = H.Precise or false
                local cM = getgenv().UIColor[H.Type] or 0
                local cN = function(v)
                    getgenv().UIColor[H.Type] = v
                end
                local cO = 600
                local cP = Instance.new("Frame")
                local cQ = Instance.new("UICorner")
                local cR = Instance.new("Frame")
                local cS = Instance.new("UICorner")
                local cT = Instance.new("TextLabel")
                local cU = Instance.new("Frame")
                local cV = Instance.new("TextButton")
                local cW = Instance.new("UICorner")
                local cX = Instance.new("Frame")
                local cY = Instance.new("UICorner")
                local cZ = Instance.new("Frame")
                local c_ = Instance.new("UICorner")
                local d0 = Instance.new("TextBox")
                cP.Name = cx .. "buda"
                cP.Parent = aM
                cP.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cP.BackgroundTransparency = 1.000
                cP.Position = UDim2.new(0, 0, 0.208333328, 0)
                cP.Size = UDim2.new(1, 0, 0, 50)
                cQ.CornerRadius = UDim.new(0, 4)
                cQ.Name = "SliderCorner"
                cQ.Parent = cP
                cR.Name = "Background1"
                cR.Parent = cP
                cR.AnchorPoint = Vector2.new(0.5, 0.5)
                cR.Position = UDim2.new(0.5, 0, 0.5, 0)
                cR.Size = UDim2.new(1, -10, 1, 0)
                cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cS.CornerRadius = UDim.new(0, 4)
                cS.Name = "SliderBGCorner"
                cS.Parent = cR
                cT.Name = "TextColor"
                cT.Parent = cR
                cT.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cT.BackgroundTransparency = 1.000
                cT.Position = UDim2.new(0, 10, 0, 0)
                cT.Size = UDim2.new(1, -10, 0, 25)
                cT.Font = Enum.Font.GothamBlack
                cT.Text = cx
                cT.TextSize = 14.000
                cT.TextXAlignment = Enum.TextXAlignment.Left
                cT.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cT.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cU.Name = "SliderBar"
                cU.Parent = cP
                cU.AnchorPoint = Vector2.new(.5, 0.5)
                cU.Position = UDim2.new(.5, 0, 0.5, 14)
                cU.Size = UDim2.new(0, 600, 0, 6)
                cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cV.Name = "SliderButton "
                cV.Parent = cU
                cV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cV.BackgroundTransparency = 1.000
                cV.Size = UDim2.new(1, 0, 1, 0)
                cV.Font = Enum.Font.GothamBold
                cV.Text = ""
                cV.TextColor3 = Color3.fromRGB(230, 230, 230)
                cV.TextSize = 14.000
                cW.CornerRadius = UDim.new(1, 0)
                cW.Name = "SliderBarCorner"
                cW.Parent = cU
                cX.Name = "Bar"
                cX.BorderSizePixel = 0
                cX.Parent = cU
                cX.Size = UDim2.new(0, 0, 1, 0)
                cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                table.insert(
                    c["Slider Line Color"],
                    function()
                        cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                    end
                )
                cY.CornerRadius = UDim.new(1, 0)
                cY.Name = "BarCorner"
                cY.Parent = cX
                cZ.Name = "Background2"
                cZ.Parent = cP
                cZ.AnchorPoint = Vector2.new(1, 0)
                cZ.Position = UDim2.new(1, -10, 0, 5)
                cZ.Size = UDim2.new(0, 150, 0, 25)
                cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                c_.CornerRadius = UDim.new(0, 4)
                c_.Name = "Sliderbox"
                c_.Parent = cZ
                d0.Name = "TextColor"
                d0.Parent = cZ
                d0.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                d0.BackgroundTransparency = 1.000
                d0.Size = UDim2.new(1, 0, 1, 0)
                d0.Font = Enum.Font.GothamBold
                d0.Text = ""
                d0.TextSize = 14.000
                d0.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        d0.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cV.MouseEnter:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"]}
                        ):Play()
                    end
                )
                cV.MouseLeave:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}
                        ):Play()
                    end
                )
                local y = game.Players.LocalPlayer:GetMouse()
                if cM then
                    if cM <= cJ then
                        cM = cJ
                    elseif cM >= cK then
                        cM = cK
                    end
                    cX.Size = UDim2.new(1 - (cK - cM) / (cK - cJ), 0, 0, 6)
                    d0.Text = cM
                    cN(cM)
                end
                cV.MouseButton1Down:Connect(
                    function()
                        local d1 =
                            cL and
                            tonumber(
                                string.format(
                                    "%.1f",
                                    (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                )
                            ) or
                            math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                        pcall(
                            function()
                                cN(d1)
                                d0.Text = d1
                            end
                        )
                        cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                        moveconnection =
                            y.Move:Connect(
                            function()
                                local d1 =
                                    cL and
                                    tonumber(
                                        string.format(
                                            "%.1f",
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    ) or
                                    math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                                pcall(
                                    function()
                                        cN(d1)
                                        d0.Text = d1
                                    end
                                )
                                cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                            end
                        )
                        releaseconnection =
                            x.InputEnded:Connect(
                            function(d2)
                                if d2.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local d1 =
                                        cL and
                                        tonumber(
                                            string.format(
                                                "%.1f",
                                                (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                            )
                                        ) or
                                        math.floor(
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    pcall(
                                        function()
                                            cN(d1)
                                            d0.Text = d1
                                        end
                                    )
                                    cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                )
                local function d3(r)
                    if tonumber(r) <= cJ then
                        cX.Size = UDim2.new(0, 0 * cO, 0, 6)
                        d0.Text = cJ
                        cN(tonumber(cJ))
                    elseif tonumber(r) >= cK then
                        cX.Size = UDim2.new(0, cK / cK * cO, 0, 6)
                        d0.Text = cK
                        cN(tonumber(cK))
                    else
                        cX.Size = UDim2.new(1 - (cK - r) / (cK - cJ), 0, 0, 6)
                        cN(tonumber(r))
                    end
                end
                d0.FocusLost:Connect(
                    function()
                        d3(d0.Text)
                    end
                )
                local d4 = {}
                function d4.SetValue(r)
                    d3(r)
                end
                return d4
            end
            return aT
        end
        return aK
    end
    local d5 = t.CreateCustomColor()
    local d6 = d5.CreateSection("Main")
    d6.CreateColorPicker({Title = "Border Color", Type = "Border Color"})
    d6.CreateColorPicker({Title = "Click Effect Color", Type = "Click Effect Color"})
    d6.CreateColorPicker({Title = "Setting Icon Color", Type = "Setting Icon Color"})
    d6.CreateBox({Title = "Logo Image", Placeholder = "URL Here (PNG only), Recommended 128x128", Type = "Logo Image"})
    local d7 = d5.CreateSection("Search")
    d7.CreateColorPicker({Title = "Search Icon Color", Type = "Search Icon Color"})
    d7.CreateColorPicker({Title = "Search Icon Highlight Color", Type = "Search Icon Highlight Color"})
    local d8 = d5.CreateSection("Text")
    d8.CreateColorPicker({Title = "GUI Text Color", Type = "GUI Text Color"})
    d8.CreateColorPicker({Title = "Text Color", Type = "Text Color"})
    d8.CreateColorPicker({Title = "Placeholder Text Color", Type = "Placeholder Text Color"})
    d8.CreateColorPicker({Title = "Title Text Color", Type = "Title Text Color"})
    local d9 = d5.CreateSection("Background")
    d9.CreateColorPicker({Title = "Background 1 Color", Type = "Background 1 Color"})
    d9.CreateSlider(
        {
            Title = "Background 1 Transparency",
            Type = "Background 1 Transparency",
            Min = 0,
            Max = 1,
            Default = 0,
            Precise = true
        }
    )
    d9.CreateColorPicker({Title = "Background 2 Color", Type = "Background 2 Color"})
    d9.CreateColorPicker({Title = "Background 3 Color", Type = "Background 3 Color"})
    d9.CreateBox(
        {
            Title = "Background Image",
            Placeholder = "URL Here (WEBM / PNG only), Recommended 1280x720",
            Type = "Background Image"
        }
    )
    local da = d5.CreateSection("Page")
    da.CreateColorPicker({Title = "Page Selected Color", Type = "Page Selected Color"})
    local db = d5.CreateSection("Section")
    db.CreateColorPicker({Title = "Section Text Color", Type = "Section Text Color"})
    db.CreateColorPicker({Title = "Section Underline Color", Type = "Section Underline Color"})
    local dc = d5.CreateSection("Toggle")
    dc.CreateColorPicker({Title = "Toggle Border Color", Type = "Toggle Border Color"})
    dc.CreateColorPicker({Title = "Toggle Checked Color", Type = "Toggle Checked Color"})
    dc.CreateColorPicker({Title = "Toggle Desc Color", Type = "Toggle Desc Color"})
    local dd = d5.CreateSection("Button")
    dd.CreateColorPicker({Title = "Button Color", Type = "Button Color"})
    local dd = d5.CreateSection("Label")
    dd.CreateColorPicker({Title = "Label Color", Type = "Label Color"})
    local de = d5.CreateSection("Dropdown")
    de.CreateColorPicker({Title = "Dropdown Icon Color", Type = "Dropdown Icon Color"})
    de.CreateColorPicker({Title = "Dropdown Selected Color", Type = "Dropdown Selected Color"})
    local df = d5.CreateSection("Textbox")
    df.CreateColorPicker({Title = "Textbox Highlight Color", Type = "Textbox Highlight Color"})
    local dg = d5.CreateSection("Box")
    dg.CreateColorPicker({Title = "Box Highlight Color", Type = "Box Highlight Color"})
    local dh = d5.CreateSection("Slider")
    dh.CreateColorPicker({Title = "Slider Line Color", Type = "Slider Line Color"})
    dh.CreateColorPicker({Title = "Slider Highlight Color", Type = "Slider Highlight Color"})
    local di = d5.CreateSection("Animation")
    di.CreateSlider(
        {
            Title = "Tween Animation 1 Speed",
            Type = "Tween Animation 1 Speed",
            Min = 0,
            Max = 0.75,
            Default = 0.25,
            Precise = true
        }
    )
    di.CreateSlider(
        {
            Title = "Tween Animation 2 Speed",
            Type = "Tween Animation 2 Speed",
            Min = 0,
            Max = 1,
            Default = 0.5,
            Precise = true
        }
    )
    di.CreateSlider(
        {
            Title = "Tween Animation 3 Speed",
            Type = "Tween Animation 3 Speed",
            Min = 0,
            Max = 0.5,
            Default = 0.1,
            Precise = true
        }
    )
    local dj = {}
    local dk = -1
    local dl = -1
    local dm = 1
    function dj.CreatePage(H)
        local dn = tostring(H.Page_Name)
        local dp = tostring(H.Page_Title)
        dl = dl + 1
        dk = dk + 1
        local dq = Instance.new("Frame")
        local ba = Instance.new("Frame")
        local dr = Instance.new("UICorner")
        local ds = Instance.new("Frame")
        local dt = Instance.new("Frame")
        local du = Instance.new("UICorner")
        local dv = Instance.new("Frame")
        local dw = Instance.new("TextLabel")
        local dx = Instance.new("TextButton")
        dq.Name = dn .. "_Control"
        dq.Parent = af
        dq.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dq.BackgroundTransparency = 1.000
        dq.Size = UDim2.new(1, -10, 0, 25)
        dq.LayoutOrder = dk
        ba.Parent = dq
        ba.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        ba.BackgroundTransparency = 1.000
        ba.Position = UDim2.new(0, 5, 0, 0)
        ba.Size = UDim2.new(1, -5, 1, 0)
        dr.CornerRadius = UDim.new(0, 4)
        dr.Name = "TabNameCorner"
        dr.Parent = ba
        ds.Name = "Line"
        ds.Parent = ba
        ds.AnchorPoint = Vector2.new(0, 0.5)
        ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        ds.BackgroundTransparency = 1.000
        ds.Position = UDim2.new(0, 0, 0.5, 0)
        ds.Size = UDim2.new(0, 14, 1, 0)
        dt.Name = "PageInLine"
        dt.Parent = ds
        dt.AnchorPoint = Vector2.new(0.5, 0.5)
        dt.BorderSizePixel = 0
        dt.Position = UDim2.new(0.5, 0, 0.5, 0)
        dt.Size = UDim2.new(1, -10, 0, 0)
        dt.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
        table.insert(
            c["Page Selected Color"],
            function()
                dt.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
            end
        )
        du.Name = "LineCorner"
        du.Parent = dt
        dv.Name = "TabTitleContainer"
        dv.Parent = ba
        dv.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dv.BackgroundTransparency = 1.000
        dv.Position = UDim2.new(0, 15, 0, 0)
        dv.Size = UDim2.new(1, -15, 1, 0)
        dw.Name = "GUITextColor"
        dw.Parent = dv
        dw.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dw.BackgroundTransparency = 1.000
        dw.Size = UDim2.new(1, 0, 1, 0)
        dw.Font = Enum.Font.GothamBold
        dw.Text = dn
        dw.TextColor3 = Color3.fromRGB(230, 230, 230)
        dw.TextSize = 14.000
        dw.TextXAlignment = Enum.TextXAlignment.Left
        dw.TextColor3 = getgenv().UIColor["GUI Text Color"]
        table.insert(
            c["GUI Text Color"],
            function()
                dw.TextColor3 = getgenv().UIColor["GUI Text Color"]
            end
        )
        dx.Name = "PageButton"
        dx.Parent = dq
        dx.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dx.BackgroundTransparency = 1.000
        dx.Size = UDim2.new(1, 0, 1, 0)
        dx.Font = Enum.Font.SourceSans
        dx.Text = ""
        dx.TextColor3 = Color3.fromRGB(0, 0, 0)
        dx.TextSize = 14.000
        local dy = Instance.new("Frame")
        local M = Instance.new("UICorner")
        local dz = Instance.new("TextLabel")
        local dA = Instance.new("ScrollingFrame")
        local dB = Instance.new("UIListLayout")
        local dC = dm
        dm = dm + 1
        dy.Name = "Page" .. dC
        dy.Parent = ai
        dy.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        dy.Position = UDim2.new(0, 190, 0, 30)
        dy.Size = UDim2.new(0, 435, 0, 325)
        dy.LayoutOrder = dl
        table.insert(
            c["Background 1 Color"],
            function()
                dy.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
            end
        )
        dy.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        table.insert(
            c["Background 1 Transparency"],
            function()
                dy.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            end
        )
        M.CornerRadius = UDim.new(0, 4)
        M.Parent = dy
        dz.Name = "GUITextColor"
        dz.Parent = dy
        dz.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dz.BackgroundTransparency = 1.000
        dz.Position = UDim2.new(0, 5, 0, 0)
        dz.Size = UDim2.new(1, 0, 0, 25)
        dz.Font = Enum.Font.GothamBold
        dz.Text = dp
        dz.TextSize = 16.000
        dz.TextXAlignment = Enum.TextXAlignment.Left
        dz.TextColor3 = getgenv().UIColor["GUI Text Color"]
        table.insert(
            c["GUI Text Color"],
            function()
                dz.TextColor3 = getgenv().UIColor["GUI Text Color"]
            end
        )
        dA.Name = "PageList"
        dA.Parent = dy
        dA.Active = true
        dA.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dA.BackgroundTransparency = 1.000
        dA.BorderColor3 = Color3.fromRGB(27, 42, 53)
        dA.BorderSizePixel = 0
        dA.Position = UDim2.new(0, 5, 0, 30)
        dA.Size = UDim2.new(1, -10, 1, -30)
        dA.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        dA.ScrollBarThickness = 5
        dA.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        dB.Name = "Pagelistlayout"
        dB.Parent = dA
        dB.SortOrder = Enum.SortOrder.LayoutOrder
        dB.Padding = UDim.new(0, 5)
        dB:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                dA.CanvasSize = UDim2.new(0, 0, 0, dB.AbsoluteContentSize.Y + 5)
            end
        )
        local dD = Instance.new("Frame")
        local aA = Instance.new("UICorner")
        local aB = Instance.new("Frame")
        local aC = Instance.new("ImageLabel")
        local aD = Instance.new("TextButton")
        local dE = Instance.new("TextBox")
        dD.Name = "Background2"
        dD.Parent = dy
        dD.AnchorPoint = Vector2.new(1, 0)
        dD.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
        dD.Position = UDim2.new(1, -5, 0, 5)
        dD.Size = UDim2.new(0, 20, 0, 20)
        dD.ClipsDescendants = true
        table.insert(
            c["Background 2 Color"],
            function()
                dD.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
            end
        )
        aA.CornerRadius = UDim.new(0, 2)
        aA.Name = "PageSearchCorner"
        aA.Parent = dD
        aB.Name = "SearchFrame"
        aB.Parent = dD
        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aB.BackgroundTransparency = 1.000
        aB.Size = UDim2.new(0, 20, 0, 20)
        aC.Name = "SearchIcon"
        aC.Parent = aB
        aC.AnchorPoint = Vector2.new(0.5, 0.5)
        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aC.BackgroundTransparency = 1.000
        aC.Position = UDim2.new(0.5, 0, 0.5, 0)
        aC.Size = UDim2.new(0, 16, 0, 16)
        aC.Image = "rbxassetid://8154282545"
        aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        table.insert(
            c["Search Icon Color"],
            function()
                aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
            end
        )
        aD.Name = "active"
        aD.Parent = aB
        aD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aD.BackgroundTransparency = 1.000
        aD.Size = UDim2.new(1, 0, 1, 0)
        aD.Font = Enum.Font.SourceSans
        aD.Text = ""
        aD.TextColor3 = Color3.fromRGB(0, 0, 0)
        aD.TextSize = 14.000
        dE.Name = "TextColorPlaceholder"
        dE.Parent = dD
        dE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        dE.BackgroundTransparency = 1.000
        dE.Position = UDim2.new(0, 30, 0, 0)
        dE.Size = UDim2.new(1, -30, 1, 0)
        dE.Font = Enum.Font.GothamBold
        dE.Text = ""
        dE.TextSize = 14.000
        dE.TextXAlignment = Enum.TextXAlignment.Left
        dE.PlaceholderText = "Search Section name"
        dE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
        dE.TextColor3 = getgenv().UIColor["Text Color"]
        table.insert(
            c["Placeholder Text Color"],
            function()
                dE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
            end
        )
        table.insert(
            c["Text Color"],
            function()
                dE.TextColor3 = getgenv().UIColor["Text Color"]
            end
        )
        local dF = false
        aD.MouseEnter:Connect(
            function()
                w:Create(
                    aC,
                    TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                    {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
                ):Play()
            end
        )
        aD.MouseLeave:Connect(
            function()
                w:Create(
                    aC,
                    TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                    {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
                ):Play()
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                u.ButtonEffect()
            end
        )
        dE.Focused:Connect(
            function()
                u.ButtonEffect()
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                dF = not dF
                local aG = dF and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
                game.TweenService:Create(dD, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = aG}):Play(

                )
            end
        )
        local function dG()
            for a, v in next, dA:GetChildren() do
                if not v:IsA("UIListLayout") then
                    v.Visible = false
                end
            end
        end
        local function dH()
            for n, B in pairs(dA:GetChildren()) do
                if not B:IsA("UIListLayout") then
                    if string.find(string.lower(B.Name), string.lower(dE.Text)) then
                        B.Visible = true
                    end
                end
            end
        end
        dE:GetPropertyChangedSignal("Text"):Connect(
            function()
                dG()
                dH()
            end
        )
        for a, v in pairs(af:GetChildren()) do
            if not v:IsA("UIListLayout") then
                if a == 2 then
                    v.Frame.Line.PageInLine.Size = UDim2.new(1, -10, 1, -10)
                    oldlay = v.LayoutOrder
                    oldobj = v
                end
            end
        end
        dx.MouseButton1Click:Connect(
            function()
                spawn(
                    function()
                        u.ButtonEffect()
                    end
                )
                if tostring(aj.CurrentPage) == dy.Name then
                    return
                end
                for a, v in pairs(ai:GetChildren()) do
                    if not v:IsA("UIPageLayout") and not v:IsA("UICorner") then
                        v.Visible = false
                    end
                end
                dy.Visible = true
                aj:JumpTo(dy)
                for a, v in next, af:GetChildren() do
                    if not v:IsA("UIListLayout") then
                        if v.Name == dn .. "_Control" then
                            if v.LayoutOrder > oldlay then
                                oldobj.Active = false
                                w:Create(
                                    oldobj.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 0, 0),
                                        Position = UDim2.new(0.5, 0, 1, 0),
                                        AnchorPoint = Vector2.new(.5, 1)
                                    }
                                ):Play()
                                v.Frame.Line.PageInLine.Position = UDim2.new(0.5, 0, 0, 0)
                                v.Frame.Line.PageInLine.AnchorPoint = Vector2.new(.5, 0)
                                wait(getgenv().UIColor["Tween Animation 1 Speed"])
                                w:Create(
                                    v.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 1, -10),
                                        Position = UDim2.new(0.5, 0, .5, 0),
                                        AnchorPoint = Vector2.new(.5, .5)
                                    }
                                ):Play()
                                v.Active = true
                                oldobj = v
                                oldlay = v.LayoutOrder
                            else
                                oldobj.Active = false
                                w:Create(
                                    oldobj.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 0, 0),
                                        Position = UDim2.new(0.5, 0, 0, 0),
                                        AnchorPoint = Vector2.new(.5, 0)
                                    }
                                ):Play()
                                v.Frame.Line.PageInLine.Position = UDim2.new(0.5, 0, 1, 0)
                                v.Frame.Line.PageInLine.AnchorPoint = Vector2.new(.5, 1)
                                wait(getgenv().UIColor["Tween Animation 1 Speed"])
                                w:Create(
                                    v.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 1, -10),
                                        Position = UDim2.new(0.5, 0, .5, 0),
                                        AnchorPoint = Vector2.new(.5, .5)
                                    }
                                ):Play()
                                v.Active = true
                                oldobj = v
                                oldlay = v.LayoutOrder
                            end
                        end
                    end
                end
            end
        )
        local dI = {}
        function dI.CreateSection(aL)
            local aM = Instance.new("Frame")
            local M = Instance.new("UICorner")
            local aN = Instance.new("Frame")
            local aO = Instance.new("TextLabel")
            local aP = Instance.new("Frame")
            local aQ = Instance.new("UIGradient")
            local aR = Instance.new("UIListLayout")
            aM.Name = aL .. "_Dot"
            aM.Parent = dA
            aM.Size = UDim2.new(0, 415, 0, 100)
            aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            table.insert(
                c["Background 3 Color"],
                function()
                    aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                end
            )
            aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            table.insert(
                c["Background 1 Transparency"],
                function()
                    aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                end
            )
            M.CornerRadius = UDim.new(0, 4)
            M.Parent = aM
            aN.Name = "Topsec"
            aN.Parent = aM
            aN.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            aN.BackgroundTransparency = 1.000
            aN.Size = UDim2.new(0, 415, 0, 30)
            aO.Name = "Sectiontitle"
            aO.Parent = aN
            aO.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            aO.BackgroundTransparency = 1.000
            aO.Size = UDim2.new(1, 0, 1, 0)
            aO.Font = Enum.Font.GothamBold
            aO.Text = aL
            aO.TextSize = 14.000
            aO.TextColor3 = getgenv().UIColor["Section Text Color"]
            table.insert(
                c["Section Text Color"],
                function()
                    aO.TextColor3 = getgenv().UIColor["Section Text Color"]
                end
            )
            aP.Name = "Linesec"
            aP.Parent = aN
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.BorderSizePixel = 0
            aP.Position = UDim2.new(0.5, 0, 1, -2)
            aP.Size = UDim2.new(1, -10, 0, 2)
            aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
            table.insert(
                c["Section Underline Color"],
                function()
                    aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                end
            )
            aQ.Transparency =
                NumberSequence.new {
                NumberSequenceKeypoint.new(0.00, 1.00),
                NumberSequenceKeypoint.new(0.50, 0.00),
                NumberSequenceKeypoint.new(0.51, 0.02),
                NumberSequenceKeypoint.new(1.00, 1.00)
            }
            aQ.Parent = aP
            aR.Name = "SectionList"
            aR.Parent = aM
            aR.SortOrder = Enum.SortOrder.LayoutOrder
            aR.Padding = UDim.new(0, 5)
            aR:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    aM.Size = UDim2.new(1, -5, 0, aR.AbsoluteContentSize.Y + 5)
                end
            )
            local dJ = {}
            function dJ.CreateToggle(H, cN)
                local aY = tostring(H.Title)
                local I = H.Desc
                local aZ = H.Default
                local cN = cN or function()
                    end
                local dK = Instance.new("Frame")
                local dL = Instance.new("Frame")
                local br = Instance.new("ImageLabel")
                local bs = Instance.new("ImageLabel")
                local dM = Instance.new("TextLabel")
                local dN = Instance.new("TextLabel")
                local dO = Instance.new("Frame")
                local dP = Instance.new("UICorner")
                local dQ = Instance.new("TextButton")
                local dR = Instance.new("UIListLayout")
                dK.Name = "ToggleFrame"
                dK.Parent = aM
                dK.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dK.BackgroundTransparency = 1.000
                dK.Position = UDim2.new(0, 0, 0.300000012, 0)
                dK.Size = UDim2.new(1, 0, 0, 0)
                dK.AutomaticSize = Enum.AutomaticSize.Y
                dL.Name = "TogFrame1"
                dL.Parent = dK
                dL.AnchorPoint = Vector2.new(0.5, 0.5)
                dL.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dL.BackgroundTransparency = 1.000
                dL.Position = UDim2.new(0.5, 0, 0.5, 0)
                dL.Size = UDim2.new(1, -10, 0, 0)
                dL.AutomaticSize = Enum.AutomaticSize.Y
                br.Name = "checkbox"
                br.Parent = dL
                br.AnchorPoint = Vector2.new(1, 0.5)
                br.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                br.BackgroundTransparency = 1.000
                br.Position = UDim2.new(1, -5, 0.5, 3)
                br.Size = UDim2.new(0, 25, 0, 25)
                br.Image = "rbxassetid://4552505888"
                br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bs.Name = "check"
                bs.Parent = br
                bs.AnchorPoint = Vector2.new(0, 1)
                bs.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                bs.BackgroundTransparency = 1.000
                bs.Position = UDim2.new(0, 0, 1, 0)
                bs.Image = "rbxassetid://4555411759"
                bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                local cac = 5
                if I then
                    cac = 0
                    dM.Name = "ToggleDesc"
                    dM.Parent = dL
                    dM.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    dM.BackgroundTransparency = 1.000
                    dM.Position = UDim2.new(0, 15, 0, 20)
                    dM.Size = UDim2.new(1, -50, 0, 0)
                    dM.Font = Enum.Font.GothamBlack
                    dM.Text = I
                    dM.TextSize = 13.000
                    dM.TextWrapped = true
                    dM.TextXAlignment = Enum.TextXAlignment.Left
                    dM.RichText = true
                    dM.AutomaticSize = Enum.AutomaticSize.Y
                    dM.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                    table.insert(
                        c["Toggle Desc Color"],
                        function()
                            dM.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                        end
                    )
                else
                    dM.Text = ""
                end
                dN.Name = "TextColor"
                dN.Parent = dL
                dN.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dN.BackgroundTransparency = 1.000
                dN.Position = UDim2.new(0, 10, 0, cac)
                dN.Size = UDim2.new(1, -10, 0, 20)
                dN.Font = Enum.Font.GothamBlack
                dN.Text = aY
                dN.TextSize = 14.000
                dN.TextXAlignment = Enum.TextXAlignment.Left
                dN.TextYAlignment = Enum.TextYAlignment.Center
                dN.RichText = true
                dN.AutomaticSize = Enum.AutomaticSize.Y
                dN.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        dN.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                dO.Name = "Background1"
                dO.Parent = dL
                dO.Size = UDim2.new(1, 0, 1, 6)
                dO.ZIndex = 0
                dO.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        dO.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                dO.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        dO.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                dP.CornerRadius = UDim.new(0, 4)
                dP.Name = "ToggleCorner"
                dP.Parent = dO
                dQ.Name = "ToggleButton"
                dQ.Parent = dL
                dQ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dQ.BackgroundTransparency = 1.000
                dQ.Size = UDim2.new(1, 0, 1, 6)
                dQ.Font = Enum.Font.SourceSans
                dQ.Text = ""
                dQ.TextColor3 = Color3.fromRGB(0, 0, 0)
                dQ.TextSize = 14.000
                dR.Name = "ToggleList"
                dR.Parent = dK
                dR.HorizontalAlignment = Enum.HorizontalAlignment.Center
                dR.SortOrder = Enum.SortOrder.LayoutOrder
                dR.VerticalAlignment = Enum.VerticalAlignment.Center
                dR.Padding = UDim.new(0, 5)
                local function dS(dT)
                    local ci = dT and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                    local cc = dT and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                    local cj = dT and Vector2.new(.5, .5) or Vector2.new(0, 1)
                    game.TweenService:Create(
                        bs,
                        TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                        {Size = ci, Position = cc, AnchorPoint = cj}
                    ):Play()
                    cN(dT)
                end
                if cN then
                    dS(aZ)
                end
                dQ.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                dQ.MouseButton1Down:Connect(
                    function()
                        aZ = not aZ
                        dS(aZ)
                    end
                )
                local dU = {}
                function dU.SetStage(d1)
                    dS(d1)
                end
                return dU
            end
            function dJ.CreateButton(H, cN)
                local aY = H.Title
                local cN = cN or function()
                    end
                local dV = Instance.new("Frame")
                local dW = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local dX = Instance.new("TextLabel")
                local dY = Instance.new("TextButton")
                dV.Name = aY .. "dot"
                dV.Parent = aM
                dV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dV.BackgroundTransparency = 1.000
                dV.Position = UDim2.new(0, 0, 0.300000012, 0)
                dV.Size = UDim2.new(1, 0, 0, 25)
                dW.Name = "ButtonBG"
                dW.Parent = dV
                dW.AnchorPoint = Vector2.new(0.5, 0.5)
                dW.Position = UDim2.new(0.5, 0, 0.5, 0)
                dW.Size = UDim2.new(1, -10, 1, 0)
                dW.BackgroundColor3 = getgenv().UIColor["Button Color"]
                table.insert(
                    c["Button Color"],
                    function()
                        dW.BackgroundColor3 = getgenv().UIColor["Button Color"]
                    end
                )
                dW.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        dW.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = dW
                dX.Name = "TextColor"
                dX.Parent = dW
                dX.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dX.BackgroundTransparency = 1.000
                dX.Position = UDim2.new(0, 10, 0, 0)
                dX.Size = UDim2.new(1, -10, 1, 0)
                dX.Font = Enum.Font.GothamBlack
                dX.Text = aY
                dX.TextSize = 14.000
                dX.TextXAlignment = Enum.TextXAlignment.Left
                dX.TextColor3 = getgenv().UIColor["Button Text Color"]
                table.insert(
                    c["Button Text Color"],
                    function()
                        dX.TextColor3 = getgenv().UIColor["Button Text Color"]
                    end
                )
                dY.Name = "Button"
                dY.Parent = dW
                dY.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dY.BackgroundTransparency = 1.000
                dY.Size = UDim2.new(1, 0, 1, 0)
                dY.Font = Enum.Font.SourceSans
                dY.Text = ""
                dY.TextColor3 = Color3.fromRGB(0, 0, 0)
                dY.TextSize = 14.000
                dY.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                dY.MouseButton1Down:Connect(
                    function()
                        cN()
                    end
                )
            end
            function dJ.CreateLabel(H)
                local aY = tostring(H.Title)
                local dZ = Instance.new("Frame")
                local d_ = Instance.new("Frame")
                local e0 = Instance.new("UICorner")
                local e1 = Instance.new("TextLabel")
                dZ.Name = "LabelFrame"
                dZ.Parent = aM
                dZ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dZ.BackgroundTransparency = 1.000
                dZ.Position = UDim2.new(0, 0, 0, 0)
                dZ.Size = UDim2.new(1, 0, 0, 0)
                dZ.AutomaticSize = Enum.AutomaticSize.Y
                d_.Name = "LabelBG"
                d_.Parent = dZ
                d_.AnchorPoint = Vector2.new(0.5, 0)
                d_.Position = UDim2.new(0.5, 0, 0, 0)
                d_.Size = UDim2.new(1, -10, 0, -10)
                d_.BackgroundColor3 = getgenv().UIColor["Label Color"]
                d_.AutomaticSize = Enum.AutomaticSize.Y
                table.insert(
                    c["Label Color"],
                    function()
                        d_.BackgroundColor3 = getgenv().UIColor["Label Color"]
                    end
                )
                d_.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        d_.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                e0.CornerRadius = UDim.new(0, 4)
                e0.Name = "LabelCorner"
                e0.Parent = d_
                e1.Name = "TextColor"
                e1.Parent = d_
                e1.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                e1.BackgroundTransparency = 1.000
                e1.Position = UDim2.new(0, 10, 0, 3)
                e1.Size = UDim2.new(1, -20, 1, 0)
                e1.Font = Enum.Font.GothamBlack
                e1.Text = aY
                e1.TextSize = 14.000
                e1.TextXAlignment = Enum.TextXAlignment.Left
                e1.AutomaticSize = Enum.AutomaticSize.Y
                e1.TextWrapped = true
                e1.TextColor3 = getgenv().UIColor["Label Text Color"]
                table.insert(
                    c["Label Text Color"],
                    function()
                        e1.TextColor3 = getgenv().UIColor["Label Text Color"]
                    end
                )
                local e2 = {}
                function e2.SetText(duma)
                    e1.Text = duma
                end
                function e2.SetColor(g)
                    e1.TextColor3 = g
                end
                return e2
            end
            function dJ.CreateDropdown(H, cN)
                local aY = tostring(H.Title)
                local e4 = H.List
                local e5 = H.Search or false
                local e6 = H.Selected or false
                local aZ = H.Default
                local cN = cN or function()
                    end
                local e7 = Instance.new("Frame")
                local e8 = Instance.new("Frame")
                local e9 = Instance.new("UICorner")
                local ea = Instance.new("Frame")
                local M = Instance.new("UICorner")
                local eb = Instance.new("ImageLabel")
                local ec = Instance.new("TextButton")
                local ed = Instance.new("Frame")
                local ee = Instance.new("ScrollingFrame")
                local ef = Instance.new("Frame")
                local eg = Instance.new("UIListLayout")
                local eh
                if e5 then
                    eh = Instance.new("TextBox")
                    ec.Visible = false
                else
                    eh = Instance.new("TextLabel")
                end
                e7.Name = aY .. "DropdownFrame"
                e7.Parent = aM
                e7.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                e7.BackgroundTransparency = 1.000
                e7.Position = UDim2.new(0, 0, 0.473684222, 0)
                e7.Size = UDim2.new(1, 0, 0, 25)
                e8.Name = "Background1"
                e8.Parent = e7
                e8.AnchorPoint = Vector2.new(0.5, 0.5)
                e8.Position = UDim2.new(0.5, 0, 0.5, 0)
                e8.Size = UDim2.new(1, -10, 1, 0)
                e8.ClipsDescendants = true
                e8.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        e8.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                e8.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        e8.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                e9.CornerRadius = UDim.new(0, 4)
                e9.Name = "Dropdowncorner"
                e9.Parent = e8
                ea.Name = "Background2"
                ea.Parent = e8
                ea.Size = UDim2.new(1, 0, 0, 25)
                ea.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        ea.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                ea.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        ea.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                M.CornerRadius = UDim.new(0, 4)
                M.Parent = ea
                eh.Name = "TextColorPlaceholder"
                eh.Parent = ea
                eh.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eh.BackgroundTransparency = 1.000
                eh.Position = UDim2.new(0, 10, 0, 0)
                eh.Size = UDim2.new(1, -40, 1, 0)
                eh.Font = Enum.Font.GothamBlack
                eh.Text = ""
                eh.TextSize = 14.000
                eh.TextXAlignment = Enum.TextXAlignment.Left
                eh.ClipsDescendants = true
                local ei = Instance.new("IntValue", eh)
                ei.Value = -1
                if aZ and table.find(e4, aZ) then
                    ei.Value = table.find(e4, aZ)
                end
                if not e6 then
                    if e5 then
                        eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                        table.insert(
                            c["Placeholder Text Color"],
                            function()
                                eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            end
                        )
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                else
                    if e5 then
                        eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                        table.insert(
                            c["Placeholder Text Color"],
                            function()
                                eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            end
                        )
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                end
                eh.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eh.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                eb.Name = "ImgDrop"
                eb.Parent = ea
                eb.AnchorPoint = Vector2.new(1, 0.5)
                eb.BackgroundTransparency = 1.000
                eb.BorderColor3 = Color3.fromRGB(27, 42, 53)
                eb.Position = UDim2.new(1, -6, 0.5, 0)
                eb.Size = UDim2.new(0, 15, 0, 15)
                eb.Image = "rbxassetid://6954383209"
                eb.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                table.insert(
                    c["Dropdown Icon Color"],
                    function()
                        eb.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                    end
                )
                ec.Name = "DropdownButton"
                ec.Parent = ea
                ec.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ec.BackgroundTransparency = 1.000
                ec.Size = UDim2.new(1, 0, 1, 0)
                ec.Font = Enum.Font.GothamBold
                ec.Text = ""
                ec.TextColor3 = Color3.fromRGB(230, 230, 230)
                ec.TextSize = 14.000
                ed.Name = "Dropdownlisttt"
                ed.Parent = e8
                ed.BackgroundTransparency = 1.000
                ed.BorderSizePixel = 0
                ed.Position = UDim2.new(0, 0, 0, 25)
                ed.Size = UDim2.new(1, 0, 0, 25)
                ed.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ee.Name = "DropdownScroll"
                ee.Parent = ed
                ee.Active = true
                ee.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ee.BackgroundTransparency = 1.000
                ee.BorderSizePixel = 0
                ee.Size = UDim2.new(1, 0, 1, 0)
                ee.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                ee.CanvasSize = UDim2.new(0, 0, 0, 0)
                ee.ScrollBarThickness = 5
                ee.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                ef.Name = "ScrollContainer"
                ef.Parent = ee
                ef.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ef.BackgroundTransparency = 1.000
                ef.Position = UDim2.new(0, 5, 0, 5)
                ef.Size = UDim2.new(1, -15, 1, -5)
                eg.Name = "ScrollContainerList"
                eg.Parent = ef
                eg.SortOrder = Enum.SortOrder.LayoutOrder
                eg:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        ee.CanvasSize = UDim2.new(0, 0, 0, 10 + eg.AbsoluteContentSize.Y + 5)
                    end
                )
                local ej = false
                local ek = {}
                local el = {}
                local function em()
                    for a in pairs(ek) do
                        ek[a] = nil
                    end
                    for en, eo in pairs(ef:GetChildren()) do
                        if not eo:IsA("UIListLayout") and not eo:IsA("UIPadding") and not eo:IsA("UIGridLayout") then
                            eo.Visible = false
                        end
                    end
                    eh.Text = string.lower(eh.Text)
                end
                local function ep()
                    local eq = {}
                    for a, v in pairs(el) do
                        if string.find(v, eh.Text) then
                            table.insert(ek, v)
                        end
                    end
                    for n, B in pairs(ef:GetChildren()) do
                        for er, es in pairs(ek) do
                            if es == B.Name then
                                B.Visible = true
                            end
                        end
                    end
                end
                local function et()
                    for a, v in next, ef:GetChildren() do
                        if v:IsA("Frame") then
                            v:Destroy()
                        end
                    end
                end
                local eu = e4
                local function ev()
                    et()
                    el = {}
                    for a, v in pairs(eu) do
                        if not e6 then
                            table.insert(el, string.lower(v))
                        else
                            table.insert(el, string.lower(a))
                        end
                    end
                    if not e6 then
                        for a, v in pairs(eu) do
                            local ew = Instance.new("Frame")
                            local ex = Instance.new("UICorner")
                            local ds = Instance.new("Frame")
                            local dt = Instance.new("Frame")
                            local du = Instance.new("UICorner")
                            local ey = Instance.new("Frame")
                            local ez = Instance.new("TextButton")
                            ew.Name = string.lower(v)
                            ew.Parent = ef
                            ew.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ew.BackgroundTransparency = 1.000
                            ew.Size = UDim2.new(1, 0, 0, 25)
                            ex.CornerRadius = UDim.new(0, 4)
                            ex.Name = "DropvalCorner"
                            ex.Parent = ew
                            ds.Name = "Line"
                            ds.Parent = ew
                            ds.AnchorPoint = Vector2.new(0, 0.5)
                            ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ds.BackgroundTransparency = 1.000
                            ds.Position = UDim2.new(0, 0, 0.5, 0)
                            ds.Size = UDim2.new(0, 14, 1, 0)
                            dt.Name = "InLine"
                            dt.Parent = ds
                            dt.AnchorPoint = Vector2.new(0.5, 0.5)
                            dt.BorderSizePixel = 0
                            dt.Position = UDim2.new(0.5, 0, 0.5, 0)
                            dt.Size = UDim2.new(1, -10, 1, -10)
                            dt.BackgroundTransparency = 1
                            dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                            table.insert(
                                c["Dropdown Selected Color"],
                                function()
                                    dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                                end
                            )
                            du.Name = "LineCorner"
                            du.Parent = dt
                            ey.Name = "Dropvalcontainer"
                            ey.Parent = ew
                            ey.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ey.BackgroundTransparency = 1.000
                            ey.Position = UDim2.new(0, 15, 0, 0)
                            ey.Size = UDim2.new(1, -15, 1, 0)
                            ez.Name = "TextColor"
                            ez.Parent = ey
                            ez.Active = false
                            ez.BackgroundTransparency = 1.000
                            ez.Selectable = false
                            ez.Size = UDim2.new(1, 0, 1, 0)
                            ez.Font = Enum.Font.GothamBold
                            ez.Text = v
                            ez.TextSize = 14.000
                            ez.TextWrapped = true
                            ez.TextXAlignment = Enum.TextXAlignment.Left
                            ez.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ez.TextColor3 = getgenv().UIColor["Text Color"]
                            table.insert(
                                c["Text Color"],
                                function()
                                    ez.TextColor3 = getgenv().UIColor["Text Color"]
                                end
                            )
                            if e5 then
                                if ei.Value == a then
                                    dt.BackgroundTransparency = 0
                                end
                            else
                                if ei.Value == a then
                                    dt.BackgroundTransparency = 0
                                end
                            end
                            ez.MouseButton1Click:Connect(
                                function()
                                    if e5 then
                                        eh.PlaceholderText = aY .. ": " .. v
                                        ei.Value = a
                                    else
                                        eh.Text = aY .. ": " .. v
                                        ei.Value = a
                                    end
                                    ev()
                                    if cN then
                                        cN(v, a)
                                    end
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    u.ButtonEffect()
                                end
                            )
                        end
                    else
                        for a, v in pairs(eu) do
                            local eA = v and 0 or 1
                            local ew = Instance.new("Frame")
                            local ex = Instance.new("UICorner")
                            local ds = Instance.new("Frame")
                            local dt = Instance.new("Frame")
                            local du = Instance.new("UICorner")
                            local ey = Instance.new("Frame")
                            local ez = Instance.new("TextButton")
                            ew.Name = string.lower(a)
                            ew.Parent = ef
                            ew.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ew.BackgroundTransparency = 1.000
                            ew.Size = UDim2.new(1, 0, 0, 25)
                            ex.CornerRadius = UDim.new(0, 4)
                            ex.Name = "DropvalCorner"
                            ex.Parent = ew
                            ds.Name = "Line"
                            ds.Parent = ew
                            ds.AnchorPoint = Vector2.new(0, 0.5)
                            ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ds.BackgroundTransparency = 1
                            ds.Position = UDim2.new(0, 0, 0.5, 0)
                            ds.Size = UDim2.new(0, 14, 1, 0)
                            dt.Name = "InLine"
                            dt.Parent = ds
                            dt.AnchorPoint = Vector2.new(0.5, 0.5)
                            dt.BorderSizePixel = 0
                            dt.Position = UDim2.new(0.5, 0, 0.5, 0)
                            dt.Size = UDim2.new(1, -10, 1, -10)
                            dt.BackgroundTransparency = eA
                            dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                            table.insert(
                                c["Dropdown Selected Color"],
                                function()
                                    dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                                end
                            )
                            du.Name = "LineCorner"
                            du.Parent = dt
                            ey.Name = "Dropvalcontainer"
                            ey.Parent = ew
                            ey.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ey.BackgroundTransparency = 1.000
                            ey.Position = UDim2.new(0, 15, 0, 0)
                            ey.Size = UDim2.new(1, -15, 1, 0)
                            ez.Name = "TextColor"
                            ez.Parent = ey
                            ez.Active = false
                            ez.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ez.BackgroundTransparency = 1.000
                            ez.Selectable = false
                            ez.Size = UDim2.new(1, 0, 1, 0)
                            ez.Font = Enum.Font.GothamBold
                            ez.Text = a
                            ez.TextSize = 14.000
                            ez.TextWrapped = true
                            ez.TextXAlignment = Enum.TextXAlignment.Left
                            ez.TextColor3 = getgenv().UIColor["Text Color"]
                            table.insert(
                                c["Text Color"],
                                function()
                                    ez.TextColor3 = getgenv().UIColor["Text Color"]
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    u.ButtonEffect()
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    v = not v
                                    local eA = v and 0 or 1
                                    w:Create(
                                        dt,
                                        TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                                        {BackgroundTransparency = eA}
                                    ):Play()
                                    if cN then
                                        cN(a, v)
                                        eu[a] = v
                                    end
                                end
                            )
                        end
                    end
                end
                if e5 then
                    eh.Changed:Connect(
                        function()
                            em()
                            ep()
                        end
                    )
                end
                if typeof(aZ) ~= "table" then
                    cN(aZ)
                    if e5 then
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                elseif e6 then
                    for a, v in next, aZ do
                        eu[a] = v
                        cN(a, v)
                    end
                    eh.Text = ""
                    eh.PlaceholderText = aY .. ": "
                end
                ec.MouseButton1Click:Connect(
                    function()
                        ev()
                        ej = not ej
                        local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                        local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                        local eD = ej and 90 or 0
                        w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play()
                        w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play()
                        w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play(

                        )
                    end
                )
                ec.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                if e5 then
                    eh.Focused:Connect(
                        function()
                            ev()
                            ej = not ej
                            local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                            local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                            local eD = ej and 90 or 0
                            w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play(

                            )
                            w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play(

                            )
                            w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play(

                            )
                        end
                    )
                    eh.Focused:Connect(
                        function()
                            u.ButtonEffect()
                        end
                    )
                end
                local eE = {rf = ev}
                function eE:ClearText()
                    if not e6 then
                        if e5 then
                            eh.PlaceholderText = aY .. ": "
                        else
                            eh.Text = aY .. ": "
                        end
                    else
                        eh.Text = aY .. ": "
                    end
                end
                function eE:GetNewList(e4)
                    ev()
                    ej = false
                    local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                    local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                    local eD = ej and 90 or 0
                    w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play()
                    w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play()
                    w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play()
                    eu = {}
                    eu = e4
                    for a, v in next, eu do
                        if e6 then
                            cN(a, v)
                        end
                    end
                end
                return eE
            end
            function dJ.CreateBind(H, cN)
                local cx = tostring(H.Title) or ""
                local eF = H.Key
                local aZ = H.Default or H.Key
                local a_ = tostring(aZ):match("UserInputType") and "UserInputType" or "KeyCode"
                local cN = cN or function()
                    end
                eF = tostring(eF):gsub("Enum.UserInputType.", "")
                eF = tostring(eF):gsub("Enum.KeyCode.", "")
                local eG = Instance.new("Frame")
                local eH = Instance.new("UICorner")
                local eI = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local eJ = Instance.new("TextLabel")
                local dY = Instance.new("TextButton")
                local eK = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local eL = Instance.new("TextButton")
                eG.Name = cx .. "bguvl"
                eG.Parent = aM
                eG.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                eG.BackgroundTransparency = 1.000
                eG.Position = UDim2.new(0, 0, 0.208333328, 0)
                eG.Size = UDim2.new(1, 0, 0, 35)
                eH.CornerRadius = UDim.new(0, 4)
                eH.Name = "BindCorner"
                eH.Parent = eG
                eI.Name = "Background1"
                eI.Parent = eG
                eI.AnchorPoint = Vector2.new(0.5, 0.5)
                eI.Position = UDim2.new(0.5, 0, 0.5, 0)
                eI.Size = UDim2.new(1, -10, 1, 0)
                eI.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        eI.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                eI.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        eI.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = eI
                eJ.Name = "TextColor"
                eJ.Parent = eI
                eJ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eJ.BackgroundTransparency = 1.000
                eJ.Position = UDim2.new(0, 10, 0, 0)
                eJ.Size = UDim2.new(1, -10, 1, 0)
                eJ.Font = Enum.Font.GothamBlack
                eJ.Text = cx
                eJ.TextSize = 14.000
                eJ.TextXAlignment = Enum.TextXAlignment.Left
                eJ.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eJ.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                eK.Name = "Background2"
                eK.Parent = eI
                eK.AnchorPoint = Vector2.new(1, 0.5)
                eK.Position = UDim2.new(1, -5, 0.5, 0)
                eK.Size = UDim2.new(0, 150, 0, 25)
                eK.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        eK.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = eK
                eL.Name = "Bindkey"
                eL.Parent = eK
                eL.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eL.BackgroundTransparency = 1.000
                eL.Size = UDim2.new(1, 0, 1, 0)
                eL.Font = Enum.Font.GothamBold
                eL.Text = tostring(aZ):gsub("Enum.KeyCode.", "")
                eL.TextSize = 14.000
                eL.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eL.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                local eM = {
                    [Enum.UserInputType.MouseButton1] = "Mouse1",
                    [Enum.UserInputType.MouseButton2] = "Mouse2",
                    [Enum.UserInputType.MouseButton3] = "Mouse3"
                }
                eL.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                eL.MouseButton1Click:Connect(
                    function()
                        local eN
                        eL.Text = "..."
                        eN =
                            game:GetService("UserInputService").InputBegan:Connect(
                            function(a)
                                if eM[a.UserInputType] then
                                    eL.Text = eM[a.UserInputType]
                                    spawn(
                                        function()
                                            wait(0.1)
                                            aZ = a.UserInputType
                                            a_ = "UserInputType"
                                        end
                                    )
                                elseif a.KeyCode ~= Enum.KeyCode.Unknown then
                                    eL.Text = tostring(a.KeyCode):gsub("Enum.KeyCode.", "")
                                    spawn(
                                        function()
                                            wait(0.1)
                                            aZ = a.KeyCode
                                            a_ = "KeyCode"
                                        end
                                    )
                                end
                                eN:Disconnect()
                            end
                        )
                    end
                )
                game:GetService("UserInputService").InputBegan:Connect(
                    function(a)
                        if aZ == a.UserInputType or aZ == a.KeyCode then
                            cN(aZ)
                        end
                    end
                )
            end
            function dJ.CreateBox(H, cN)
                local cx = tostring(H.Title) or ""
                local cy = tostring(H.Placeholder) or ""
                local aZ = H.Default or false
                local eO = H.Number or false
                local cN = cN or function()
                    end
                local cz = Instance.new("Frame")
                local cA = Instance.new("UICorner")
                local cB = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local cD = Instance.new("TextLabel")
                local cE = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local eP = Instance.new("TextBox")
                local cH = Instance.new("Frame")
                local M = Instance.new("UICorner")
                cz.Name = "BoxFrame"
                cz.Parent = aM
                cz.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cz.BackgroundTransparency = 1.000
                cz.Position = UDim2.new(0, 0, 0.208333328, 0)
                cz.Size = UDim2.new(1, 0, 0, 60)
                cA.CornerRadius = UDim.new(0, 4)
                cA.Name = "BoxCorner"
                cA.Parent = cz
                cB.Name = "Background1"
                cB.Parent = cz
                cB.AnchorPoint = Vector2.new(0.5, 0.5)
                cB.Position = UDim2.new(0.5, 0, 0.5, 0)
                cB.Size = UDim2.new(1, -10, 1, 0)
                cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = cB
                cD.Name = "TextColor"
                cD.Parent = cB
                cD.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cD.BackgroundTransparency = 1.000
                cD.Position = UDim2.new(0, 10, 0, 0)
                cD.Size = UDim2.new(1, -10, 0.5, 0)
                cD.Font = Enum.Font.GothamBlack
                cD.Text = cx
                cD.TextSize = 14.000
                cD.TextXAlignment = Enum.TextXAlignment.Left
                cD.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cD.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cE.Name = "Background2"
                cE.Parent = cB
                cE.AnchorPoint = Vector2.new(1, 0.5)
                cE.ClipsDescendants = true
                cE.Position = UDim2.new(1, -5, 0, 40)
                cE.Size = UDim2.new(1, -10, 0, 25)
                cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = cE
                eP.Name = "TextColorPlaceholder"
                eP.Parent = cE
                eP.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eP.BackgroundTransparency = 1.000
                eP.Position = UDim2.new(0, 5, 0, 0)
                eP.Size = UDim2.new(1, -5, 1, 0)
                eP.Font = Enum.Font.GothamBold
                eP.PlaceholderText = cy
                eP.Text = ""
                eP.TextSize = 14.000
                eP.TextXAlignment = Enum.TextXAlignment.Left
                eP.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                eP.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Placeholder Text Color"],
                    function()
                        eP.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                    end
                )
                table.insert(
                    c["Text Color"],
                    function()
                        eP.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cH.Name = "TextNSBoxLineeeee"
                cH.Parent = cE
                cH.BackgroundTransparency = 1.000
                cH.Position = UDim2.new(0, 0, 1, -2)
                cH.Size = UDim2.new(1, 0, 0, 6)
                cH.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                table.insert(
                    c["Box Highlight Color"],
                    function()
                        cH.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                    end
                )
                M.CornerRadius = UDim.new(1, 0)
                M.Parent = cH
                eP.Focused:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                )
                eP.Focused:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                if eO then
                    eP:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if tonumber(eP.Text) then
                            else
                                eP.PlaceholderText = cy
                                eP.Text = ""
                            end
                        end
                    )
                end
                eP.FocusLost:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 1}
                        ):Play()
                        if eP.Text ~= "" then
                            cN(eP.Text)
                        end
                    end
                )
                local cI = {}
                if aZ then
                    eP.Text = aZ
                    cN(aZ)
                end
                function cI.SetValue(r)
                    eP.Text = r
                    cN(r)
                end
                return cI
            end
            function dJ.CreateSlider(H, cN)
                local cx = tostring(H.Title) or ""
                local cJ = tonumber(H.Min) or 0
                local cK = tonumber(H.Max) or 100
                local cL = H.Precise or false
                local cM = tonumber(H.Default) or 0
                local cN = cN or function()
                    end
                local cO = 400
                local cN = cN or function()
                    end
                local cP = Instance.new("Frame")
                local cQ = Instance.new("UICorner")
                local cR = Instance.new("Frame")
                local cS = Instance.new("UICorner")
                local cT = Instance.new("TextLabel")
                local cU = Instance.new("Frame")
                local cV = Instance.new("TextButton")
                local cW = Instance.new("UICorner")
                local cX = Instance.new("Frame")
                local cY = Instance.new("UICorner")
                local cZ = Instance.new("Frame")
                local c_ = Instance.new("UICorner")
                local d0 = Instance.new("TextBox")
                cP.Name = cx .. "buda"
                cP.Parent = aM
                cP.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cP.BackgroundTransparency = 1.000
                cP.Position = UDim2.new(0, 0, 0.208333328, 0)
                cP.Size = UDim2.new(1, 0, 0, 50)
                cQ.CornerRadius = UDim.new(0, 4)
                cQ.Name = "SliderCorner"
                cQ.Parent = cP
                cR.Name = "Background1"
                cR.Parent = cP
                cR.AnchorPoint = Vector2.new(0.5, 0.5)
                cR.Position = UDim2.new(0.5, 0, 0.5, 0)
                cR.Size = UDim2.new(1, -10, 1, 0)
                cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cS.CornerRadius = UDim.new(0, 4)
                cS.Name = "SliderBGCorner"
                cS.Parent = cR
                cT.Name = "TextColor"
                cT.Parent = cR
                cT.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cT.BackgroundTransparency = 1.000
                cT.Position = UDim2.new(0, 10, 0, 0)
                cT.Size = UDim2.new(1, -10, 0, 25)
                cT.Font = Enum.Font.GothamBlack
                cT.Text = cx
                cT.TextSize = 14.000
                cT.TextXAlignment = Enum.TextXAlignment.Left
                cT.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cT.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cU.Name = "SliderBar"
                cU.Parent = cP
                cU.AnchorPoint = Vector2.new(.5, 0.5)
                cU.Position = UDim2.new(.5, 0, 0.5, 14)
                cU.Size = UDim2.new(0, 400, 0, 6)
                cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cV.Name = "SliderButton "
                cV.Parent = cU
                cV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cV.BackgroundTransparency = 1.000
                cV.Size = UDim2.new(1, 0, 1, 0)
                cV.Font = Enum.Font.GothamBold
                cV.Text = ""
                cV.TextColor3 = Color3.fromRGB(230, 230, 230)
                cV.TextSize = 14.000
                cW.CornerRadius = UDim.new(1, 0)
                cW.Name = "SliderBarCorner"
                cW.Parent = cU
                cX.Name = "Bar"
                cX.BorderSizePixel = 0
                cX.Parent = cU
                cX.Size = UDim2.new(0, 0, 1, 0)
                cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                table.insert(
                    c["Slider Line Color"],
                    function()
                        cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                    end
                )
                cY.CornerRadius = UDim.new(1, 0)
                cY.Name = "BarCorner"
                cY.Parent = cX
                cZ.Name = "Background2"
                cZ.Parent = cP
                cZ.AnchorPoint = Vector2.new(1, 0)
                cZ.Position = UDim2.new(1, -10, 0, 5)
                cZ.Size = UDim2.new(0, 150, 0, 25)
                cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                c_.CornerRadius = UDim.new(0, 4)
                c_.Name = "Sliderbox"
                c_.Parent = cZ
                d0.Name = "TextColor"
                d0.Parent = cZ
                d0.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                d0.BackgroundTransparency = 1.000
                d0.Size = UDim2.new(1, 0, 1, 0)
                d0.Font = Enum.Font.GothamBold
                d0.Text = ""
                d0.TextSize = 14.000
                d0.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        d0.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cV.MouseEnter:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"]}
                        ):Play()
                    end
                )
                cV.MouseLeave:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}
                        ):Play()
                    end
                )
                local y = game.Players.LocalPlayer:GetMouse()
                if cM then
                    if cM <= cJ then
                        cM = cJ
                    elseif cM >= cK then
                        cM = cK
                    end
                    cX.Size = UDim2.new(1 - (cK - cM) / (cK - cJ), 0, 0, 6)
                    d0.Text = cM
                    cN(cM)
                end
                cV.MouseButton1Down:Connect(
                    function()
                        local d1 =
                            cL and
                            tonumber(
                                string.format(
                                    "%.1f",
                                    (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                )
                            ) or
                            math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                        pcall(
                            function()
                                cN(d1)
                                d0.Text = d1
                            end
                        )
                        cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                        moveconnection =
                            y.Move:Connect(
                            function()
                                local d1 =
                                    cL and
                                    tonumber(
                                        string.format(
                                            "%.1f",
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    ) or
                                    math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                                pcall(
                                    function()
                                        cN(d1)
                                        d0.Text = d1
                                    end
                                )
                                cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                            end
                        )
                        releaseconnection =
                            x.InputEnded:Connect(
                            function(d2)
                                if d2.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local d1 =
                                        cL and
                                        tonumber(
                                            string.format(
                                                "%.1f",
                                                (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                            )
                                        ) or
                                        math.floor(
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    pcall(
                                        function()
                                            cN(d1)
                                            d0.Text = d1
                                        end
                                    )
                                    cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                )
                local function d3(r)
                    if tonumber(r) <= cJ then
                        cX.Size = UDim2.new(0, 0 * cO, 0, 6)
                        d0.Text = cJ
                        cN(tonumber(cJ))
                    elseif tonumber(r) >= cK then
                        cX.Size = UDim2.new(0, cK / cK * cO, 0, 6)
                        d0.Text = cK
                        cN(tonumber(cK))
                    else
                        cX.Size = UDim2.new(1 - (cK - r) / (cK - cJ), 0, 0, 6)
                        cN(tonumber(r))
                    end
                end
                d0.FocusLost:Connect(
                    function()
                        d3(d0.Text)
                    end
                )
                local d4 = {}
                function d4.SetValue(r)
                    d3(r)
                end
                return d4
            end
            return dJ
        end
        return dI
    end
    return dj
end
return t end
local Library = GetUi()

if game.PlaceId == 2753915549 then
    taodangosea1 = true
elseif game.PlaceId == 4442272183 then
    taodangosea2 = true
elseif game.PlaceId == 7449423635 then
    taodangosea3 = true
else
    game.Players.LocalPlayer:Kick("Bro, My Script Support Only Blox Fruits and Please Wait Me Update New Game")
end

Library.CreateNoti({
    Title = "Summer Hub",
    Desc = "Loaded Gui Completed!",
    ShowTime = 5,
})

function Checknhiemvu()
    YourLevel = game: GetService("Players").LocalPlayer.Data.Level.Value
    if taodangosea1 then
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
            elseif taodangosea2 then
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
            elseif taodangosea3 then
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

function CheckBoss()
    if taodangosea1 then
        if getgenv().SelectBoss == "The Gorilla King" then
            Boss = "The Gorilla King"
            NameBoss = 'The Gorrila King'
            NameQuestBoss = "JungleQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
            elseif getgenv().SelectBoss == "Bobby" then
            Boss = "Bobby"
            NameBoss = 'Bobby'
            NameQuestBoss = "BuggyQuest1"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
            elseif getgenv().SelectBoss == "The Saw" then
            Boss = "The Saw"
            NameBoss = 'The Saw'
            CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
            elseif getgenv().SelectBoss == "Yeti" then
            Boss = "Yeti"
            NameBoss = 'Yeti'
            NameQuestBoss = "SnowQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
            elseif getgenv().SelectBoss == "Mob Leader" then
            Boss = "Mob Leader"
            NameBoss = 'Mob Leader'
            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
            elseif getgenv().SelectBoss == "Vice Admiral" then
            Boss = "Vice Admiral"
            NameBoss = 'Vice Admiral'
            NameQuestBoss = "MarineQuest2"
            NumberQuestBoss = 2
            CFrameQuestBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
            CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
            elseif getgenv().SelectBoss == "Saber Expert" then
            NameBoss = 'Saber Expert'
            Boss = "Saber Expert"
            elseif getgenv().SelectBoss == "Warden" then
            Boss = "Warden"
            NameBoss = 'Warden'
            NameQuestBoss = "ImpelQuest"
            NumberQuestBoss = 1
            CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
            CFrameQuestBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
            elseif getgenv().SelectBoss == "Chief Warden" then
            Boss = "Chief Warden"
            NameBoss = 'Chief Warden'
            NameQuestBoss = "ImpelQuest"
            NumberQuestBoss = 2
            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
            CFrameQuestBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
            elseif getgenv().SelectBoss == "Swan" then
            Boss = "Swan"
            NameBoss = 'Swan'
            NameQuestBoss = "ImpelQuest"
            NumberQuestBoss = 3
            CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
            CFrameQuestBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
            elseif getgenv().SelectBoss == "Magma Admiral" then
            Boss = "Magma Admiral"
            NameBoss = 'Magma Admiral'
            NameQuestBoss = "MagmaQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
            CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
            elseif getgenv().SelectBoss == "Fishman Lord" then
            Boss = "Fishman Lord"
            NameBoss = 'Fishman Lord'
            NameQuestBoss = "FishmanQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
            elseif getgenv().SelectBoss == "Wysper" then
            Boss = "Wysper"
            NameBoss = 'Wysper'
            NameQuestBoss = "SkyExp1Quest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
            elseif getgenv().SelectBoss == "Thunder God" then
            Boss = "Thunder God"
            NameBoss = 'Thunder God'
            NameQuestBoss = "SkyExp2Quest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
            elseif getgenv().SelectBoss == "Cyborg" then
            Boss = "Cyborg"
            NameBoss = 'Cyborg'
            NameQuestBoss = "FountainQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
            elseif getgenv().SelectBoss == "Ice Admiral" then
            Boss = "Ice Admiral"
            NameBoss = 'Ice Admiral'
            CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
            elseif getgenv().SelectBoss == "Greybeard" then
            Boss = "Greybeard"
            NameBoss = 'Greybeard'
            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
        end
    end
    if taodangosea2 then
        if getgenv().SelectBoss == "Diamond" then
            Boss = "Diamond"
            NameBoss = 'Diamond'
            NameQuestBoss = "Area1Quest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
            elseif getgenv().SelectBoss == "Jeremy" then
            Boss = "Jeremy"
            NameBoss = 'Jeremy'
            NameQuestBoss = "Area2Quest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
            CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
            elseif getgenv().SelectBoss == "Fajita" then
            Boss = "Fajita"
            NameBoss = 'Fajita'
            NameQuestBoss = "MarineQuest3"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
            CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
            elseif getgenv().SelectBoss == "Don Swan" then
            Boss = "Don Swan"
            NameBoss = 'Don Swan'
            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
            elseif getgenv().SelectBoss == "Smoke Admiral" then
            Boss = "Smoke Admiral"
            NameBoss = 'Smoke Admiral'
            NameQuestBoss = "IceSideQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
            elseif getgenv().SelectBoss == "Awakened Ice Admiral" then
            Boss = "Awakened Ice Admiral"
            NameBoss = 'Awakened Ice Admiral'
            NameQuestBoss = "FrostQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
            CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
            elseif getgenv().SelectBoss == "Tide Keeper" then
            Boss = "Tide Keeper"
            NameBoss = 'Tide Keeper'
            NameQuestBoss = "ForgottenQuest"
            NumberQuestBoss = 3
            CFrameQuestBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
            CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
            elseif getgenv().SelectBoss == "Darkbeard" then
            Boss = "Darkbeard"
            NameBoss = 'Darkbeard'
            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
            elseif getgenv().SelectBoss == "Cursed Captain" then
            Boss = "Cursed Captain"
            NameBoss = 'Cursed Captain'
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
            elseif getgenv().SelectBoss == "Order" then
            Boss = "Order"
            NameBoss = 'Order'
            CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
        end
    end
    if taodangosea3 then
        if getgenv().SelectBoss == "Stone" then
        Boss = "Stone"
        NameBoss = 'Stone'
        NameQuestBoss = "PiratePortQuest"
        NumberQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
        CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
        elseif getgenv().SelectBoss == "Island Empress" then
        Boss = "Island Empress"
        NameBoss = 'Island Empress'
        NameQuestBoss = "AmazonQuest2"
        NumberQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
        CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
        elseif getgenv().SelectBoss == "Kilo Admiral" then
        Boss = "Kilo Admiral"
        NameBoss = 'Kilo Admiral'
        NameQuestBoss = "MarineTreeIsland"
        NumberQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
        CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
        elseif getgenv().SelectBoss == "Captain Elephant" then
        Boss = "Captain Elephant"
        NameBoss = 'Captain Elephant'
        NameQuestBoss = "DeepForestIsland"
        NumberQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
        CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
        elseif getgenv().SelectBoss == "Beautiful Pirate" then
        Boss = "Beautiful Pirate"
        NameBoss = 'Beautiful Pirate'
        NameQuestBoss = "DeepForestIsland2"
        NumberQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
        CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
        elseif getgenv().SelectBoss == "Cake Queen" then
        Boss = "Cake Queen"
        NameBoss = 'Cake Queen'
        NameQuestBoss = "IceCreamIslandQuest"
        NumberQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
        CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
        elseif getgenv().SelectBoss == "Longma" then
        Boss = "Longma"
        NameBoss = 'Longma'
        CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
        elseif getgenv().SelectBoss == "Soul Reaper" then
        Boss = "Soul Reaper"
        NameBoss = 'Soul Reaper'
        CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
        elseif getgenv().SelectBoss == "rip_indra True Form" then
        Boss = "rip_indra True Form"
        NameBoss = 'rip_indra True Form'
        CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
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
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9) 
end

function Tween(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
        end
        pcall(
            function()
                Tweeb =
                    game:GetService("TweenService"):Create(
                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                    TweenInfo.new(Distance / 210, Enum.EasingStyle.Linear),
                    {CFrame = Pos}
                )
            end
        )
        Tweeb:Play()
        if Distance <= 250 then
            Tweeb:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
    end
end

function TweenShip(CFBoat)
    local TWSRV = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame.Position - CFBoat.Position).Magnitude/300, Enum.EasingStyle.Linear)
    TweenBoat = TWSRV:Create(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat, info, {CFrame = CFBoat})
    TweenBoat:Play()
    local tweenfunc = {}
    function tweenfunc:Stop()
        tween:Cancel()
    end
    return tweenfunc
end

Onichan = 1
spawn(function()
    while wait() do
        if Onichan == 1 then
            Dodge = CFrame.new(0,20,0)
        elseif Onichan == 2 then
            Dodge = CFrame.new(0,20,-30)
        elseif Onichan == 3 then
            Dodge = CFrame.new(30,20,0)
        elseif Onichan == 4 then
            PDodgeos = CFrame.new(0,20,30)	
        elseif Onichan == 5 then
            Dodge = CFrame.new(-30,20,0)
        elseif Onichan == 6 then
            Dodge = CFrame.new(0,20,30)
        end
    end
end)

spawn(function()
    while wait() do
        Onichan = 1
        wait(0.5)
        Onichan = 2
        wait(0.5)
        Onichan = 3
        wait(0.5)
        Onichan = 4
        wait(0.5)
        Onichan = 5
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

local ConNPCTemplete = CFrame.new(28612.7148, 14896.4893, 103.860237)
function TweenTopOnGreatTree()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
    Tween(ConNPCTemplete)
    wait(0.5)
    if (ConNPCTemplete.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "TeleportBack")
    end
end

function TweenTemplete()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
end

function Taixiu(Pos)
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

function Notify(Noi, di)
    Library.CreateNoti({
        Title = "SUMMER HUB",
        Desc = Hello,
        ShowTime = Hello,
    })
end

function SendKey(Key)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Key,false,game)
    wait(0.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Key,false,game)
end

spawn(function()
    while wait() do
        if _G.AutoClick == true then
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end
end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.KillKidTrials or _G.AutoTrials or _G.AutoDoughKing or _G.AutoChimden or _G.AutoAdmin or _G.AutoAdmin or _G.AutoElite or _G.AutoFactory or _G.AutoCastleRaid or _G.AutoSwan or _G.Bartilonhucac or _G.AutoLevel or _G.AutoKatakuri or _G.AutoBone or _G.KillNearest or _G.AutoFarmNearest or NoCLip == true then
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

    local Mainchinh = game.Players.LocalPlayer

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoLevel or _G.AutoKatakuri or _G.AutoBone or _G.KillNearest or _G.AutoFarmNearest or NoCLip == true then
                    if Mainchinh.Character.Humanoid.Sit == true then
                        Mainchinh.Character.Humanoid.Sit = false
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

function Raidroom()
    if taodangosea2 then
        Tween(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.01223634e-08, -0.864648759, 2.34106086e-08, 1, 1.89508653e-09, 0.864648759, -2.11940012e-08, 0.502376854))
    elseif taodangosea3 then
        Tween(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
    end
end

function Checkdao()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return true
    else
        return false
    end
end

function CheckEnemies(thangnao)
    if game.Workspace.Enemies:FindFirstChild(thangnao) then
        return true
    else
        return false
    end
end

local Main = Library.CreateMain({Title = 'Blox Fruit', Desc = '- Blox Fruit'})

local G = Main.CreatePage({Page_Name = 'General', Page_Title = ''})
local ST = Main.CreatePage({Page_Name = 'Settings', Page_Title = ''})
local IQ = Main.CreatePage({Page_Name = 'Item & Quest', Page_Title = ''})
local DR = Main.CreatePage({Page_Name = 'Devil Fruit and Raids', Page_Title = ''})
local STT = Main.CreatePage({Page_Name = 'Status and Servers', Page_Title = ''})
local PV = Main.CreatePage({Page_Name = 'Players & PVP', Page_Title = ''})
local RC = Main.CreatePage({Page_Name = 'Upgrated Race', Page_Title = ''})
local SE = Main.CreatePage({Page_Name = 'Sea Event', Page_Title = ''})
local MSC = Main.CreatePage({Page_Name = 'Misc', Page_Title = ''})

local Dungtoll = G.CreateSection('Select Weapons')

local WP = {"Melee", "Sword"}
Dungtoll.CreateDropdown({Title = 'Select Weapons', List = WP, Search = false, Selected = false}, function(Value)
    _G.UsingTool = Value
end)

task.spawn(function()
    while wait() do
        pcall(function()
            if _G.UsingTool == "Melee" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                        _G.UsingTool = v.Name
                    end
                end
            elseif _G.UsingTool == "Sword" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                        _G.UsingTool = v.Name
                    end
                end
            end
        end)
    end
end)

function KillMob(ditmethangnaotaokeuaechoihet)
    if game.Workspace.Enemies:FindFirstChild(ditmethangnaotaokeuaechoihet) then
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == ditmethangnaotaokeuaechoihet and v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
                repeat task.wait()
                    EnableBuso()
                    EquipTool(_G.UsingTool)
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
        if game:GetService("ReplicatedStorage"):FindFirstChild(ditmethangnaotaokeuaechoihet) then
            Tween(game:GetService("ReplicatedStorage"):FindFirstChild(ditmethangnaotaokeuaechoihet).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
        end
    end
end -- ổn k?

local CheckLevel = game.Players.LocalPlayer.Data.Level.Value
local FarmSettingSection = G.CreateSection('Farm Settings')

local tatcacode = {
    "Sub2UncleKizaru",
    "NEWTROLL",
    "SUB2NOOBMASTER123",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "Sub2NoobMaster123",
    "SUB2GAMERROBOT_EXP1",
    "SUB2GAMERROBOT_RESET1",
    "THEGREATACE",
    "BIGNEWS",
    "FUDD10",
    "fudd10_v2",
    "Bluxxy",
    "Starcodeheo",
    "JCWK",
    "SUB2CAPTAINMAUI",
    "Magicbus",
    "Sub2Fer999",
    "kittgaming",
    "GAMERROBOT",
    "SUBGAMERROBOT",
    "ADMINGIVEAWAY",
    "KITT_RESET",
    "SECRET_ADMIN",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming"
}

FarmSettingSection.CreateButton({Title = 'Redeem All Codes'}, function()
    function Redeemcode(buoi)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(buoi)
    end
    for i, v in pairs(tatcacode) do
        Redeemcode(v)
    end
    Notify("Redeem All Codes Complete")
end)

FarmSettingSection.CreateDropdown({Title = 'Select Stas To Add', List = {"Melee", "Defense", "Sword", "Gun", "Devil Fruit"}, Search = false, Selected = false}, function(Value)
    getgenv().Stats = Value
end)

spawn(function()
    while wait() do
        if game.Players.localPlayer.Data.Points.Value >= 1 then
            if getgenv().Stats == "Melee" then
                local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        elseif getgenv().Stats == "Defense" then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif getgenv().Stats == "Sword" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif getgenv().Stats == "Gun" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif getgenv().Stats == "Devil Fruit" then
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

FarmSettingSection.CreateToggle({Title = 'Auto Wakening Race V4', Desc = 'Auto Wakening Race V4 If Train Race Full', Default = false}, function(Value)
    _G.TurnV4 = Value
end)

spawn(function()
    while wait() do
        if _G.TurnV4 then
            SendKey("Y")
        end
    end
end)

local STOPTWEENSCTION = G.CreateSection('StopTween')

STOPTWEENSCTION.CreateButton({Title = 'Cancel Tween'}, function()
    _G.Emdungdiiiii = true
    wait(0.5)
    _G.Emdungdiiiii = false
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Emdungdiiiii == true then
                Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
                NoCLip = false
            end
        end)
    end
end)

local FarmSection = G.CreateSection('FARM TOGGLE')

FarmSection.CreateToggle({Title = 'Auto Farm', Desc = 'Auto Teleport To NPC GetQuest and going to Mob need farm to kill', Default = false}, function(Value)
    _G.AutoLevel = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLevel then
                Checknhiemvu()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMob) or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                            Taixiu(CFrameQuest)
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

local KatakuriCount = FarmSection.CreateLabel({Title = "Killed : "})

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                KatakuriCount.SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                KatakuriCount.SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                KatakuriCount.SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                KatakuriCount.SetText("Cake Prince Spawned")
            end
        end)
    end
end)

FarmSection.CreateToggle({Title = 'Auto Katakuri', Desc = 'Auto Killing 500 Mobs To Spawn Cake Price else if Have Cake Price or Dough King In Servers then Teleport To Boss and kill', Default = false}, function(Value)
    _G.AutoKatakuri = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.AutoKatakuri and taodangosea3 then
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
            if _G.AutoKatakuri and taodangosea3 then
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
                                        Taixiu(CakeIsland)
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

local BoneCount = FarmSection.CreateLabel({Title = "Your Bone : Only Third Sea"})

spawn(function()
    while wait() do
        BoneCount.SetText("Your Bone : " ..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").. " ")
    end
end)

FarmSection.CreateToggle({Title = 'Auto Bone', Desc = ' Go to castle haunted kill mob to get bone', Default = false}, function(Value)
    _G.AutoBone = Value
end)

local PosBone = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoBone and taodangosea3 then
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
                            Taixiu(PosBone)
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

FarmSection.CreateToggle({Title = 'Auto Farm Nearest', Desc = ' get nearest mob to farm', Default = false}, function(Value)
    _G.AutoFarmNearest = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmNearest then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and _G.AutoFarmNearest then
                        repeat wait()
                            EquipTool(_G.UsingTool)
                            EnableBuso()                                            
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                            Tween(v.HumanoidRootPart.CFrame * Dodge)
                            PosNearestMob = v.HumanoidRootPart.CFrame
                            BringNearest = true
                        until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoFarmNearest
                    end
                end
            end
        end)
    end
end)

local BossSection = G.CreateSection('Boss')

if taodangosea1 then
    BossList = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif taodangosea2 then
    BossList = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif taodangosea3 then
    BossList = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end

BossSection.CreateDropdown({Title = 'Boss List', List = BossList, Default = "", Search = true, Selected = false}, function(Value)
    getgenv().SelectBoss = Value
end)

BossSection.CreateToggle({Title = 'GetQuest Boss', Desc = 'Auto GetQuest Boss Selected', Default = false}, function(Value)
    _G.GetQuestBoss = Value
end)

BossSection.CreateToggle({Title = 'Auto Boss', Desc = 'Auto Boss Selected', Default = false}, function(Value)
    _G.AutoBoss = Value
end)

spawn(function()
    while task.wait() do
        if _G.AutoBoss and not _G.GetQuestBoss then
            pcall(function()
                CheckBoss()
                if game:GetService("Workspace").Enemies:FindFirstChild(Boss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == Boss then
                            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and _G.AutoBoss then
                                repeat wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoBoss
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            Taixiu(CFrameBoss)
                        elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                            Tween(CFrameBoss)
                        else
                            Tween(CFrameBoss)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoBoss and _G.GetQuestBoss then
            pcall(function()
                CheckBoss()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude > 2000 then
                            Taixiu(CFrameQuestBoss)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 2000 then
                            Tween(CFrameQuestBoss)
                        end
                    else
                        Tween(CFrameQuestBoss)
                    end
                    if (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, NumberQuestBoss)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckBoss()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Boss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Boss then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                                        repeat wait()
                                            EquipTool(_G.UsingTool)
                                            EnableBuso()                                            
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                        until not _G.AutoBoss or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            end
                        end
                    else
                        if BypassTP then
                            if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                Taixiu(CFrameBoss)
                            elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                Tween(CFrameBoss)
                            else
                                Tween(CFrameBoss)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local FarmOtherSection = G.CreateSection('Farmming Others')

FarmOtherSection.CreateToggle({Title = 'Auto Elite', Desc = 'GetQuest Elite and Find To Kill In Third Sea.', Default = false}, function(Value)
    _G.AutoElite = Value
end)

spawn(function()
    while task.wait() do
        if _G.AutoElite and taodangosea3 then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") and not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") and not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EnableBuso()
                                            EquipTool(_G.UsingTool)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoElite or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end                    
                        end
                    end
                end
            end)
        end
    end
end)

FarmOtherSection.CreateToggle({Title = 'Auto Factory', Desc = 'Auto Attack Core By Factory In Seconds Sea.', Default = false}, function(Value)
    _G.AutoFactory = Value
end)

spawn(function()
    while task.wait() do
        if _G.AutoFactory and taodangosea2 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" then
                            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and _G.AutoFactory then
                                repeat wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                until _G.AutoFactory == false or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(448.46756, 199.356781, -441.389252).Position).Magnitude > 2000 then
                            Taixiu(CFrame.new(448.46756, 199.356781, -441.389252))
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

FarmOtherSection.CreateToggle({Title = 'Auto Castle Raid', Desc = 'Auto Attack Pirates In Castle And Get Random Fruit.', Default = false}, function(Value)
    _G.AutoCastleRaid = Value
end)

local CastlePos = CFrame.new(-5496.17432, 313.768921, -2841.53027)
spawn(function()
    while wait() do
        if _G.AutoCastleRaid and taodangosea3 then
            pcall(function()
                if (CastlePos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoCastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoCastleRaid
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CastlePos.Position).Magnitude > 2000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5005.29834, 314.858734, -3025.00659))
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CastlePos.Position).Magnitude < 2000 then
                            Tween(CastlePos)
                        end
                    end
                end
            end)
        end
    end
end)

local SeaBypassSection = IQ.CreateSection('Auto Sea')

SeaBypassSection.CreateToggle({Title = 'Auto Seconds Sea', Desc = 'Auto Quest Go To Sea 2.', Default = false}, function(Value)
    _G.AutoSea2 = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoSea2 and CheckLevel >= 700 then
                if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                    Tween(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                    if (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                    end
                    wait(0.5)
                    EquipTool("Key")
                    wait(0.5)
                    Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                end
            elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "Ice Admiral" then
                        if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and _G.AutoSea2 then
                            repeat task.wait()
                                EquipTool(_G.UsingTool)
                                EnableBuso()                                            
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                Tween(v.HumanoidRootPart.CFrame * Dodge)
                            until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoSea2
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                end
            end
        end)
    end
end)

local Meleesection = IQ.CreateSection('Melee Style')

Meleesection.CreateToggle({Title = 'Auto Superhuman', Desc = 'If Your Using Combat Melee, function will buy Black leg and farm to 300 mastery and buy electro farm to 300 mastery and repeat with fishman karate and dragon claw', Default = false}, function(Value)
    _G.AutoSuperhuman = Value
end)

spawn(function()
    pcall(function()
        while wait() do 
            if _G.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipTool("Combat")
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    SelectWP = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        SelectWP = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        SelectWP = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        SelectWP = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        SelectWP = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipTool("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipTool("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipTool("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipTool("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipTool("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipTool("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipTool("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipTool("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)

local QuestSection = IQ.CreateSection('Quest')

QuestSection.CreateToggle({Title = 'Auto Bartilo Quest', Desc = 'Auto Bartilo Quest If Your Level 850.', Default = false}, function(Value)
    _G.Bartilonhucac = Value
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Bartilonhucac then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Swan Pirate" then
                                    repeat task.wait()
                                        EquipTool(_G.UsingTool)
                                        EnableBuso()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))													
                                        PosMobBartilo =  v.HumanoidRootPart.CFrame
                                        BringBartilo = true
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.Bartilonhucac == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    BringBartilo = false
                                end
                            end
                        else
                            repeat 
                                Tween(CFrame.new(932.624451, 156.106079, 1180.27466)) 
                                wait() 
                            until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466)).Magnitude <= 10
                        end
                    else
                        repeat 
                            Tween(CFrame.new(-456.28952, 73.0200958, 299.895966)) 
                            wait() 
                        until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jeremy" then
                                repeat task.wait()
                                    EquipTool(_G.UsingTool)
                                    EnableBuso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    PosJeremy = v.HumanoidRootPart.CFrame
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))			
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.Bartilonhucac == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat 
                            Tween(CFrame.new(-456.28952, 73.0200958, 299.895966)) 
                            wait() 
                        until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat 
                            Tween(CFrame.new(2099.88159, 448.931, 648.997375)) 
                            wait() 
                        until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat 
                            Tween(CFrame.new(2099.88159, 448.931, 648.997375)) 
                            wait() 
                        until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat 
                        Tween(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1869.54224, 15.987854, 1681.00659)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1819.26343, 14.795166, 1717.90625)) 
                        wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat 
                        Tween(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) 
                    wait() 
                    until not _G.Bartilonhucac or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end 
        end
    end)
end)

QuestSection.CreateToggle({Title = 'Auto Ghoul Race', Desc = 'If Your Not Have Ghoul Race, function when check boss cursed captan in Cursed Ship to kill, if have torch will teleport to npc and get ghoul race(not kuttay)', Default = false}, function(Value)
    _G.AutoGhoulRace = Value
end)

local PosCursedBoss = CFrame.new(913.893311, 187.405502, 33598.7578)
local PosGhoulRace = CFrame.new(923.748596, 125.529785, 33454.4883)
spawn(function()
    while wait() do
        if _G.AutoGhoulRace and taodangosea2 then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hellfire Torch") then
                    if BypassTP then
                        if (PosGhoulRace.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        elseif (PosGhoulRace.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                            Tween(PosGhoulRace)
                            wait(0.5)
                            local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    else
                        Tween(PosGhoulRace)
                        wait(0.5)
                        local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hellfire Torch") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cursed Captain" then
                                if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and _G.AutoGhoulRace then
                                    repeat wait()
                                        EnableBuso()
                                        EquipTool(_G.UsingTool)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    until v.Humanoid.Health <= 0 or not v:FindFirstChild("HumanoidRootPart") or not v.Parent or _G.AutoGhoulRace == false
                                    _G.AutoClick = false
                                end
                            end
                        end
                    else
                        if BypassTP then
                            if (PosCursedBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            elseif (PosCursedBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                Tween(PosCursedBoss)
                            end
                        else
                            Tween(PosCursedBoss)
                        end
                    end
                else
                    if game.Players.LocalPlayer.Data.Race.Value == "Ghoul" then
                        Notify("Your Race Are Ghoul!!!", 5)
                        wait(6)
                    end
                end
            end)
        end
    end
end)

QuestSection.CreateToggle({Title = 'Auto Third Sea', Desc = 'Auto Third Sea là Auto Third Sea còn gì nữa.', Default = false}, function(Value)
    _G.AutoThirdSea = Value
end)

spawn(function()
    while wait() do
        if _G.AutoThirdSea and taodangosea2 and Mainchinh.Data.Level.Value >= 1500 then
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                    Tween(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                    wait(.1)
                    if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - Mainchinh.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                    end
                    wait(.1)
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "rip_indra" then
                                    repeat wait()
                                        EnableBuso()
                                        EquipTool(_G.UsingTool)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                    until v.Humanoid.Health <= 0 or not _G.AutoThirdSea or not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                    _G.AutoClick = false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local ItemandFarmSection = IQ.CreateSection('Item & Farm')

ItemandFarmSection.CreateToggle({Title = 'Auto Pole', Desc = 'Cướp Pole. Thế thôi', Default = false}, function(Value)
    _G.Autoditthansam = Value
end)

local thanvoichalasamnhucac = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
spawn(function()
    while wait() do
        if _G.Autoditthansam and taodangosea1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Thunder God" and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Parent then
                            repeat wait()
                                EnableBuso()
                                EquipTool(_G.UsingTool)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)       
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            until v.Humanoid.Health <= 0 or not _G.Autoditthansam or not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                        end
                    end
                else
                    if BypassTP then
                        if (thanvoichalasamnhucac.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                        elseif (thanvoichalasamnhucac.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                            Tween(thanvoichalasamnhucac)
                        end
                    else
                        Tween(thanvoichalasamnhucac)
                    end
                end
            end)
        end
    end
end)

ItemandFarmSection.CreateToggle({Title = 'Auto Glass Cyborg', Desc = 'Cướp Kính thằng Franky Okê. Thế thôi', Default = false}, function(Value)
    _G.Ditmemayduacaikinhday = Value
end)

local ditmemaythaocaikinhra = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
spawn(function()
    while wait() do
        if _G.Ditmemayduacaikinhday and taodangosea1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cyborg" and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Parent then
                            repeat wait()
                                EnableBuso()
                                EquipTool(_G.UsingTool)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)       
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            until v.Humanoid.Health <= 0 or not _G.Ditmemayduacaikinhday or not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                        end
                    end
                else
                    if BypassTP then
                        if (ditmemaythaocaikinhra.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            Taixiu(ditmemaythaocaikinhra)
                        elseif (ditmemaythaocaikinhra.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                            Tween(ditmemaythaocaikinhra)
                        end
                    else
                        Tween(ditmemaythaocaikinhra)
                    end
                end
            end)
        end
    end
end)

ItemandFarmSection.CreateToggle({Title = 'Auto Swan', Desc = 'Teleport To Swan and wait boss spawn. If Boss Spawn and your are give NPC Fruit > 1000000 beli then Teleport To Swan And KILL', Default = false}, function(Value)
    _G.AutoSwan = Value
end)

local PosSwanRoom = CFrame.new(2284.91211, 15.1520348, 905.48291)
spawn(function()
    while wait() do
        if _G.AutoSwan and taodangosea2 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Don Swan" then
                                repeat wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                until v.Humanoid.Health <= 0 or not _G.AutoSwan or not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                _G.AutoClick = false
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (PosSwanRoom.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.91211, 15.1520348, 905.48291))
                        elseif (PosSwanRoom.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                            Tween(PosSwanRoom)
                        end
                    else
                        Tween(PosSwanRoom)
                    end
                end
            end)
        end
    end
end)

ItemandFarmSection.CreateToggle({Title = 'Auto Admin', Desc = 'Nói chung là đánh boss rip indra', Default = false}, function(Value)
    _G.AutoAdmin = Value
end)

local PosAdmin = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
spawn(function()
    while wait() do
        if _G.AutoAdmin and taodangosea3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "rip_indra" or v.Name == "rip_indra True Form" then
                            if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                until _G.AutoAdmin == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart")
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (PosAdmin.Position - Mainchinh.Character.HumanoidRootPart.Position).Magnitude >= 2500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5005.29834, 314.858734, -3025.00659))
                        elseif (PosAdmin.Position - Mainchinh.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
                            Tween(PosAdmin)
                        end
                    else
                        Tween(PosAdmin)
                    end
                end
            end)
        end
    end
end)

ItemandFarmSection.CreateToggle({Title = 'Auto DarkBeard', Desc = 'Đánh Râu đen. Thế không cần giải thích j hết ok?', Default = false}, function(Value)
    _G.AutoChimden = Value
end)

local PosChimden = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
spawn(function()
    while wait() do
        if _G.AutoChimden and taodangosea2 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")  then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Darkbeard" then
                            if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                until _G.AutoChimden == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart")
                            end
                        end
                    end
                else
                    Tween(PosChimden)
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)

ItemandFarmSection.CreateToggle({Title = 'Auto Auto Dough King', Desc = 'Đjt Dough King. Hết', Default = false}, function(Value)
    _G.AutoDoughKing = Value
end)

local PosGlass = CFrame.new(-2125.64282, 70.3262863, -12400.6777)
spawn(function()
    while task.wait() do
        if _G.AutoDoughKing then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dough King" then
                            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and _G.AutoDoughKing then
                                repeat wait()
                                    EnableBuso()
                                    EquipTool(SelectWP)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoDoughKing
                            end
                        end
                    end
                else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosGlass.Position).Magnitude > 2000 then
                            Taixiu(PosGlass)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosGlass.Position).Magnitude < 2000 then
                            Tween(PosGlass)
                        end
                    else
                        Tween(PosGlass)
                    end
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end
                end
            end)
        end
    end
end)

local DevilFruitSection = DR.CreateSection('Devil Fruit')

DevilFruitSection.CreateButton({Title = 'Random Fruit'}, function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy") 
end)

DevilFruitSection.CreateToggle({Title = 'Auto Random Fruit', Desc = 'Auto Random Fruit.', Default = false}, function(Value)
    _G.AutoRandom = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoRandom then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy") 
            end
        end)
    end
end)

DevilFruitSection.CreateToggle({Title = 'Auto Store', Desc = 'Auto Store Fruit In Your BackPack.', Default = false}, function(Value)
    _G.AutoStore = Value
end)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.AutoStore then
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bomb-Bomb",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spike-Spike",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Chop-Chop",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spring-Spring",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rocket-Rocket",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Smoke-Smoke",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spin-Spin",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Flame-Flame",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bird-Bird: Falcon",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Ice-Ice",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Sand-Sand",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dark-Dark",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Ghost-Ghost",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Diamond-Diamond",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Light-Light",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Love-Love",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rubber-Rubber",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Barrier-Barrier",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Magma-Magma",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Door-Door",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Quake-Quake",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                )
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Human-Human: Buddha",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                )
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spider-Spider",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bird-Bird: Phoenix",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rumble-Rumble",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Pain-Pain",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Gravity-Gravity",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dough-Dough",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Shadow-Shadow",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Venom-Venom",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Control-Control",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spirit-Spirit",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dragon-Dragon",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Leopard-Leopard",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Kitsune-Kitsune",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit")
                            )
                        end
                    end
                end
            )
        end
    end
)

DevilFruitSection.CreateToggle({Title = 'Teleport To Fruit', Desc = 'If Have Fruit In Servers, Players When Teleport To Fruit.', Default = false}, function(Value)
    _G.TeleportFruit = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.TeleportFruit then
                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("Fruit") then
                        Tween(v.Handle.CFrame)
                    end
                end
            end
        end)
    end
end)

FruitList = {
    "Rocket-Rocket",
    "Spin-Spin",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Bird: Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
    "Revive-Revive",
    "Diamond-Diamond",
    "Light-Light",
    "Love-Love",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
    "Portal-Portal",
    "Quake-Quake",
    "Human-Human: Buddha",
    "Spider-Spider",
    "Bird-Bird: Phoenix",
    "Rumble-Rumble",
    "Pain-Pain",
    "Gravity-Gravity",
    "Dough-Dough",
    "Venom-Venom",
    "Shadow-Shadow",
    "Control-Control",
    "Spirit-Spirit",
    "Dragon-Dragon",
    "Leopard-Leopard",
    "Kitsune-Kitsune"
}

local Laytraiacquydithangngu = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
FruitSnipeList = {}
SellSellConcac = {}
for i,v in next,Laytraiacquydithangngu do
	table.insert(FruitSnipeList,v.Name)
	if v.OnSale then 
		table.insert(SellSellConcac,v.Name)
	end
end
	
DevilFruitSection.CreateDropdown({Title = 'Select Fruit Snipe', List = FruitSnipeList, Search = true, Selected = false}, function(Value)
    _G.SelectSnipe = Value
end)

DevilFruitSection.CreateToggle({Title = 'Auto Buy Snipe Fruit', Desc = 'Auto Buy Fruit In Shop If Sell.', Default = false}, function(Value)
    _G.AutoSnipeFruit = Value
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoSnipeFruit then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectSnipe)
            end 
        end
    end)
end)

local RaidSection = DR.CreateSection('Raid')

_G.SelectChip = selectchip or ""
    ChipList = {}
    raidraidcaiconcac = require(game.ReplicatedStorage.Raids)
    for i,v in pairs(raidraidcaiconcac.raids) do
        table.insert(ChipList,v)
    end
    for i,v in pairs(raidraidcaiconcac.advancedRaids) do
        table.insert(ChipList,v)
end

RaidSection.CreateDropdown({Title = 'Select Chips', List = ChipList, Search = true, Selected = false}, function(Value)
    _G.SelectChip = Value
end)

RaidSection.CreateButton({Title = 'Buy Chip'}, function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
end)

RaidSection.CreateButton({Title = 'Teleport To Raid Room'}, function()
    Raidroom()
end)

RaidSection.CreateToggle({Title = 'KillAura', Desc = 'Kill Mob Very Fast In Raid.', Default = false}, function(Value)
    _G.KillAura = Value
end)

spawn(function()
    while wait() do
        if _G.KillAura then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent then
                            repeat wait()
                                v.Humanoid.Health = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until v.Humanoid.Health <= 0 or not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                        end
                    end
                end
            end)
        end
    end
end)

RaidSection.CreateToggle({Title = 'Next Island', Desc = 'Auto Teleport To New Island In Raid.', Default = false}, function(Value)
    _G.NextIsland = Value
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.NextIsland then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(2, 20 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *CFrame.new(2, 60 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *CFrame.new(2, 20 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *CFrame.new(2, 20 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *CFrame.new(2, 20 ,2))
                    end
                end
            end
        end
    end)
end)

spawn(function()    
    while wait() do
        if _G.NextIsland then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                if v.Name == "NotificationTemplate" then
                    if string.find(v.Text,"#1") then
                        Notify("Ez Island 1", 5)
                        wait(5)
                    elseif string.find(v.Text,"#2") then
                        Notify("Ez Island 2", 5)
                        wait(5)
                    elseif string.find(v.Text,"#3") then
                        Notify("Ez Island 3", 5)
                        wait(5)
                    elseif string.find(v.Text,"#4") then
                        Notify("Ez Island 4", 5)
                        wait(5)
                    elseif string.find(v.Text,"#5") then
                        Notify("Ez Island 5", 5)
                        wait(5)
                    end
                end
            end
        end
    end
end)

RaidSection.CreateToggle({Title = 'Auto Wakening', Desc = 'Auto Wakening If Raid Done.', Default = false}, function(Value)
    _G.Wakening = Value
end)

local PosWakeningRoomsea2 = CFrame.new(243.465836, 1.36005056, 1810.29993)
local PosWakeningRoomsea3 = CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062)
spawn(function()
    while wait() do
        if _G.Wakening then
            if taodangosea2 then
                if (PosWakeningRoomsea2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    wait(0.95)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            elseif taodangosea3 then
                if (PosWakeningRoomsea3.Position - Mainchinh.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    wait(0.95)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end
    end
end)

local StatusServers = STT.CreateSection('Status')

local LevelPlayers = StatusServers.CreateLabel({Title = "Your Level : Infinity"})

local Moon = StatusServers.CreateLabel({Title = "Wait Update"})

local Mirage = StatusServers.CreateLabel({Title = "Mirage Island : 🔴"})

local Kitsune = StatusServers.CreateLabel({Title = "Kitsune Island : 🔴"})

local FruitSpawn = StatusServers.CreateLabel({Title = "Fruit Spawn : 🔴"})

spawn(function()
    while wait() do
        pcall(function()
            LevelPlayers.SetText("Your Level : ".. game.Players.LocalPlayer.Data.Level.Value.. " ")
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                Mirage.SetText("Mirage Island : 🟢")
            else
                Mirage.SetText("Mirage Island : 🔴")
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild('KitsuneIsland') then
                Kitsune.SetText("Kitsune Island : 🟢")
            else
                Kitsune.SetText("Kitsune Island : 🔴")
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    FruitSpawn.SetText("Fruit Spawned : 🟢")
                else
                    FruitSpawn.SetText("Fruit Not Spawned : 🔴")
                end
            end
        end)
    end
end)

local ServerSection = STT.CreateSection('Servers')

ServerSection.CreateBox({Title = 'Put Job Id Here!', Placeholder = '', Number_Only = false}, function(Value)
    getgenv().Jobid = Value
end)

ServerSection.CreateButton({Title = 'Join JobId'}, function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,getgenv().Jobid, game.Players.LocalPlayer)
end)

ServerSection.CreateButton({Title = 'Hop Servers'}, function()
    Hop()
end)

local LCSection = PV.CreateSection('LocalPlayer')

LCSection.CreateDropdown({Title = 'Select Travel', List = {"1", "2", "3"}, Default = "1", Search = false, Selected = false}, function(Value)
    _G.SelectTravel = Value
end)

LCSection.CreateButton({Title = 'Teleport To Travel'}, function()
    if _G.SelectTravel == "1" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    elseif _G.SelectTravel == "2" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    elseif _G.SelectTravel == "3" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
end)

if taodangosea1 then
    IslandList = {"WindMill","Marine","Middle Town","Jungle","Pirate Village","Desert","Snow Island","MarineFord","Colosseum","Sky Island 1","Sky Island 2","Sky Island 3","Prison","Magma Village","Under Water Island","Fountain City","Shank Room","Mob Island"}
elseif taodangosea2 then
    IslandList = {"The Cafe","Frist Spot","Dark Area","Flamingo Mansion","Flamingo Room","Green Zone","Factory","Colossuim","Zombie Island","Two Snow Mountain","Punk Hazard","Cursed Ship","Ice Castle","Forgotten Island","Ussop Island","Mini Sky Island"}
elseif taodangosea3 then
    IslandList = {"Mansion","Port Town","Great Tree","Castle On The Sea","MiniSky", "Hydra Island","Floating Turtle","Haunted Castle","Ice Cream Island","Peanut Island","Cake Island","Cocoa Island","Tiki Outpost New","Candy Island New⛄"}
end

LCSection.CreateDropdown({Title = 'Select Island', List = IslandList, Default = "", Search = true, Selected = false}, function(Value)
    _G.didianhbao = Value
end)

LCSection.CreateToggle({Title = 'Teleport To Island', Desc = 'Teleport To Island Your Selected.', Default = false}, function(Value)
    _G.LetsGoooo = Value
    if _G.LetsGoooo == true then
        if _G.didianhbao == "WindMill" then
            Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.didianhbao == "Marine" then
            Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.didianhbao == "Middle Town" then
            Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.didianhbao == "Jungle" then
            Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.didianhbao == "Pirate Village" then
            Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.didianhbao == "Desert" then
            Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.didianhbao == "Snow Island" then
            Tween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.didianhbao == "MarineFord" then
            Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.didianhbao == "Colosseum" then
            Tween(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.didianhbao == "Sky Island 1" then
            Tween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.didianhbao == "Sky Island 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif _G.didianhbao == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif _G.didianhbao == "Prison" then
            Tween(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.didianhbao == "Magma Village" then
            Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.didianhbao == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.didianhbao == "Fountain City" then
            Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.didianhbao == "Shank Room" then
            Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.didianhbao == "Mob Island" then
            Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.didianhbao == "The Cafe" then
            Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.didianhbao == "Frist Spot" then
            Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.didianhbao == "Dark Area" then
            Tween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.didianhbao == "Flamingo Mansion" then
            Tween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif _G.didianhbao == "Flamingo Room" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.91211, 15.1520348, 905.48291))
        elseif _G.didianhbao == "Green Zone" then
            Tween(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.didianhbao == "Factory" then
            Tween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.didianhbao == "Colossuim" then
            Tween(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.didianhbao == "Zombie Island" then
            Tween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.didianhbao == "Two Snow Mountain" then
            Tween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.didianhbao == "Punk Hazard" then
            Tween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.didianhbao == "Cursed Ship" then
            game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif _G.didianhbao == "Ice Castle" then
            Tween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.didianhbao == "Forgotten Island" then
            Tween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.didianhbao == "Ussop Island" then
            Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.didianhbao == "Mini Sky Island" then
            Tween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.didianhbao == "Great Tree" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5071.82324,314.858734,-3150.69922))
            wait(0.5)
            Tween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.didianhbao == "Castle On The Sea" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5005.29834, 314.858734, -3025.00659))
        elseif _G.didianhbao == "MiniSky" then
            Tween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.didianhbao == "Port Town" then
            Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif _G.didianhbao == "Hydra Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5743.34863, 610.767273, -266.806061))
        elseif _G.didianhbao == "Floating Turtle" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236, 337.511505, -7470.36328))
            wait(0.5)
            Tween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.didianhbao == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236, 337.511505, -7470.36328))
        elseif _G.didianhbao == "Haunted Castle" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5071.82324,314.858734,-3150.69922))
            wait(0.5)
            Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.didianhbao == "Ice Cream Island" then
            Tween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5071.82324,314.858734,-3150.69922))
            wait(0.5)
        elseif _G.didianhbao == "Peanut Island" then
            Tween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.didianhbao == "Cake Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5071.82324,314.858734,-3150.69922))
            wait(0.5)
            Tween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        elseif _G.didianhbao == "Cocoa Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5071.82324,314.858734,-3150.69922))
            wait(0.5)
            Tween(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
        elseif _G.didianhbao == "Candy Island New⛄" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5071.82324,314.858734,-3150.69922))
            wait(0.5)
            Tween(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
        elseif _G.didianhbao == "Tiki Outpost New" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236, 337.511505, -7470.36328))
            wait(0.5)
            Tween(CFrame.new(-16101.1885,12.8422165,380.942291))
        end
    else
        _G.Emdungdiiiii = true
        wait(0.5)
        _G.Emdungdiiiii = false
    end
end)

local PVPSection = PV.CreateSection('PVP')

cobaonhieuthangtaocanhet = {}
    
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(cobaonhieuthangtaocanhet,v.Name)
end

PVPSection.CreateDropdown({Title = 'Players List', List = cobaonhieuthangtaocanhet, Search = true, Selected = false}, function(Value)
    getgenv().thangnaya = Value
end)

PVPSection.CreateToggle({Title = 'Teleport To Player(Select)', Desc = 'Select Players Your Need Teleport And Turn On Toggle Here To Teleport.', Default = false}, function(Value)
    getgenv().didenthangkia = Value
    if getgenv().didenthangkia then
        repeat 
            Tween(game:GetService("Players")[getgenv().thangnaya].Character.HumanoidRootPart.CFrame) 
        until getgenv().didenthangkia == false
    end
end)

local TweenRace = RC.CreateSection('Teleport Upgrate Race')

TweenRace.CreateButton({Title = 'Teleport To Top On Great Tree'}, function()
    TweenTopOnGreatTree()
end)

TweenRace.CreateButton({Title = 'Teleport To Temple'}, function()
    TweenTemplete()
end)

TweenRace.CreateButton({Title = 'Teleport To Lever Pull'}, function()
    Tween(CFrame.new(28576.4688,14939.2832,76.5164413))
end)

local PosTemplete = CFrame.new(28282.5703125, 14896.8505859375, 105.1042709350586)
TweenRace.CreateButton({Title = 'Teleport To Doors Trial'}, function()
    if taodangosea3 then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude > 1000 then
            TweenTemplete()
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude < 1000 then
            wait(1)
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                wait(1)
                Tween(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                wait(1)
                Tween(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                wait(1)
                Tween(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                wait(1)
                Tween(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                wait(1)
                Tween(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                wait(1)
                Tween(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
            end
        end
    end
end)

TweenRace.CreateButton({Title = 'Teleport To Clock'}, function()
    if taodangosea3 then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude > 1000 then
            TweenTemplete()
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude < 1000 then
            wait(1)
            Tween(CFrame.new(29551.9941, 15069.002, -85.5179291))
        end
    end
end)

TweenRace.CreateButton({Title = 'Teleport To Anclient One'}, function()
    if taodangosea3 then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude > 1000 then
            TweenTemplete()
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude < 1000 then
            wait(1)
            Tween(CFrame.new(28973.0879, 14889.9756, -120.298691))
        end
    end
end)

local ToggleTrial = RC.CreateSection('Trials')

ToggleTrial.CreateToggle({Title = 'Auto Trials', Desc = 'Thì là Auto Trial.', Default = false}, function(Value)
    _G.AutoTrial = Value
end)

local RaceCheck = game:GetService("Players").LocalPlayer.Data.Race.Value
local CFrameCyborg = CFrame.new(-20021.8691,10090.4893,-16.37994)
spawn(function()
    while wait() do
        if _G.AutoTrials then
            pcall(function()
                if RaceCheck == "Human" then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and _G.AutoTrials then
                                repeat wait()
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoTrials
                            end
                        end
                    end
                elseif RaceCheck == "Skypiea" then
                    for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if v.Name ==  "snowisland_Cylinder.081" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                            Tween(v.CFrame * CFrame.new(0 ,0 ,0))
                        end
                    end
                elseif RaceCheck == "Cyborg" then
                    if (CFrameCyborg.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                        Tween(CFrameCyborg)
                    end
                elseif RaceCheck == "Mink" then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v.Name == "StartPoint" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            Tween(v.CFrame * CFrame.new(0, 3, 0))
                        end
                    end
                elseif RaceCheck == "Ghoul" then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and _G.AutoTrials then
                                repeat wait()
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoTrials
                            end
                        end
                    end
                end
            end)
        end
    end
end)

ToggleTrial.CreateToggle({Title = 'Auto Kill Kid After Trials', Desc = 'Beta thôi, cần AttackNoCD mới ngol', Default = false}, function(Value)
    _G.KillKidTrials = Value
end)

local PosPvp = CFrame.new(28727.4941, 14887.877, -87.3792191)
spawn(function()
    while wait() do
        if _G.KillKidTrials then
            pcall(function()
                for i, v in pairs(game.Workspace.Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 200 then
                            if (PosPvp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                repeat wait()
                                    EnableBuso()
                                    EquipTool(_G.UsingTool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 3))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    dungskilldithangngu = true
                                    _G.AutoClick = true
                                until _G.KillKidTrials == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
                                dungskilldithangngu = false
                                _G.AutoClick = false
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
        if _G.KillKidTrials and getgenv().BatHakilen then
            repeat wait()
                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    SendKey("E")
                end
            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.KillKidTrials
        end
    end
end)

spawn(function()
    while wait() do
        if dungskilldithangngu then
            pcall(function()
                if getgenv().SkillZ then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                    if getgenv().SkillX then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        if getgenv().SkillC then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                            wait(0.1)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                        end
                    end
                end
            end)
        end
    end
end)

local BoatSection = SE.CreateSection('Boats')

BoatSection.CreateButton({Title = 'Teleport To NPC Buy Boats(Tiki)'}, function()
    Tween(CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906))
    wait(0.5)
    if (CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906).Position - MainChinh.Character.HumanoidRootPart.Position).Magnitude <= 10 then   
        local args = {
            [1] = "BuyBoat",
            [2] = "PirateGrandBrigade"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end)

BoatSection.CreateSlider({Title = "Speed Boats", Min = 250, Max = 350, Default = 275, Precise = false}, function(Value)
    getgenv().SpeedBoats = Value
end)

BoatSection.CreateToggle({Title = 'Enable Speed Boats', Desc = 'Thuyền nhanh. Hết', Default = false}, function(Value)
    getgenv().DjtBoats = Value
end)

spawn(function()
    while wait() do
        if getgenv().DjtBoats then
            for i, v in pairs(workspace.Boats:GetChildren()) do
                if v:FindFirstChild("Owner") then
                    if v:FindFirstChild("Owner").Value == game.Players.LocalPlayer then
                        table.foreach(v:GetDescendants(), function(a, child)
                            if child:IsA("BasePart") or child:IsA("MeshPart") or child:IsA("Part") then
                            child.CanCollide = false
                            end
                        end)
                        v:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Value"):Connect(function(g)
                            if g == 0 then
                            print("Vailon")
                        end
                    end)
                    repeat wait()
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v:FindFirstChild("VehicleSeat").CFrame * CFrame.new(0, 3, 0))
                        until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true
                        v:FindFirstChild("VehicleSeat").MaxSpeed = getgenv().SpeedBoats
                    end
                end
            end
        end
    end
end)

BoatSection.CreateToggle({Title = 'Teleport To Your Boat', Desc = 'Di chuyển tới thuyền. Hết', Default = false}, function(Value)
    _G.chanvaidai = Value
end)

spawn(function()
    while wait() do
        if MainChinh.Character.Humanoid.Sit == false then
            Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
        end
    end
end)

SeaEventSection.CreateDropdown({Title = 'Select Zone', List = {"1", "2", "3", "4", "5", "6"}, Default = "0.15", Search = false, Selected = false}, function(Value)
    _G.SelectZone = Value
end)

SeaEventSection.CreateToggle({Title = 'Start Sea Event', Desc = 'Enabled Function Sea Event(Only Sea 3)', Default = false}, function(Value)
    getgenv().StartSeaEvent = Value
end)

spawn(function()
    while wait() do
        if getgenv().StartSeaEvent then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    if not game:GetService("Workspace").Boat:FindFirstChild("PirateGrandBrigade") then
                        Tween(CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906))
                        wait(0.5)
                        if (CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906).Position - MainChinh.Character.HumanoidRootPart.Position).Magnitude <= 10 then   
                            local args = {
                                [1] = "BuyBoat",
                                [2] = "PirateGrandBrigade"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false then
                            Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                        else
                            if game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                repeat wait()
                                    if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                    elseif (CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TweenShip(CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375))
                                    elseif (CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                    end 
                                until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or getgenv().StartSeaEvent == false
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
            if getgenv().StartSeaEvent then
                if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    MainChinh.Character.Humanoid.Sit = false
                end
            end
        end
    end)
end)

local TweenSpeedSection = ST.CreateSection('Tween Speed')

TweenSpeedSection.CreateDropdown({Title = 'Tween Speed', List = {"180", "200", "250", "300", "325", "350"}, Default = "180", Search = true, Selected = false}, function(Value)
    getgenv().TweenSpeed = Value
end)

local FastAttackSection = ST.CreateSection('FastAttack')

FastAttackSection.CreateToggle({Title = 'Fast Attack', Desc = 'Speed Attack No Delay And Large Hit.', Default = true}, function(Value)
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

FastAttackSection.CreateDropdown({Title = 'Fast Attack Cooldown', List = {"0", "0.1", "0.15", "0.155", "0.16", "0.165", "0.17", "0.175", "0.18", "0.185"}, Default = "0.15", Search = true, Selected = false}, function(Value)
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

local BringMobSection = ST.CreateSection('Bring Mobs')

BringMobSection.CreateToggle({Title = 'Bring Mobs', Desc = 'Gather the surrounding monsters in one place when you enable a function related to Farming', Default = true}, function(Value)
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

local BypassTeleportSection = ST.CreateSection('Bypass Teleport')

BypassTeleportSection.CreateToggle({Title = 'Bypass Teleport', Desc = 'If your location is too far from where it needs to go, it will use the death method and fly to that location quickly (if you have Gods Chaile or Darkbeard Key in your inventory, dont turn it on).', Default = true}, function(Value)
    BypassTP = Value
end)

ServerSection.CreateButton({Title = 'Rejoin'}, function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

if game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit') then
    game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit'):Destroy()
end

getgenv().NoDieEffect = true
if getgenv().NoDieEffect then
    local effectContainer = game:GetService("ReplicatedStorage").Effect.Container
    if effectContainer:FindFirstChild("Death") then
        effectContainer.Death:Destroy()
    end
    if effectContainer:FindFirstChild("Respawn") then
        effectContainer.Respawn:Destroy()
    end
end

function BypassAntiCheats()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
    end
end
BypassAntiCheats()

assert(getrawmetatable)
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)

spawn(function()
    while wait() do
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
                Hop()
            end
        end
    end
end)

Notify("Loaded Script Completed", 5)
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi", true))()
    local CenterHubNo1 = library:CreateWindow("Winnable Hub | จุดพักใจ -- Right Control",Enum.KeyCode.RightControl)
    local Tab = CenterHubNo1:CreateTab("Main")
    local Sector1 = Tab:CreateSector("Main","left")
    local Sector2 = Tab:CreateSector("Boombox","Right")
    Sector1:AddLabel("Credit : Winnable Hub")
        Sector1:AddButton("Copy Discord",function(t)
      setclipboard("https://discord.gg/t97DRzvVgN")
        end)
        
Sector1:AddLabel(">>> Need Boombox <<<")

    Sector1:AddToggle("เพลงเสียงดังๆ (ปิดไมค์คนได้)",false,function(t)
        _G.TOXIC = t
    end)
    
    Sector1:AddToggle("White Screen",false,function(t)
        _G.WSCR = t
    end)
    
    Sector2:AddTextbox("Music ID","",function(t)
        ID = t
    end)
    
        Sector2:AddButton("OPEN MUSIC",function(t)
      local args = {
    [1] = ID,
    [2] = false,
    [3] = 25,
    [4] = 0.2
}

workspace.DRadio_Script.Event:FireServer(unpack(args))
        end)
        
        spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.WSCR then
    game.RunService:Set3dRenderingEnabled(false)
elseif _G.WSCR == false then
   game.RunService:Set3dRenderingEnabled(true)
        end
        end)
       end)
        end)
        
        spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.TOXIC then
local args = {
    [1] = 7177681888,
    [2] = false,
    [3] = 25,
    [4] = 0.8
}

workspace.DRadio_Script.Event:FireServer(unpack(args))
        end
        end)
       end)
        end)

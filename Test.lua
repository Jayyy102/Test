local function notify(text)
    if messagebox and (typeof(messagebox)) == "function" then
        messagebox(text, "PurpleWare Installer", 0)
    end
end
if not writefile or not readfile then
    notify("Unable to Install using Script because 'writefile' or 'readfile' is unsupported.")
    return
end
local function isfile2(path)
    local suc, err = pcall(function()
        readfile(path)
    end)
    return suc
end

if isfile2("vape/CustomModules/6872274481.lua") then
    writefile("vape/CustomModules/Old6872274481.lua", readfile("vape/CustomModules/6872274481.lua"))
    writefile("vape/CustomModules/6872274481.lua", [[loadstring(game:HttpGet("https://https://raw.githubusercontent.com/Jayyy102/Modules/main/Modules"))()]])
    notify("PurpleWare Installed! Old custom You were Using has been Written to vape/CustomModules/Old6872274481.lua")
else
    writefile("vape/CustomModules/6872274481.lua", [[loadstring(game:HttpGet("https://https://raw.githubusercontent.com/Jayyy102/Modules/main/Modules"))()]])
    if shared.GuiLibrary ~= nil and shared.VapeExecuted then
        notify("PurpleWare Installed! Please restart vape for Changes to Load/Save.")
    else
        notify("PurpleWare Installed!")
    end
end

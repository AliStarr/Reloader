-- Reloader.lua

local Reloader = LibStub("AceAddon-3.0"):NewAddon("Reloader", "AceConsole-3.0")
local ReloaderLDB = LibStub("LibDataBroker-1.1"):NewDataObject("Reloader", {
    type = "data source",
    label = "Reloader",
    text = "Reloader",
    icon = "Interface\\Addons\\Reloader\\Icon",
    OnClick = function() ReloadUI() end, -- Literally the entire addon
})
local LibDBIcon = LibStub("LibDBIcon-1.0")

function Reloader:OnInitialize() 
    self.db = LibStub("AceDB-3.0"):New("ReloaderDB", { 
        profile = { 
            minimap = { 
                hide = false, 
            }, 
        }, 
    }) 
    LibDBIcon:Register("Reloader", ReloaderLDB, self.db.profile.minimap) 
end

function Reloader:OnEnable()
    -- Dont spam the chat with annoying "XYX is loaded" messages, if the minimap icon is active we're loaded.
end

function Reloader:OnDisable()

end

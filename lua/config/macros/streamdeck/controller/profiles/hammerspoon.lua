local AppObserver = require('config.macros.streamdeck.controller.profiles.appObserver')
local MaestroButton = require('config.macros.streamdeck.controller.maestroButton')
local KeyStrokeButton = require('config.macros.streamdeck.controller.keystrokeButton')
local verbose = require('config.macros.streamdeck.controller.helpers').verbose
local MenuButton = require('config.macros.streamdeck.controller.menuButton')
local LuaButton = require('config.macros.streamdeck.controller.luaButton')



local HammerspoonObserver = AppObserver:new(APPS.Hammerspoon)

HammerspoonObserver:addProfilePage(DECK_3XL, PAGE_1, function(_, deck)
    return {
        -- * row 1
        -- TODO what about reflect on func name and use that as button text? debug.getinfo(foo).nparams
        LuaButton:new(1, deck, drawTextIcon("Reset Photos Dir", deck), resetPhotosDir),
        LuaButton:new(2, deck, drawTextIcon("Set Photos Dir", deck), setPhotosDir),
        -- * row 2
        -- * row 3
        -- * row 4
    }
end)


return HammerspoonObserver

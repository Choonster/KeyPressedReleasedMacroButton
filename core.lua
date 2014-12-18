-- The macro to use when the key is pressed
local DOWN_MACRO = [==[
/use Burning Rush
]==]

-- The macro to use when the key is released
local UP_MACRO = [==[
/stopcasting [channelling]
]==]

-------------------
-- END OF CONFIG --
-------------------

_G["BINDING_HEADER_KeyPressedReleasedMacroButton"] = "Key Pressed/Released Macro Button"
_G["BINDING_NAME_CLICK KeyPressedReleasedMacroButton:LeftButton"] = "Use Button"

local button = CreateFrame("Button", "KeyPressedReleasedMacroButton", nil, "SecureActionButtonTemplate")
button:RegisterForClicks("AnyUp", "AnyDown")
button:SetAttribute("downbutton", "Button31") -- Remap to button 31 on down clicks, use left button (button 1) on up clicks
button:SetAttribute("type", "macro")
button:SetAttribute("macrotext31", DOWN_MACRO)
button:SetAttribute("macrotext1", UP_MACRO)
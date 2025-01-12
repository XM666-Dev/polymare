dofile("data/scripts/lib/mod_settings.lua")

local mod_id = "polymare"
mod_settings_version = 1
mod_settings =
{
    {
        id = "extra_health",
        ui_name = "Extra starting health",
        ui_description = "Extra HP",
        value_default = 1,
        value_min = 0,
        value_max = 8,
        value_display_multiplier = 25,
        value_display_formatting = " $0 HP",
        scope = MOD_SETTING_SCOPE_RUNTIME,
    },
    {
        id = "polymorph_cap",
        ui_name = "Polymorph cap",
        ui_description = "Only allows polymorphing into creatures with less than twice the player's hp.",
        value_default = true,
        scope = MOD_SETTING_SCOPE_RUNTIME,
    },
}

function ModSettingsUpdate(init_scope)
    mod_settings_update(mod_id, mod_settings, init_scope)
end

function ModSettingsGuiCount()
    return mod_settings_gui_count(mod_id, mod_settings)
end

function ModSettingsGui(gui, in_main_menu)
    mod_settings_gui(mod_id, mod_settings, gui, in_main_menu)
end

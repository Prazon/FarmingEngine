/// @description Draw game UI

// Format time string
var _Hours = floor(global.CurrentTime / 60);
var _Minutes = global.CurrentTime % 60;
var _AmPm = (_Hours < 12) ? "AM" : "PM";

// Convert to 12-hour format
if (_Hours == 0) _Hours = 12;
else if (_Hours > 12) _Hours -= 12;

var _TimeString = string(_Hours) + ":" + string_format(_Minutes, 2, 0) + " " + _AmPm;
_TimeString = string_replace(_TimeString, " ", "0");

// Draw time and date
draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _Padding = 10;
draw_text(_Padding, _Padding, global.CurrentSeason + " " + string(global.CurrentDay));
draw_text(_Padding, _Padding + 20, _TimeString);

// Draw money
if (global.Player != noone) {
    draw_set_halign(fa_right);
    draw_text(display_get_gui_width() - _Padding, _Padding, "$" + string(global.Player.Wallet));
}

// Draw pause indicator if game is paused
if (global.GamePaused) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "GAME PAUSED");
}

// Draw debug info
if (global.DebugMode) {
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_text(_Padding, display_get_gui_height() - _Padding, "Debug Mode");
    
    if (global.Player != noone) {
        var _DebugText = "Player position: (" + string(global.Player.x) + ", " + string(global.Player.y) + ")";
        draw_text(_Padding, display_get_gui_height() - _Padding - 20, _DebugText);
    }
}


/// @description Draw zoom level (debug)

// Only show debug info if in debug mode
if (variable_global_exists("DebugMode") && global.DebugMode) {
    // Set up drawing properties
    draw_set_font(fnt_main);
    draw_set_color(c_yellow);
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    
    // Draw zoom percentage
    var _ZoomPercent = round(CurrentZoom * 100);
    draw_text(display_get_gui_width() - 10, display_get_gui_height() - 40, "Zoom: " + string(_ZoomPercent) + "%");
    
    // Draw camera position
    var _CamX = camera_get_view_x(CameraID);
    var _CamY = camera_get_view_y(CameraID);
    draw_text(display_get_gui_width() - 10, display_get_gui_height() - 60, "Cam: (" + string(round(_CamX)) + ", " + string(round(_CamY)) + ")");
}





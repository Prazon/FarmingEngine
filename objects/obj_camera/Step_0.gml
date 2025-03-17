/// @description Handle camera movement and zoom

// Skip processing if game is paused
if (variable_global_exists("GamePaused") && global.GamePaused) {
    exit;
}

// Find the target if not already set
if (Target == noone && global.Player != noone) {
    Target = global.Player;
}

// Update camera position to follow target
if (Target != noone) {
    // Get target position (center of target)
    TargetX = Target.x;
    TargetY = Target.y;
    
    // Smooth movement toward target
    x = lerp(x, TargetX, FollowSpeed);
    y = lerp(y, TargetY, FollowSpeed);
    
   // Calculate the camera's view position and round to nearest integer
    var _ViewX = floor(x - ViewWidthHalf);
    var _ViewY = floor(y - ViewHeightHalf);
    
    // Keep camera within room boundaries if enabled
    if (BoundCamera) {
        _ViewX = clamp(_ViewX, 0, room_width - ViewWidth);
        _ViewY = clamp(_ViewY, 0, room_height - ViewHeight);
    }
    
    // Apply the camera position
    camera_set_view_pos(CameraID, _ViewX, _ViewY);
}




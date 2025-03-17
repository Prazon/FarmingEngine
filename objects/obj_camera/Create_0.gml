/// @description Initialize camera properties

// Target to follow (usually the player)
Target = noone;

// Camera properties
ViewWidth = 640;
ViewHeight = 360;
DefaultWidth = 640;
DefaultHeight = 360;

// Camera smoothing properties
FollowSpeed = 0.1; // Lower value = smoother camera
TargetX = x;
TargetY = y;

// Camera boundaries
BoundCamera = true; // Whether to keep camera within room bounds

// Get the current view's camera
CameraID = view_camera[0];

// Find the player if not already set
if (Target == noone && global.Player != noone) {
    Target = global.Player;
}

// Setup the camera view
camera_set_view_size(CameraID, ViewWidth, ViewHeight);

// Set initial position
if (Target != noone) {
    TargetX = Target.x;
    TargetY = Target.y;
    x = TargetX;
    y = TargetY;
    camera_set_view_pos(CameraID, x - (ViewWidth / 2), y - (ViewHeight / 2));
}



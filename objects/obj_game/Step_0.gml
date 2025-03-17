/// @description Game loop

// Handle game pausing
if (keyboard_check_pressed(vk_escape)) {
    global.GamePaused = !global.GamePaused;
}

// Skip time updates if the game is paused
if (global.GamePaused) {
    exit;
}

// Update in-game time
var _TimeIncrement = 1; // Minutes per step (adjust based on desired game speed)
global.CurrentTime += _TimeIncrement;

// Check for day change
if (global.CurrentTime >= global.DayLength) {
    global.CurrentTime = 0;
    global.CurrentDay += 1;
    
    // Handle season change every 28 days
    if (global.CurrentDay > 28) {
        global.CurrentDay = 1;
        
        switch (global.CurrentSeason) {
            case "Spring":
                global.CurrentSeason = "Summer";
                break;
            case "Summer":
                global.CurrentSeason = "Fall";
                break;
            case "Fall":
                global.CurrentSeason = "Winter";
                break;
            case "Winter":
                global.CurrentSeason = "Spring";
                break;
        }
    }
    
    // Call day change events
    event_perform(ev_other, ev_user0);
}

// Toggle debug mode
if (keyboard_check_pressed(vk_f1)) {
    global.DebugMode = !global.DebugMode;
}
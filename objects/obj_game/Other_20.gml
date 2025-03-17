/// @description Day Change Event

// Process day change logic
show_debug_message("Day changed to " + string(global.CurrentDay) + " of " + global.CurrentSeason);

// Replenish player stamina
if (global.Player != noone) {
    global.Player.Stamina = global.Player.MaxStamina;
}

// Update farm plots (for when you implement farming)
// with (obj_farmplot) {
//     event_perform(ev_other, ev_user0); // Tell farm plots to update for the new day
// }

// Handle season changes
if (global.CurrentDay == 1) {
    show_debug_message("Season changed to " + global.CurrentSeason);
    // Update world graphics based on season if needed
}

// Check for special calendar events
// CheckForEvents();



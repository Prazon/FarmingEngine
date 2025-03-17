/// @description Game controller - Initializes the game

// Game state
global.GamePaused = false;
global.CurrentDay = 1;
global.CurrentSeason = "Spring";
global.CurrentTime = 0; // Time in minutes (0-1440)
global.DayLength = 1440; // 24 hours = 1440 minutes

// Player reference
global.Player = noone;

// Spawn the player in the center of the room
var _PlayerStartX = room_width / 2;
var _PlayerStartY = room_height / 2;
global.Player = instance_create_layer(_PlayerStartX, _PlayerStartY, "Instances", obj_farmer);

// Initialize game systems
randomize();

// Debug mode
global.DebugMode = false;



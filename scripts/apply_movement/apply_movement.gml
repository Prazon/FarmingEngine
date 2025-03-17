// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function apply_movement()
{
    // Check for collisions
    var _CanMoveX = !place_meeting(x + _XSpeed, y, obj_solid);
    var _CanMoveY = !place_meeting(x, y + _YSpeed, obj_solid);
    
    // Apply movement with collision detection
    if (_CanMoveX)
	{
        x += _XSpeed;
    }
    
    if (_CanMoveY)
	{
        y += _YSpeed;
    }
}
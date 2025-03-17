// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_animation()
{
    // Update sprite based on state and direction
    switch (_FacingDirection)
	{
        case 0: // Down
            _Sprite = _IsMoving ? spr_farmer_walk_down : spr_farmer_idle_down;
            break;
        case 1: // Right
            _Sprite = _IsMoving ? spr_farmer_walk_side : spr_farmer_idle_side;
            break;
        case 2: // Up
            _Sprite = _IsMoving ? spr_farmer_walk_up : spr_farmer_idle_up;
            break;
        case 3: // Left
            _Sprite = _IsMoving ? spr_farmer_walk_side : spr_farmer_idle_side;
            break;
    }
    
    // Update active sprite
    sprite_index = _Sprite;
    
}
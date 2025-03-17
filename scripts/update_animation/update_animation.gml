// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_animation()
{
    // Update sprite based on state and direction
    switch (_FacingDirection)
    {
        case 0: // Down
            _Sprite = _IsMoving ? spr_farmer_walk_down : spr_farmer_idle_down;
            image_xscale = 1; // Reset x scale
            break;
        case 1: // Right
            _Sprite = _IsMoving ? spr_farmer_walk_side : spr_farmer_idle_side;
            image_xscale = 1; // Normal orientation for right
            break;
        case 2: // Up
            _Sprite = _IsMoving ? spr_farmer_walk_up : spr_farmer_idle_up;
            image_xscale = 1; // Reset x scale
            break;
        case 3: // Left
            _Sprite = _IsMoving ? spr_farmer_walk_side : spr_farmer_idle_side;
            image_xscale = -1; // Flip sprite horizontally for left
            break;
    }
    
    // Update active sprite
    sprite_index = _Sprite;
    
}
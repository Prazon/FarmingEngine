
function handle_input()
{
	
    // Get input
    var _KeyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
    var _KeyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
    var _KeyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
    var _KeyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
    var _KeyInteract = keyboard_check_pressed(vk_space);
    var _KeySelectNext = keyboard_check_pressed(ord("E"));
    var _KeySelectPrev = keyboard_check_pressed(ord("Q"));
    
    // Calculate movement
    _XSpeed = (_KeyRight - _KeyLeft) * MoveSpeed;
    _YSpeed = (_KeyDown - _KeyUp) * MoveSpeed;
    
    // Normalize diagonal movement
    if (_XSpeed != 0 && _YSpeed != 0)
	{
        _XSpeed *= 0.7;
        _YSpeed *= 0.7;
    }
    
    // Set sprite direction based on movement
    _IsMoving = (_XSpeed != 0 || _YSpeed != 0);
    
    if (_IsMoving) {
        if (abs(_XSpeed) > abs(_YSpeed))
		{
            _FacingDirection = (_XSpeed > 0) ? 1 : 3;
        } 
		else
		{
            _FacingDirection = (_YSpeed > 0) ? 0 : 2;
        }
    }
    
    // Handle inventory selection
    if (_KeySelectNext)
	{
        SelectedSlot = (SelectedSlot + 1) % InventorySize;
        HeldItem = Inventory[# 0, SelectedSlot];
    }
    
    if (_KeySelectPrev)
	{
        SelectedSlot = (SelectedSlot - 1 + InventorySize) % InventorySize;
        HeldItem = Inventory[# 0, SelectedSlot];
    }
	
	
}
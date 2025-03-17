/// @description Parent entity for anything that has an inventory and/or is alive

// Entity attributes
Name = "Entity"
MoveSpeed = 2;
Health = 100;
MaxHealth = 100;
Wallet = 1000;
Stamina = 100;
MaxStamina = 100;

// Entity Inventory
Inventory = noone;
InventoryWidth = 10;
InventoryHeight = 1;

// Movement variables
_XSpeed = 0;
_YSpeed = 0;
_FacingDirection = 0; // 0=down, 1=right, 2=up, 3=left

// Animation variables
_Sprite = spr_farmer_idle_down;
_AnimationSpeed = 6;
_IsMoving = false;
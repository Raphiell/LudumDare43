/// @description Add a random item to your inventory

switch(irandom(3))
{
    case 0:
        AddItemToInventory(CreateItem(obj_plank))
        break;
    case 1:
        AddItemToInventory(CreateItem(obj_metal))
        break;
    case 2:
        AddItemToInventory(CreateItem(obj_propellor))
        break;
    case 3:
        AddItemToInventory(CreateItem(obj_magnet))
        break;
}

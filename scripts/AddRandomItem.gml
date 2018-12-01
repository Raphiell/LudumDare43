/// @description Add a random item to your inventory

switch(irandom(3))
{
    case 0:
        AddItemToInventory(CreateItem(obj_plank))
        break;
    case 1:
        AddItemToInventory(CreateItem(obj_pipe))
        break;
    case 2:
        AddItemToInventory(CreateItem(obj_timmy))
        break;
    case 3:
        AddItemToInventory(CreateItem(obj_cottage))
        break;
}

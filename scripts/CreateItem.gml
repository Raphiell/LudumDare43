/// @description Creates an item and sets it's properties, returns the id of the item created
/// @function CreateItem(name, sprite, tags...)
/// @param {string} name Name of the item
/// @param {sprite} sprite Sprite to display
/// @param {string} tags Any amount of tags

// Arguments
var name = argument[0]
var sprite = argument[1]
var tags
for(i = 2; i < argument_count; i++)
{
    tags[i - 2] = argument[i]
}

// Create a new item and add it to the inventory
var newItem = instance_create(0,0,item);

// Setup it's properties
newItem.name = name
newItem.tags = tags
newItem.sprite_index = sprite

//AddItemToInventory(newItem)

// Return the created item
return newItem

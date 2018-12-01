/// @description Creates an item and sets it's properties, returns the id of the item created
/// @function CreateItem(object)
/// @param {object} object Object to create


// Arguments
var object = argument[0]

// Create a new item and add it to the inventory
var newItem = instance_create(0,0,object);

// Return the created item
return newItem

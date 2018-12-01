/// @description Converts a recipe to a demon, and adds it to your demon list
/// @func CreateDemon(recipe)
/// @param {recipe} Recipe The recipe to create the demon from
var recipe = argument0

// Grab the appropriate values
var name = recipe.name
var sprite = recipe.sprite_index

// Create the demon
var demon = instance_create(-32, -32, obj_demon);

demon.name = name
demon.sprite_index = sprite

// Add to demon list
ds_list_add(demons, demon)


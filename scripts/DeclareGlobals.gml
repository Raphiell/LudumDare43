// This script declares all global variables required for the game

// Inventory
globalvar inventory;
inventory = ds_list_create()

// Crafting space
globalvar crafting;
crafting = ds_list_create()

// Possible tags
globalvar tagMap;
tagMap = ds_map_create()

// Setup tags list
tags = Array("Wood", "Metal", "Small", "Large", "Alive")

// Add new tag objects to global map
for(i = 0; i < array_length_1d(tags); i++)
{
    // Create the tag
    newTag = instance_create(-32,-32,obj_tag)
    
    // Setup it's name, so it can be easily referenced later
    newTag.name = tags[i]

    // Initialize count to 0
    newTag.count = 0
    
    // Add it to the global map
    ds_map_add(tagMap, tags[i], newTag)
}

// Recipes
globalvar recipes;

// Demons you've created
globalvar demons;
demons = ds_list_create()

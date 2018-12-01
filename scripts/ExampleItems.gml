// Creates example items and adds them to the inventory
n1 = "Plank"
n2 = "Pipe"
n3 = "Timmy"
n4 = "Cottage"
sprite = spr_pl_item1
tag1 = ds_map_find_value(tagMap, "Wood")
tag2 = ds_map_find_value(tagMap, "Metal")
tag3 = ds_map_find_value(tagMap, "Small")
tag4 = ds_map_find_value(tagMap, "Large")
tag5 = ds_map_find_value(tagMap, "Alive")
show_message("Created: " + tag1.name)

AddItemToInventory(CreateItem(n1, sprite, tag1, tag3))
AddItemToInventory(CreateItem(n2, sprite, tag2, tag3))
AddItemToInventory(CreateItem(n3, sprite, tag5, tag3))
AddItemToInventory(CreateItem(n4, sprite, tag1, tag4))


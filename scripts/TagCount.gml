// Displays tag count in crafting area
// For every existing tag

nextTag = ds_map_find_first(tagMap)

message = ""

// While we still have tags to go
while(!is_undefined(nextTag))
{
    message += nextTag + ": " + string(tagMap[? nextTag].count) + ", "
    nextTag = ds_map_find_next(tagMap, nextTag)
}

show_message(message)

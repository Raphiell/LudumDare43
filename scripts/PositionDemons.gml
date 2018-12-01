/// @description Moves the demons to their proper positions
var horizontalMargin = 10
var verticalMargin = 6
var x_pos = 64 
var y_pos = 0

// For each item in demons
for(i = 0; i < ds_list_size(demons); i++)
{
    // Current item
    item = ds_list_find_value(demons, i)
    item.x = x_pos + (item.sprite_width + horizontalMargin) * (i + 1)
    item.y = y_pos
}

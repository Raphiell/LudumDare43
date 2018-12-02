/// @description Moves the recipe position left or right
/// @function MoveRecipePosition(amount)
/// @param integer amount The amount to move it by

var amount = argument0

// If we have hidden objects
if(array_length_1d(recipes) > recipe_max)
{
    // If we are moving up, and we aren't already at the top
    if(amount == -1 && recipe_position != 0)
    {
        // Move left
        recipe_position += amount
    }
    else
    // Else we're moving down
    if(amount == 1 && (array_length_1d(recipes) - recipe_max) - recipe_position > 0)
    {
        // If the next recipe is  available
        if(recipes[recipe_position].available)
        {
            // Move right
            recipe_position += amount
        }
    }
}

// Reposition
PositionRecipes()

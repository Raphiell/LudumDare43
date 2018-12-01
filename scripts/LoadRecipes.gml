/// @description Loads all recipes from recipes.txt

// Open file
file = file_text_open_read(working_directory + "\recipes.txt")

// Persist a recipes array across multiple line reads
iterator = 0

// While we're not at the end of the file
while(!file_text_eof(file))
{
    // Grab the next line
    line = file_text_readln(file)
    
    // Is this a new recipe?
    if(string_pos("recipe", line) != 0)
    {
        // New recipe
        recipe = instance_create(0,0,obj_recipe)
        
        // Set it's name
        recipe.name = string_copy(line, 7, string_length(line) - 7)
        
        show_message(recipe.name)
        
        // Create a new recipe object
        recipes[iterator] = recipe
    }
    // Else if it's a sprite line
    else if(string_pos("sprite", line) != 0)
    {
        recipes[iterator].sprite_index = string_copy(line, 7, string_length(line) - 7)
    }
    // Else if it's a tag
    else if(string_pos("tag", line) != 0)
    {
        show_message(string_copy(line, 4, string_length(line) - 4))
    }
    // Else if it's the end of the recipe
    else if(string_pos("end", line) != 0)
    {
        iterator += 1
    }
}

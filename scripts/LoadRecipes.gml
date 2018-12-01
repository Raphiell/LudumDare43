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
        // For string copies, the first number is to cut out the "element" (recipe) and the second number cuts out any space after the value + newline
        recipe.name = string_copy(line, 7, string_length(line) - 8)
        
        // Initialize tags array
        recipe.tags[0] = ""
        
        // Add to global array
        recipes[iterator] = recipe
    }
    // Else if it's a sprite line
    else if(string_pos("sprite", line) != 0)
    {
        recipes[iterator].sprite_index = string_copy(line, 7, string_length(line) - 8)
    }
    // Else if it's a tag
    else if(string_pos("ftag", line) != 0)
    {
        // Add the first tag
        recipes[iterator].tags[0] = string_copy(line, 5, string_length(line) - 6)
    }
    else if(string_pos("tag", line) != 0)
    {
        // Add a new tag to the end of the required tags
        recipes[iterator].tags[array_length_1d(recipes[iterator].tags)] = string_copy(line, 4, string_length(line) - 5)
    }
    // Else if it's the end of the recipe
    else if(string_pos("end", line) != 0)
    {
        iterator += 1
    }
}

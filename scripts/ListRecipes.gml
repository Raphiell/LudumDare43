// Lists all available recipes

for(i = 0; i < array_length_1d(recipes); i++)
{
    show_message(recipes[i].name)
    
    for(j = 0; j < array_length_1d(recipes[i].tags); j++)
    {
        show_message(recipes[i].tags[j])
    }
}

// Feather disable all

function __SprettMark()
{
    static _system = __SprettSystem();
    
    with (_system)
    {
        var _sprites = variable_struct_get_names(__spriteMap);
        
        var _i = 0;
        repeat (array_length(_sprites))
        {
            __spriteMap[$ _sprites[_i]].__drawn = false;
            _i++;
        }
    }
}
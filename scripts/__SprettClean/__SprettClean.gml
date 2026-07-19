// Feather disable all

function __SprettClean()
{
    static _system = __SprettSystem();
    
    with (_system)
    {
        var _sprites = variable_struct_get_names(__spriteMap);
        
        var _i = 0;
        repeat (array_length(_sprites))
        {
            var _sprettSprite = __spriteMap[$ _sprites[_i]];
            
            if (!_sprettSprite.__drawn)
            {
                variable_struct_remove(__spriteMap, _sprites[_i]);
            }
            
            _i++;
        }
    }
}
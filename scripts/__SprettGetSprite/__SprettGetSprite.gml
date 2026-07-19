// Feather disable all

/// @ignore
function __SprettGetSprite(_sprite)
{
    static _system = __SprettSystem();
    
    with (_system)
    {
        var _hash = md5_string_utf8($"{sprite_get_name(_sprite)}{__drawCommand++}");
        
        if (variable_struct_exists(__spriteMap, _hash))
        {
            return __spriteMap[$ _hash];
        }
        else
        {
            return __SprettCreateSprite(_sprite, _hash);
        }
    }
}
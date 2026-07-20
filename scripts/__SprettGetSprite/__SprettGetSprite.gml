// Feather disable all

/// @ignore
function __SprettGetSprite(_sprite, _uid)
{
    static _system = __SprettSystem();
    
    with (_system)
    {
        var _id = (_uid == undefined) ? __drawCommand++ : _uid;
        var _hash = md5_string_utf8($"{sprite_get_name(_sprite)}{_id}");
        
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
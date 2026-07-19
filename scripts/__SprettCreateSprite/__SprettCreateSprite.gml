// Feather disable all

function __SprettCreateSprite(_sprite, _hash)
{
    static _system = __SprettSystem();
    
    with (_system)
    {
        var _spriteSpeed = sprite_get_speed(_sprite);
        var _spriteInfo = sprite_get_info(_sprite);
        var _duration = array_create(sprite_get_number(_sprite), 1);
        
        if (_spriteInfo.frame_info != undefined)
        {
            var _i = 0;
            repeat (array_length(_spriteInfo.frame_info))
            {
                _duration[_i] = _spriteInfo.frame_info[_i];
                _i++;
            }
        }
        
        var _sprettSprite = {
            imageIndex: 0,
            imageSpeed: 1,
            spriteSpeed: _spriteSpeed / game_get_speed(gamespeed_fps),
            
            __frameDuration: _duration,
            __subCounter: 0,
            __drawn: false,
        };
        
        __spriteMap[$ _hash] = _sprettSprite;
        
        return _sprettSprite;
    }
}
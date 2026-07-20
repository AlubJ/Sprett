// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} x
/// @param {Real} y
/// @param {Real} width
/// @param {Real} height
/// @param {String} [UID]
function SprettDrawStretched(_sprite, _subImage, _x, _y, _width, _height, _uid = undefined)
{
    static _system = __SprettSystem();
    
    if (!sprite_exists(_sprite))
    {
        __SprettError($"Sprite index `{_sprite}` does not exist");
    }
    
    if (_uid != undefined && !is_string(_uid))
    {
        __SprettError($"The unique ID of the draw must be a string or `undefined`");
    }
    
    if (_subImage >= 0)
    {
        if (_subImage >= sprite_get_number(_sprite))
        {
            __SprettError($"Sprite sub image of `{_subImage}` exceeds sprite number of `{sprite_get_number(_sprite)}`");
        }
        
        draw_sprite_stretched(_sprite, _subImage, _x, _y, _width, _height);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage), _uid);
    
    draw_sprite_stretched(_sprite, _sprettSprite.imageIndex, _x, _y, _width, _height);
    
    return _sprettSprite;
}
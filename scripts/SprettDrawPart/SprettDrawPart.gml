// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} left
/// @param {Real} top
/// @param {Real} width
/// @param {Real} height
/// @param {Real} x
/// @param {Real} y
/// @param {String} [UID]
function SprettDrawPart(_sprite, _subImage, _left, _top, _width, _height, _x, _y, _uid = undefined)
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
        
        draw_sprite_part(_sprite, _subImage, _left, _top, _width, _height, _x, _y);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage), _uid);
    
    draw_sprite_part(_sprite, _sprettSprite.imageIndex, _left, _top, _width, _height, _x, _y);
    
    return _sprettSprite;
}
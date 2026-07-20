// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} x4
/// @param {Real} y4
/// @param {Real} alpha
/// @param {String} [UID]
function SprettDrawPos(_sprite, _subImage, _x1, _y1, _x2, _y2, _x3, _y3, _x4, _y4, _alpha, _uid = undefined)
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
        
        draw_sprite_pos(_sprite, _subImage, _x1, _y1, _x2, _y2, _x3, _y3, _x4, _y4, _alpha);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage), _uid);
    
    draw_sprite_pos(_sprite, _sprettSprite.imageIndex, _x1, _y1, _x2, _y2, _x3, _y3, _x4, _y4, _alpha);
    
    return _sprettSprite;
}
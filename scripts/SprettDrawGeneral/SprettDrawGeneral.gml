// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} left
/// @param {Real} right
/// @param {Real} width
/// @param {Real} height
/// @param {Real} x
/// @param {Real} y
/// @param {Real} xScale
/// @param {Real} yScale
/// @param {Real} rotation
/// @param {Constant.Color} color1
/// @param {Constant.Color} color2
/// @param {Constant.Color} color3
/// @param {Constant.Color} color4
/// @param {Real} alpha
function SprettDrawGeneral(_sprite, _subImage, _left, _top, _width, _height, _x, _y, _xScale, _yScale, _rotation, _c1, _c2, _c3, _c4, _alpha)
{
    static _system = __SprettSystem();
    
    if (!sprite_exists(_sprite))
    {
        __SprettError($"Sprite index `{_sprite}` does not exist");
    }
    
    if (_subImage >= 0)
    {
        if (_subImage >= sprite_get_number(_sprite))
        {
            __SprettError($"Sprite sub image of `{_subImage}` exceeds sprite number of `{sprite_get_number(_sprite)}`");
        }
        
        draw_sprite_general(_sprite, _subImage, _left, _top, _width, _height, _x, _y, _xScale, _yScale, _rotation, _c1, _c2, _c3, _c4, _alpha);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage));
    
    draw_sprite_general(_sprite, _sprettSprite.imageIndex, _left, _top, _width, _height, _x, _y, _xScale, _yScale, _rotation, _c1, _c2, _c3, _c4, _alpha);
    
    return _sprettSprite;
}
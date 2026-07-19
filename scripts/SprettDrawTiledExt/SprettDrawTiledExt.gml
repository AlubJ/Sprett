// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} x
/// @param {Real} y
/// @param {Real} xScale
/// @param {Real} yScale
/// @param {Real} rotation
/// @param {Constant.Color} color
/// @param {Real} alpha
function SprettDrawTiledExt(_sprite, _subImage, _x, _y, _xScale, _yScale, _rotation, _color, _alpha)
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
        
        draw_sprite_tiled_ext(_sprite, _subImage, _x, _y, _xScale, _yScale, _rotation, _color, _alpha);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage));
    
    draw_sprite_tiled_ext(_sprite, _sprettSprite.imageIndex, _x, _y, _xScale, _yScale, _rotation, _color, _alpha);
    
    return _sprettSprite;
}
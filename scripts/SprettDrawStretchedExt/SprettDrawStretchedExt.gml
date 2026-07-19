// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} x
/// @param {Real} y
/// @param {Real} width
/// @param {Real} height
/// @param {Constant.Color} color
/// @param {Real} alpha
function SprettDrawStretchedExt(_sprite, _subImage, _x, _y, _width, _height, _color, _alpha)
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
        
        draw_sprite_stretched_ext(_sprite, _subImage, _x, _y, _width, _height, _color, _alpha);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage));
    
    draw_sprite_stretched_ext(_sprite, _sprettSprite.imageIndex, _x, _y, _width, _height, _color, _alpha);
    
    return _sprettSprite;
}
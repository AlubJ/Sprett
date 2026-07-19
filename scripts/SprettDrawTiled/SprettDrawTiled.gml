// Feather disable all

/// @param {Asset.Sprite} sprite
/// @param {Real} subImage
/// @param {Real} x
/// @param {Real} y
function SprettDrawTiled(_sprite, _subImage, _x, _y)
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
        
        draw_sprite_tiled(_sprite, _subImage, _x, _y);
        return;
    }
    
    var _sprettSprite = __SprettEvaluate(_sprite, abs(_subImage));
    
    draw_sprite_tiled(_sprite, _sprettSprite.imageIndex, _x, _y);
    
    return _sprettSprite;
}
// Feather disable all

/// @ignore
function __SprettEvaluate(_sprite, _imageSpeed, _uid)
{
    var _sprettSprite = __SprettGetSprite(_sprite, _uid);
    var _frameDuration = _sprettSprite.__frameDuration[_sprettSprite.imageIndex];
    
    _sprettSprite.__subCounter += _sprettSprite.spriteSpeed * _imageSpeed;
        
    if (_sprettSprite.__subCounter >= _frameDuration)
    {
        _sprettSprite.__subCounter = 0;
        _sprettSprite.imageIndex++;
        _sprettSprite.imageIndex = __SprettWrap(_sprettSprite.imageIndex, sprite_get_number(_sprite));
    }
    
    _sprettSprite.__drawn = true;
    
    return _sprettSprite;
}
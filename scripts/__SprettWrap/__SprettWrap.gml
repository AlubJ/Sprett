// Feather disable all

function __SprettWrap(_value, _max)
{
    if (_max)
    {
        return (_value mod _max + _max) mod _max;
    };
    
    return _value;
}
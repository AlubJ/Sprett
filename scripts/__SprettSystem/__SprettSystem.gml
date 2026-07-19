// Feather disable all

__SprettSystem();

/// @ignore
function __SprettSystem()
{
    static _system = undefined;
    if (_system != undefined) return _system;
    
    _system = {  };
    with (_system)
    {
        __spriteMap = {  };
        __drawCommand = 0;
        
        __SprettTrace($"Welcome to Sprett by Alun Jones! This is version v{SPRETT_VERSION} {SPRETT_DATE}");
        
        time_source_start(time_source_create(time_source_game, 1, time_source_units_frames, function () {
            __SprettTick();
        }, [], -1));
        
        time_source_start(time_source_create(time_source_game, 10, time_source_units_frames, function () {
            __SprettClean();
            __SprettMark();
        }, [], -1));
    }
    
    return _system;
}
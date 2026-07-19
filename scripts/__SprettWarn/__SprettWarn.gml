// Feather disable all

/// @ignore
function __SprettWarn(_string)
{
    if (SPRETT_RUNNING_FROM_IDE)
    {
        show_error($" \nSprett:\n{_string}\n ", true);
    }
    else
    {
        show_debug_message($"Sprett: Warning! {_string}");
    }
}
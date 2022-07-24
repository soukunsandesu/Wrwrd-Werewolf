#> wmw_after:system/settings/role/enable/detective

function wmw_after:system/init/selection
data modify storage datapack:wmw_after DetectiveEnabled set value true
function wmw_after:setting
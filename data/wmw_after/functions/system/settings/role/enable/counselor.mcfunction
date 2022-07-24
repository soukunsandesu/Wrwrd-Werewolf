#> wmw_after:system/settings/role/enable/counselor

function wmw_after:system/init/selection
data modify storage datapack:wmw_after CounselorEnabled set value true
function wmw_after:setting
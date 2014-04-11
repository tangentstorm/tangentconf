#!/usr/bin/env ifpc
program genguid; uses sysutils;
var guid : TGUID;
begin createguid(guid); writeln(guidtostring(guid));
end.

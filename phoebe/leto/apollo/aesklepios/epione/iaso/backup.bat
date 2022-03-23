echo off
set year=%date:~6,4%
set month=%date:~3,2%
set day=%date:~0,2%
set hour=%time:~0,2%
if %hour% lss 10 (set hour=0%time:~1,1%)
set minute=%time:~3,2%
set second=%time:~6,5%
set slot=%year%-%month%-%day%@%hour%%minute%Hrs%second%s
set guide=" - TO MANUALLY RESTORE simply rename me and overwrite the existing save folder"

set source=%APPDATA%\EldenRing
set quicksave=%APPDATA%\EldenRingQuicksave
set archive=%APPDATA%\EldenRingArchive\%slot%%guide%

robocopy %source% %quicksave% /E /IS /IT
robocopy %source% %archive% /E /IS /IT

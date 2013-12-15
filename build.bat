@Echo off
ECHO. cleaning release..
if not exist release mkdir release

CALl del release\ /s /q
ECHO. Zipping app to release\app.nw...
CALL cd /D app\
CALL ..\Tools\7Zip\7za.exe a -tzip ..\release\app.nw *.* -r
CALL cd ..\
ECHO. Linking app to node-webkit and building executable...
CALL copy /b Tools\node-webkit\nw.exe + release\app.nw release\app.exe
CALL copy Tools\node-webkit\nw.pak release\
CALL copy Tools\node-webkit\*.dll release\
ECHO. All good. Build successful. app.exe in release folder.
PAUSE



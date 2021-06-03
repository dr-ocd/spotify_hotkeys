# spotify_hotkeys
A way to control your spotify music from any window using hotkeys and AutoHotKey!

AutoHotKey is __REQUIRED__ for this to work! (although, you can convert the AHK script to an exe file using the converter)

__Steps to getting up and running__
1) Download the repository
2) Make sure you have AutoHotKey installed, if not, download from the website (https://www.autohotkey.com/)
3) Run the .exe file, this will run the script in the background and turn the F1, F2 and F3 keys into hotkeys for pausing, rewinding and skipping songs respectively on spotify
4) Ctrl+Esc will terminate the script

__Steps for changing hotkeys__
1) Download the repository and install AutoHotKey
2) Right click on the .ahk file and select "Edit Script"
3) Navigate to where the hotkeys are setup (lines 29, 38 and 47) and setup your own hotkey! refer to the AutoHotKey documentation for how to setup hotkeys with multiple key presses (https://www.autohotkey.com/docs/AutoHotkey.htm)
4) Save the document and either run it using AutoHotKey or convert to a .exe file

__Steps to create .exe file, Converting .ahk to .exe__
1) Download the repository and install AutoHotKey
2) Locate the .ahk script
3) Run the "Convert .ahk to .exe" program that came with AutoHotKey
4) Under "Required Parameter" change the source file to the .ahk file you'd like to convert
5) Press the ">Convert<" button to start converting
6) The new .exe file will be in the same folder as the original .ahk script

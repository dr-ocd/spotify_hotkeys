# spotify hotkeys
A way to control your Spotify music from any window using hotkeys and AutoHotKey!

__Steps to getting up and running__
1) Download the repository
2) Run the .exe file, this will run the script in the background and turn the Ctrl+F1, Ctrl+F2 and Ctrl+F3 keys into hotkeys for pausing, rewinding and skipping songs respectively on spotify
3) __Ctrl+Esc will terminate the script__

__Steps for changing hotkeys__
1) Download the repository and install AutoHotKey, download from the website (https://www.autohotkey.com/)
2) Right click on the .ahk file and select "Edit Script"
3) Navigate to where the hotkeys are set up (lines 27, 33 and 39) and set up your own hotkey! refer to the AutoHotKey documentation for how to set up hotkeys with multiple key presses (https://www.autohotkey.com/docs/AutoHotkey.htm)
4) Save the script and either run it using AutoHotKey or convert to a .exe file, see _steps to create .exe file_

__Steps for enabling extra features__
1) Download the repository and install AutoHotKey
2) Right click on the .ahk file and select "Edit Script"
3) Navigate to the "failMessage" message function (line 12-24) remove the block comments (/* and */)
4) Navigate to the run command (line 17) and replace the existing comment with the location of your spotify application (eg. C:\Users\YOUR_USERNAME\AppData\Roaming\Spotify\Spotify.exe)
5) Save the Script and either run it using AutoHotKey or convert to a .exe file, see below

__Steps to create .exe file, Converting .ahk to .exe__
1) Download the repository and install AutoHotKey
2) Locate the .ahk script
3) Run the "Convert .ahk to .exe" program that came with AutoHotKey
4) Under "Required Parameter" change the source file to the .ahk file you'd like to convert
optional step) Under  "Custom Icon" Locate and select the include .ico file
6) Press the ">Convert<" button to start converting
7) The new .exe file will be in the same folder as the original .ahk script

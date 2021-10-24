@echo off
:MENU
CLS
echo ************************************
echo ***Discord cache images extractor***
echo ************************************
echo 1 - Extract files and convert to png
echo 2 - Extract files to desktop
echo 3 - Convert cache files to png
echo 4 - Clear image files from folder
echo 5 - How this works
SET /P M=Choose 1, 2, 3, 4 or 5:
IF %M%==1 GOTO EXCONV
IF %M%==2 GOTO EX
IF %M%==3 GOTO CONV
IF %M%==4 GOTO CLEAR
IF %M%==5 GOTO INFO

echo Wrong number buddy.
pause
GOTO MENU

:EX
if not exist "C:\Users\%username%\Desktop\DiscordCache\" echo Creating folder on desktop...
if not exist "C:\Users\%username%\Desktop\DiscordCache\" mkdir C:\Users\%username%\Desktop\DiscordCache
XCOPY C:\Users\%username%\AppData\Roaming\discord\Cache\f_?????? C:\Users\%username%\Desktop\DiscordCache\*
echo done.
pause
GOTO MENU

:CONV
if not exist "C:\Users\%username%\Desktop\DiscordCache\f_??????" echo There is nothing to convert!
if not exist "C:\Users\%username%\Desktop\DiscordCache\f_??????" pause
if not exist "C:\Users\%username%\Desktop\DiscordCache\f_??????" GOTO MENU
if exist "C:\Users\%username%\Desktop\DiscordCache\f_??????.png" echo deleting all previous images...
if exist "C:\Users\%username%\Desktop\DiscordCache\f_??????.png" del /q C:\Users\%username%\Desktop\DiscordCache\f_??????.png
ren C:\Users\%username%\Desktop\DiscordCache\f_?????? ????????.png
if exist "C:\Users\%username%\Desktop\DiscordCache\f_??????" del /q C:\Users\%username%\Desktop\DiscordCache\f_??????
echo done.
pause
GOTO MENU

:EXCONV
if not exist "C:\Users\%username%\Desktop\DiscordCache\" mkdir C:\Users\%username%\Desktop\DiscordCache
XCOPY C:\Users\%username%\AppData\Roaming\discord\Cache\f_****** C:\Users\%username%\Desktop\DiscordCache\*
ren C:\Users\%username%\Desktop\DiscordCache\f_?????? ????????.png
if exist "C:\Users\%username%\Desktop\DiscordCache\f_??????" del /q C:\Users\%username%\Desktop\DiscordCache\f_??????
echo done.
pause
GOTO MENU

:CLEAR
if exist "C:\Users\%username%\Desktop\DiscordCache\f_??????.png" echo deleting all images...
if not exist "C:\Users\%username%\Desktop\DiscordCache\f_??????.png" echo There is nothing to clear.
if exist "C:\Users\%username%\Desktop\DiscordCache\f_??????.png" del /q C:\Users\%username%\Desktop\DiscordCache\f_??????.png
echo done.
pause
GOTO MENU

:INFO
CLS
echo Discord saves all images you've seen on your HDD. Images stay saved even if
echo someone deletes them, you just have to see the image for a split second, or
echo even just be on the channel where it gets posted. This little script just
echo takes files from the discord cache folder and converts them into viewable
echo images. I created this script just to show how easy it is to get images
echo that someone might have deleted.
echo ~YHT
pause
GOTO MENU
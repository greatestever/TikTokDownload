@echo off
echo Install Require
pip install -r requirements.txt
echo Build EXE version, Press Ctrl + C to Exit
pause
echo Build Server
pyinstaller -F -i logo.ico --distpath Util --version-file API\Server.txt Util\algorithm\Server.py
echo Bulid TikTokTool
pyinstaller -F -i logo.ico --version-file API\TikTokTool.txt TikTokTool.py
echo Bulid TikTokLive
pyinstaller -F  -i logo.ico --version-file API\TikTokLive.txt TikTokLive.py
echo Bulid TikTokUpdata
pyinstaller -F -i logo.ico --version-file API\TikTokUpdata.txt TikTokUpdata.py
pause
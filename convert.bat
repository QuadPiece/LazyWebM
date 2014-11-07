if not exist "output" mkdir output
if not exist "input" mkdir input

for %%a in ("input\*.*") do ffmpeg -i "%%a" -c:v libvpx -preset veryslow -crf 10 -b:v 2500K -threads 1 -c:a libvorbis -b:a 128k "output\%%~na.webm"
pause
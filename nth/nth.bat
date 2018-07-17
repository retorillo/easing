@echo off
setlocal
set NAME=nth
gnuplot %NAME%.gpi ^
  && magick convert -delay 4 -loop 0 ^
       -coalesce -duplicate 1,-2-1 ^
       tmp/%NAME%_*.png %NAME%.gif

echo off
rem SET section start
rem **** Attention: Do not use spaces before and after the equality sign '=' **** 
set STUDIOPYTHON=F:\n-blocks\studio\studio2.0_experimental\python\python.exe
set TRANSLATOR=F:\n-blocks\studio\studio2.0_experimental\nblocksStudio.py
set DESIGNPATH=F:\prj_soft\mbed-studio\ascii-03\design.nbls
set EXPORTPATH=F:\prj_soft\mbed-studio\18D_radio_test
set TARGETNAME= .
rem SET section end
echo on

if exist F:\prj_soft\mbed-studio\18D_radio_test\nlib\ rd F:\prj_soft\mbed-studio\18D_radio_test\nlib\ /s/q
if exist F:\prj_soft\mbed-studio\18D_radio_test\main.cpp rd F:\prj_soft\mbed-studio\18D_radio_test\main.cpp /s/q

%STUDIOPYTHON%  %TRANSLATOR%  --import altium --netlist .\studio.NET --parameters .\studio.csv --output %EXPORTPATH% --name %TARGETNAME% --verbose -f B







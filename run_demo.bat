@echo off
echo ========================================================
echo   VIT Campus AI Helpdesk Assistant - AI Innovate-A-Thon
echo ========================================================
echo Starting local web server on port 8080...
start http://localhost:8080
python -m http.server 8080
pause

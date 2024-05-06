@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\Programme\XAMMP\hypersonic\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\ingres\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\ingres\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\mysql\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\mysql\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\postgresql\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\postgresql\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\apache\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\apache\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\openoffice\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\openoffice\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\apache-tomcat\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\resin\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\resin\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\jetty\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\jetty\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\subversion\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\Programme\XAMMP\lucene\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\lucene\scripts\ctl.bat START)
if exist E:\Programme\XAMMP\third_application\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\Programme\XAMMP\third_application\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\third_application\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\lucene\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\Programme\XAMMP\subversion\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\subversion\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\jetty\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\jetty\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\hypersonic\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\resin\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\resin\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\Programme\XAMMP\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\openoffice\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\openoffice\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\apache\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\apache\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\ingres\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\ingres\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\mysql\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\mysql\scripts\ctl.bat STOP)
if exist E:\Programme\XAMMP\postgresql\scripts\ctl.bat (start /MIN /B E:\Programme\XAMMP\postgresql\scripts\ctl.bat STOP)

:end


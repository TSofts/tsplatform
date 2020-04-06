@echo off
:: set release pack path
echo %date%

set curdate="release_tsplatform_%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%"
set curdate=%curdate: =0%
7z a release\%curdate%.zip admin contributing system tests
pause
exit
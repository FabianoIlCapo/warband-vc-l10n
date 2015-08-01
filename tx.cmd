MODE CON: COLS=110
@echo off && title Updating translations from Transifex... && set path=%cd%/.tx
:up
::convert everything to Joomla INI format
luajit tx.lua convert

::Rename extension of language file from csv to ini
for /R %x in (*.csv) do ren "%x" *.ini

::push our latest strings to the web
::tx push -s -t -f --skip --no-interactive
::tx push -s -f --skip --no-interactive
::tx push -s -t -f --skip --no-interactive
::tx push -t -l sv --skip --no-interactive

::pull latest translations
tx pull -a -f --skip --minimum-perc=0 --mode=reviewer

::Rename extension of language file from ini to csv
for /R %x in (*.ini) do ren "%x" *.csv

::revert back to mab format
luajit tx.lua revert

pause
cls && goto :up

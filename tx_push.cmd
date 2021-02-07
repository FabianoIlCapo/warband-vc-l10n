MODE CON COLS=110
@echo off && title Updating translations from Transifex... && set path=%cd%/.tx
:up
::convert everything to Joomla INI format
echo ----- Converting local files to Joomla format...
luajit tx.lua convert
echo ----- Conversion complete!

::Rename extension of language file from csv to ini
echo ----- Renaming local files to .ini...
for /R %%x in (*.csv) do ren "%%x" *.ini
echo ----- Renaming complete!

::push our latest strings to the web
echo ----- Pushing local template from en folder to Transifex...
::tx push -s -t -f --skip --no-interactive
tx push -s -f --skip --no-interactive
::tx push -s -t -f --skip --no-interactive
::tx push -t -l sv --skip --no-interactive
echo ----- Push complete!

::pull latest translations
::echo ----- Pulling new translations from Transifex...
::tx pull -a -f --skip --minimum-perc=1 --mode=reviewer
::echo ----- Pulling complete!

::Rename extension of language file from ini to csv
echo ----- Renaming files to .csv...
for /R %%x in (*.ini) do ren "%%x" *.csv
echo ----- Renaming complete!

::revert back to mab format
echo ----- Converting them to Mount and Blade format...
luajit tx.lua revert
echo ----- Conversion complete!
echo ----- Press any key to restart the process or close this window to exit.

pause

cls && goto :up

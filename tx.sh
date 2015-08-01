#!/bin/sh

echo "Updating translations from Transifex..."

# convert everything to Joomla INI format
luajit tx.lua convert

# Rename extension of language file from csv to ini
find . -name "*.csv" -exec rename -v 's/\.csv$/\.ini/i' {} \;

# push our latest strings to the web
# tx push -s -t -f --skip --no-interactive
# tx push -s -f --skip --no-interactive
# tx push -s -t -f --skip --no-interactive
# tx push -t -l sv --skip --no-interactive

# pull latest translations
tx pull -a -f --skip --minimum-perc=0

# Rename extension of language file from ini to csv
find . -name "*.ini" -exec rename -v 's/\.ini$/\.csv/i' {} \;

# revert back to mab format
luajit tx.lua revert

echo "Done!"

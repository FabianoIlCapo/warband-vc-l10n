What is this all about?
------------------------

This is a tiny toolset for converting between Transifex and the Mount&Blade *.csv language file format.
It works like an adapter bridging the functionality by using Joomla's INI format as middleman in the translation platform.

[Transifex - Collaborative Web Translation platform] <-> [Joomla INI format] <-> [M&B language file]

It allows to easily translate mods and games of the Mount&Blade series right from the intuitive Transifex web interface.

For maintainers, translations can be pushed (send new original strings to the web interface) and pulled
(grabbing the latest translations from the web, adding them into the game) with ease using an automated process.


Does anybody use it?
---------------------

The script has been successfully used by [Star Wars Conquest] and [The Last Days] modding projects,
translating them in more than six languages in typical crowdsourced fashion, and works both in Windows and Unices.


Works in the original M&B 1.011 too?
-------------------------------------

Yes, it does. The format is all the same.


Warning about compatibility with different version
---------------------------------------------------

The translation is not 100% compatible with newer version because warband have some strings with key dinamic,
dlga_start:close_window.* (and probably others that I not saw) that it seems that mingling any change even just one of the string.
There are also strings that change substantially but remaining with same key.
The best thing is keep final build or snapshot of each game/mod version (advices for how do a pubblic zip of translations)



Files missed here to take from base translation
------------------------------------------------

2 files are missed in transifex of Viking Conquest because same of warband base and is waste of time maintain them also here.
The files are item_modifiers and uimain and should be taken from here:
https://www.transifex.com/projects/p/warband/

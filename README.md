# Triple Blind Character Randomizer
This is a script to create random character sheets in [Triple Blind](https://library.interactiveliterature.org/brands/interactivities-ink/projects/28-triple-blind) role playing game.

> A diplomatic scenario takes a turn for the unusual. This experimental larp contains 9 characters split into thirds. The characters are randomly distributed so that even the GM doesn't know who is actually whom.

## Usage
To create character sheets, you first need a copy of the original game sheet. You can download your own copy from [Larp Library](https://library.interactiveliterature.org/brands/interactivities-ink/projects/28-triple-blind). Save the file as `TripleBlind.pdf` and store in the same directory as this script.

The creation of character sheets is easy: just run
```
./triple-blind.sh player-1 player-2 player-3 player-4 player-5 player-6 player-7 player-8 player-9
```
where each `player-#` is the name of one of the players. This creates a pdf file for each player in `characters/` directory. For example, the character sheet for `player-3` is stored in `characters/player-3-triple-blind.pdf`.

If you don't know the names of the players in advance, you can just use placeholders:
```
./triple-blind.sh a b c d e f g h i
```

## Requirements
This script is designed to run on Linux systems. It might also work on other systems, but no guarantee is given. It depends on [Poppler](https://poppler.freedesktop.org/) package to work, namely `pdfseparate` and `pdfunite` scripts.

## Licence
The script is provided under a Creative Commons share alike license by Henrik Lievonen.

This script is not enforced by Mike Young, the creator of Triple Blind; I just created this script to help me and my friends to run the game.

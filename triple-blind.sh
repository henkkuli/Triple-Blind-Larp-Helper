#!/bin/bash
set -e

function usage() {
    echo "$0 <player 1> <player 2> <player 3> <player 4> <player 5> <player 6> <player 7> <player 8> <player 9>"
    echo "Create character sheets for Triple Blind larp"
    echo ""
    echo "  <player #>      Name of player #; the output file will get the player name"
}


if [[ ! -f "TripleBlind.pdf" ]]
then
    echo "You need to store the game file as 'TripleBlind.pdf' in the same directory as you run this scrip in"
    usage
    exit 1
fi

if [[ $# -ne 9 ]]
then
    echo "You need to provide 9 user names as arguments; $# were given"
    usage
    exit 1
fi

players=("$@")

# Randomize character sheets
characters=(`shuf -i 0-8`)
groups=(`shuf -i 0-8`)
identities=(`shuf -i 0-8`)

# Split original pdf to pages
mkdir -p pages
pdfseparate TripleBlind.pdf pages/%d.pdf

# Construct per-player character sheets
mkdir -p characters
for i in {0..8}
do
    pdfunite \
        "pages/2.pdf" \
        "pages/$((identities[$i] + 21)).pdf" \
        "pages/$((groups[$i] + 12)).pdf" \
        "pages/$((characters[$i] + 3)).pdf" \
        "characters/${players[$i]}-triple-blind.pdf"
done


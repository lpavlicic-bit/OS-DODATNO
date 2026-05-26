#!/bin/bash

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Greška: Skripta prima minimalno 1, a maksimalno 2 argumenta!"
    echo "Upotreba: $0 \"poruka\" [opcionalna_zastavica]"
    exit 1
fi

poruka=$1
zastavica=$2

if [ -n "$zastavica" ]; then
    case "$zastavica" in
        -b|-d|-g|-p|-s|-t|-w|-y)
            /usr/games/cowsay "$zastavica" "$poruka"
            ;;
        *)
            echo "Greška: Neispravna zastavica '$zastavica'!"
            echo "Dopuštene zastavice su: -b, -d, -g, -p, -s, -t, -w, -y"
            exit 1
            ;;
    esac
else
    /usr/games/cowsay "$poruka"
fi

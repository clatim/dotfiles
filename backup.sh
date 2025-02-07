#!/usr/bin/env bash
rsync -a -v --delete --progress /home/chipmonkcheeks /media/chipmonkcheeks/05209c94-b511-465a-bd0b-51df76b60e59/laptop_backup \
    --exclude '/home/chipmonkcheeks/.cargo/' \
    --exclude '/home/chipmonkcheeks/.cache/' \
    --exclude '/home/chipmonkcheeks/.local/share/Trash/' \
    --exclude '/home/chipmonkcheeks/.local/share/Anki2/' \
    --exclude '/home/chipmonkcheeks/.local/share/flatpak/' \
    --exclude '/home/chipmonkcheeks/.config/google-chrome/'


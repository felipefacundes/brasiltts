#!/bin/bash
sudo cp *tts-generic.conf /etc/speech-dispatcher/modules/
sudo cp speechd.conf /etc/speech-dispatcher/
sudo pacman -S espeak-ng speech-dispatcher orca onboard
sudo pacman -U mbrola-3.0.1h-5-x86_64.pkg.tar.xz
sudo pacman -U mbrola-voices-br1-971105-5-any.pkg.tar.xz
sudo pacman -U mbrola-voices-br4-1-2-any.pkg.tar.xz
sudo pacman -U mbrola-voices-br3-000119-4-any.pkg.tar.xz
speak-ng -v mb/mb-br1 -s 124 -a 200 "instalação do Brasil TTS, com às vozes: Angêlô; Maricota; e Nordestino. Concluída com sucesso."

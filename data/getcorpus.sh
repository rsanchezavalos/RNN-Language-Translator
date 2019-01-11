#!/usr/bin/env bash
### Corpus obtained from: http://www.manythings.org/anki/
wget -qO- 'http://www.manythings.org/anki/spa-eng.zip' | jar xvf  /dev/stdin

# Split to eng and spa
cat spa.txt | awk '{print $1}' > eng.txt
cat spa.txt | awk '{print $2}' > spa.txt

#!/bin/sh
# Mod sin código: solo recetas. Fabric API las carga como datapack del mod.
cd "$(dirname "$0")/src/main/resources" && mkdir -p ../../../build/libs && rm -f ../../../build/libs/*.jar
ID=$(python3 -c "import json;print(json.load(open('fabric.mod.json'))['id'])")
VER=$(python3 -c "import json;print(json.load(open('fabric.mod.json'))['version'])")
zip -qr "../../../build/libs/$ID-1.20.1-$VER.jar" . && ls ../../../build/libs

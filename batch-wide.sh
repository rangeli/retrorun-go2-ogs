#!/bin/bash

make all
strip retrorun
mv retrorun retrorun32-wide.english
sed -i 's/var->value = "English";/var->value = "French";/' src/main.cpp
make all
strip retrorun
mv retrorun retrorun32-wide.french
sed -i 's/var->value = "French";/var->value = "German";/' src/main.cpp
make all
strip retrorun
mv retrorun retrorun32-wide.german
sed -i 's/var->value = "German";/var->value = "Italian";/' src/main.cpp
make all
strip retrorun
mv retrorun retrorun32-wide.italian
sed -i 's/var->value = "Italian";/var->value = "Japanese";/' src/main.cpp
make all
strip retrorun
mv retrorun retrorun32-wide.japanese
sed -i 's/var->value = "Japanese";/var->value = "Spanish";/' src/main.cpp
make all
strip retrorun
mv retrorun retrorun32-wide.spanish
sed -i 's/var->value = "Spanish";/var->value = "Default";/' src/main.cpp
make all
strip retrorun
mv retrorun retrorun32-wide.default
sed -i 's/var->value = "Default";/var->value = "English";/' src/main.cpp



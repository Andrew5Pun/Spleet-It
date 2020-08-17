#!/bin/bash
cd
source .bash_profile;
conda init;
conda activate my_env;
spleeter separate -i  "$1"  -p $2 -o "$3"

exit;

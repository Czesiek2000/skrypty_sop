#!/bin/bash

# Jeżeli wykonanie poprzedniego zadania nie zakończyło się błędem to wyniki poprzedniego zadania posortuj od najmniejszego 
# do największego i zapisz do pliku o tej samej nazwie.

if [ -f $1 ]
then

    sort $1 >> $1
fi
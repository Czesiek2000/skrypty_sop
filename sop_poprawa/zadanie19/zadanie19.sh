#!/bin/bash
# Porownanie zawartosci plikow i wyswietlenie tylko komunikatu gdy jest jakas roznica czy nie ma
diff -q test.txt t.txt > dev/null && echo 'equal' || echo "diffrent"

exit 0
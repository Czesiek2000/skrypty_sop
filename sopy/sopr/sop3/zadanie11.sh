# Napisz polecenie, które wyświetli wszystkie pliki lub katalogi z katalogu /etc, które:

# zawierają w nazwie literę a.
# ls /etc | grep "a"

# są do odczytu dla wszystkich. ?
# ls -l /etc

# na końcu nazwy mają małą literkę s lub d.
# ls /etc | grep "s\|d$" # moze byc zle

# na końcu nazwy mają małą literkę.
# ls /etc | grep "[a-z]$"

# na początku mają literkę i.
# ls /etc | grep "^i"
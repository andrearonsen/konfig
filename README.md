*Konfig*

Kryptering av authors.txt
gpg --symmetric --cipheralgo AES256 --output authors.txt.enc authors.txt
base64 authors.txt.enc > authors.txt.enc.base64
base64 -d authors.txt.enc.base64 > authors.txt.enc
gpg --decrypt --output authors.txt authors.txt.enc

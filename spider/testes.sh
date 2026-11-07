#!/bin/bash
contador=1
teste=(
	"http://localhost:8000"
	"http://127.0.0.1:8000/pagina"
	"HTTP://EXEMPLO.COM"
	"http://exemplo.com?x=1#topo"
	"http://_exemplo.com"
	"http://-x.com"
	"http://exemplo..com"
	"http://exemplo.com:0"
	"http://exemplo.com:65536"
	"http://exemplo.com:abc"
	"http://[::1]:8000"
	"ftp://exemplo.com"
	"exemplo.com"
	"http://"
)

for item in "${teste[@]}"
do
	echo "$contador"
	./spider "$item"
	((contador++))
done
cat teste.txt

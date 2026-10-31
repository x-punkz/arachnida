#!/bin/bash
contador=1
teste=(
	"http://localhost:8000"
	"http://127.0.0.1:8000/pagina"
	"http://exemplo.com"
	"http://_exemplo.com:8000"
	"http://exemplo..com"
	"http://-x.com"
	"http://exemplo.com:0"
	"http://exemplo.com:65536"
	"http://exemplo.com:"
	"http://usuario:senha@exemplo.com"
)

for item in "${teste[@]}"
do
	echo "$contador"
	./spider "$item"
	((contador++))
done

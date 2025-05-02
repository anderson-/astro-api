
shell:
	nix-shell

install:
	npm install

run:
	node index.js

test:
	curl -X POST http://localhost:3000/mapa-astral -H "Content-Type: application/json" -d \
		'{"date":"1995-10-13","time":"15:30","lat":-23.5505,"lng":-46.6333}' | jq .
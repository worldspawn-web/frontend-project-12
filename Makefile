install:
	npm ci

build:
	npm install && cd ./frontend && npm install && npm run build

lint-frontend:
	make -C frontend lint

start-frontend:
	make -C frontend start

start-backend:
	npx start-server -s ./frontend/build

start:
	make start-backend & make start-frontend
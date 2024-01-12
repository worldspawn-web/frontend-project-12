install:
	npm ci

lint-frontend:
	make -C frontend lint

start-frontend:
	make -C frontend start

start-backend:
	npx start-server

start:
	npx start server -s ./frontend/build

deploy:
	npm ci && cd ./frontend && npm ci && npm run build:deploy
	
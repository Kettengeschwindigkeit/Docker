run:
	docker run -d -p 3000:4200 --env-file ./config/.env --rm --name logsapp logsapp:envv
run-dev:
	docker run -d -p 3000:3000 -v "/Users/Andrew/WebstormProjects/logs-app:/app" -v logs:/app/node_modules -v logs:/app/data --rm --name logsapp logsapp:volumes
stop:
	docker stop logsapp
	
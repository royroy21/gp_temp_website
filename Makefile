# Put any command that doesn't create a file here (almost all of the commands)
.PHONY: \
	help \
	start \
	update_requirements \

usage:
	@echo "Available commands:"
	@echo "help............................Display available commands"
	@echo "start...........................Starts the flask app"
	@echo "update_requirements.............Update requirements file after adding a dependency"

help:
	@make usage

start:
	@flask run --host=0.0.0.0

update_requirements:
	@pip freeze > requirements.txt

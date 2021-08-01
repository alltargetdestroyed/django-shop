#!/usr/bin/make

include .env

SHELL = /bin/sh 
CURRENT_UID := $(shell id -u):$(shell id -g)

export CURRENT_UID

up_dev:
	./manage.py runserver

migrate:
	./manage.py makemigrations
	./manage.py migrate

su:
	./manage.py createsuperuser
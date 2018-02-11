SHELL := /usr/bin/env bash -e

all: clean setup install serve

setup:
	rbenv install --skip-existing
	gem install bundler

clean:
	rm -rf ./build ./sass-cache

install:
	bundle install --path vendor

serve:
	bundle exec middleman server

.PHONY: build
build:
	bundle exec middleman build

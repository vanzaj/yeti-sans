NP := ./node_modules/.bin
BUILD := ./build

.PHONY: help

help:
	@echo 'make clean | css | examples'

build_dir:
	mkdir -p $(BUILD)/examples
	mkdir -p $(BUILD)/css

clean:
	/bin/rm -f $(BUILD)/css/*
	/bin/rm -f $(BUILD)/examples/*

css: build_dir
	$(NP)/stylus -u autoprefixer-stylus ./style/main.styl -o $(BUILD)/css
	$(NP)/cssmin $(BUILD)/css/main.css > $(BUILD)/css/main.min.css

examples: css
	$(NP)/jade -o $(BUILD)/examples -P ./templates/components/index.jade
	$(NP)/jade -o $(BUILD)/examples -P ./templates/blog.jade
	$(NP)/jade -o $(BUILD)/examples -P ./templates/landing.jade
	$(NP)/jade -o $(BUILD)/examples -P ./templates/forms.jade


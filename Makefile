NP := ./node_modules/.bin
BUILD := ./build

.PHONY: help

help:
	@echo 'make clean | css | html'

build_dir:
	mkdir -p $(BUILD)/css

clean:
	/bin/rm -f $(BUILD)/css/*
	/bin/rm -f $(BUILD)/*.html

css: build_dir
	$(NP)/stylus -u autoprefixer-stylus ./style/main.styl -o $(BUILD)/css
	$(NP)/cssmin $(BUILD)/css/main.css > $(BUILD)/css/main.min.css

html: css
	$(NP)/jade -o $(BUILD) -P ./templates/components/index.jade
	$(NP)/jade -o $(BUILD) -P ./templates/blog.jade
	$(NP)/jade -o $(BUILD) -P ./templates/landing.jade
	$(NP)/jade -o $(BUILD) -P ./templates/forms.jade


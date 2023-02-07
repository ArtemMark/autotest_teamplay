.PHONY: install
.DEFAULT_GOAL := install

TARGET = ./tests
TAG = function

install:
	python3 -m venv .venv
	. .venv/bin/activate && pip install -r requirements.txt
	. .venv/bin/activate && python -m lefthook install

test:
	. .venv/bin/activate && robot -d results $(TARGET)

test_tag:
	. .venv/bin/activate && robot -d results -i $(TAG) $(TARGET)

all: install test

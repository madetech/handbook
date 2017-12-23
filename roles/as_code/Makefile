all: install build

install:
	bundle check || bundle install

build:
	bundle exec jobspec build --in lib --out ..

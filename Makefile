## Add dockerized commands to path
PATH := tools:$(PATH)

docker-build:
	docker build  -t timeweb/phpstan-enum .

install:
	composer install

test:
	phpunit

test-coverage:
	phpunit  -d memory_limit=256m --coverage-html=_coverage --coverage-text

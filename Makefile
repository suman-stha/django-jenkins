.PHONY: install migrate developmentrun productionrun
	
install:
	pip install --upgrade setuptools pip
	pip install -r requirements.txt

lmigrate:
	python manage.py makemigrations --settings=config.settings.development
	python manage.py migrate --settings=config.settings.development

pmigrate:
	python manage.py migrate --settings=config.settings.production --noinput

lcollectstatic:
	python manage.py collectstatic --settings=config.settings.development --noinput

pcollectstatic:
	python manage.py collectstatic --settings=config.settings.production --noinput

developmentrun:
	python manage.py runserver 0.0.0.0:8080 --settings=config.settings.development

productionrun:
	python manage.py runserver 0.0.0.0:8080 --settings=config.settings.production
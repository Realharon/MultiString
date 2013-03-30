clean: 
	rm -rf dist/
	rm -rf MultiString.egg-info
	rm -rf build/
	rm -rf .tox/
	rm -rf test/__pycache__
	rm -rf docs.zip
	rm -rf README.rst
	cd docs && $(MAKE) clean

register: docs.zip
	python setup.py sdist bdist_egg register upload

docs.zip:
	cp README.md docs/
	cd docs && $(MAKE) all
	cp docs/docs.zip .

README.md: EMDAER.md
	mv EMDAER.md README.md

EMDAER.md: README.md
	cp README.md EMDAER.md

README.rst: README.md docs.zip
	cp docs/README.rst .
	mv README.md EMDAER.md



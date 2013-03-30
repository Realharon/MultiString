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

README.rst: docs.zip
	cp docs/README.rst .


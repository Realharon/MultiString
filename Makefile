clean: 
	rm -rf dist/
	rm -rf MultiString.egg-info
	rm -rf build/

register: docs
	python setup.py sdist bdist_egg register upload

docs:
	cp README.md docs/
	cd docs && $(MAKE) all
	cd docs && $(MAKE) clean


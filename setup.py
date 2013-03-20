from setuptools import setup, find_packages
readme = None
with open("README.md") as readme_md:
    readme = readme_md.read()

setup(
        name = "MultiString",
        version = "0.1",
        description="MultiString is a class that allows strings to take on different meanings depending on their context.",
        long_description = readme,    
        author="Tom A. Thorogood",
        author_email="tom@tomthorogood.com",
        license="GPLv3",
        url = "http://www.github.com/tomthorogood/MultiString",
        test_suite = 'MSTestCase',
        packages = find_packages(exclude=['setup.py','tests']),
        zip_safe = True
)


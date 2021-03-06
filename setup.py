from setuptools import setup, find_packages

readme = "See documentation at github.com/tomthorogood/MultiString"
try:
    with open("README.md") as readme_md:
        readme = readme_md.read()
except IOError:
    try:
        with open("README.rst") as readme_rst:
            readme = readme_rst.read()
    except IOError:
        pass
setup(
        name = "MultiString",
        version = "0.1.5c",
        description="MultiString is a class that allows strings to take on different meanings depending on their context.",
        long_description = readme,    
        author="Tom A. Thorogood",
        author_email="tom@tomthorogood.com",
        license="GPLv3",
        url = "http://www.github.com/tomthorogood/MultiString",
        test_suite = 'test',
        packages = find_packages(exclude=['setup.py','test']),
        zip_safe = True
)


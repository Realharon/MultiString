all: index.html README.rst
	rm -rf docs.zip
	markdown README.md > index.html
	zip docs.zip index.html

index.html: README.md
	markdown $< > $@

README.md:
	cp ../README.md .

README.rst: README.md
	pandoc -o README.rst README.md

purge: clean
	rm -rf docs.zip
	rm -rf README.rst

clean:
	rm -rf index.html
	rm -rf README.md

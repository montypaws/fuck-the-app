BASEDIR=$(CURDIR)
DOCDIR=$(BASEDIR)/docs

install:
	pip install mkdocs
	pip install mkdocs-material

link:
	mkdir -p docs
	ln -sf $(BASEDIR)/README.md $(DOCDIR)/index.md
	ln -sf $(BASEDIR)/CONTRIBUTING.md $(DOCDIR)/CONTRIBUTING.md

preview: link
	mkdocs serve --dev-addr=0.0.0.0:8080

build: link
	mkdocs build

deploy: link
	mkdocs gh-deploy --clean

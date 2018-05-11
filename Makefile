install:
	pip install mkdocs
	pip install mkdocs-material

preview:
	mkdocs serve

deploy:
	mkdocs gh-deploy --clean

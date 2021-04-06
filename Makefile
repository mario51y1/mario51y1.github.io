serve: 
	bundle exec jekyll serve --livereload

build:
	bundle exec jekyll build

production_build:
	JEKYLL_ENV=production bundle exec jekyll build
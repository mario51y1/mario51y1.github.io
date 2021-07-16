serve: 
	bundle exec jekyll serve -I -V --livereload

build:
	bundle exec jekyll build -I -V

production_build:
	JEKYLL_ENV=production bundle exec jekyll build

install:
	bundle install

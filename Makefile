serve: 
	bundle exec jekyll serve -I -V --livereload

drafts: 
	bundle exec jekyll serve -I -V --livereload --drafts

build:
	bundle exec jekyll build -I -V

production_build:
	JEKYLL_ENV=production bundle exec jekyll build

install:
	bundle install

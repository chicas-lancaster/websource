all:
	rm -f */*/*~
	hyde gen

force:
	rm -f */*/*~
	hyde gen -r

serve:
	(cd deploy ; python -m SimpleHTTPServer & )


publish:
	rm -f */*/*~
	hyde gen -r
	hyde publish

travis:
	pip install -r requirements.txt
	./push.sh

stagecopy:
	cp -r deploy/* ../chicas.gitlab.io/
	./tools/stagify.sh ../chicas.gitlab.io/
stagepush:
	cd ../chicas.gitlab.io/ && \
	git add . && \
	git commit -a -m 'staging push' && \
	git push

# Convert poster PDFs to thumbnails with:
# convert  -geometry 190x -background white -alpha remove -crop 190x100+0+0 foo.pdf foo.png


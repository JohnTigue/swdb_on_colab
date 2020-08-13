.PHONY: prep_for_build

# In the repo, AIBS' SWDB content and Jupyter Book support are intentionally separate
# First step in a build is to merge the two 
prep_for_build:
	@echo "Prepping for build. Copying swbd/** jupyter_boo/** to _build/"
	@echo "Merging swdb/ and jupyter_book/"
	mkdir -p _build/input/swdb/
	cp -R swdb/* _build/input/swdb/
	cp -R jupyter_book/* _build/input/

clean:
	rm -R _build

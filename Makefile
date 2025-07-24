index.html : index.md pandoc.css footer.html
	@echo --- Generating HTML file from markdown ---
	@pandoc -s -H pandoc.css -A footer.html --from markdown+task_lists \
	    --metadata date="Last updated: `date -u '+%e %B %Y (%a)'`" \
	    index.md -o index.html
	@sed -i -e 's/\ disabled\=\"\"\ //g' index.html

.PHONY : clean
clean :
	@echo --- Deleting HTML file ---
	@-rm index.html


SERVER=mfcabrera.com
USER=mfcabrera
LOCATION=public_html

run:
	bash run.sh

upload:
	jekyll b  && rsync -avz --delete _site/ $(USER)@$(SERVER):$(LOCATION)

.PHONY: epub, download, clean, help

.DEFAULT: download_and_make
download_and_make: download epub
	echo "Done"

epub: download
	./make.py "metarationality.com"

download:
	if [ ! -d "metarationality.com" ]; then \
		wget -r -l 1 -k -p -E https://metarationality.com/; \
	fi

clean:
	ebook-convert metarationality.epub metarationality_clean.epub

help:
	@echo "metarationality.com generator"
	@echo
	@echo "Parameters:"
	@echo
	@echo "\tepub"
	@echo "\t\tGenerate epub from downloaded files."
	@echo
	@echo "\tdownload"
	@echo "\t\tDownload files on metarationality.com which can be used to generate epub."
	@echo
	@echo "\tclean"
	@echo "\t\tConvert generated epub with calibre for cleaner version."
	@echo

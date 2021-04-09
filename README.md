# In the Cells of the Eggplant ebook generator

Forked from https://github.com/Bystroushaak/meaningness.com_epub_generator, all credit goes to  Bystroushaak

This is a script that takes a bunch of .html files from [https://metarationality.com/](https://metarationality.com/) online ebook and converts them to epub.

## What to do when it breaks

Obviously, the project is a parser strapped together with epub generator with ducktape, twigs and mud, so it breaks all the time. If that happens to you, just report the issue on github.

## How to use

Install requirements:

    pip install --user -r requirements.txt

Run Makefile:

    make epub

Optionally, you can also run the calibre conversion script to fix all kind of wrongness with the epub:

    ebook-convert metarationality.epub metarationality_clean.epub

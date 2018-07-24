# UForge API Documentation [![Build Status](https://travis-ci.org/usharesoft/api-docs.svg?branch=master)](https://travis-ci.org/usharesoft/api-docs)

This directory contains the source for UForge API online documentation.  This uses [Sphinx](http://sphinx-doc.org) to build static html files from these source files.

### Building locally

Install [Sphinx](http://sphinx-doc.org)

    $ pip install sphinx

Install [rst2pdf](https://github.com/rst2pdf/rst2pdf).  This allows users to build pdfs on Windows machines (on Mac or Linux use latex to create pdfs of this documentation).

    $ pip install rst2pdf

Install [read the docs theme](https://github.com/snide/sphinx_rtd_theme):

    $ pip install sphinx_rtd_theme

Build the docs and open them in your browser:

    $ cd en
    $ make html

The html files are in the build directory, for example:

    $ open en/build/html/index.html

### Building in a separate virtualenv

Launch the [venv.sh](blob/master/venv.sh) script to prepare the virtualenv or to activate it:

    $ source ./venv.sh

Compile the docs with the `make-doc` function:

    $ make-doc

Launch a local web server to view the compiled doc with the `serve-doc` function:

    $ serve-doc

Terminate the virtual env with `deactivate` command:

    $ deactivate

### Contributions Welcome!

If you find a typo or you feel like you can improve the content of the documentation, we welcome contributions and comments. Feel free to open issues or pull requests like any normal GitHub project.
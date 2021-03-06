#!/bin/bash

# Checking if script is being sourced (only works for bash)
(return 0 2>/dev/null) && SOURCED=1 || SOURCED=0
if [ $SOURCED != 1 ]; then
    echo "Please source the command instead of executing it:"
    echo "  source $0"
    exit 1
fi

BASEDIR=$(pwd)

if [ ! -f "$BASEDIR/venv.sh" ]; then
    echo "Please run this script at the root of the api-docs directory"
    return 1
elif [ -d "$BASEDIR/.venv" ]; then
    echo "Existing virtual environment found."
    source $BASEDIR/.venv/bin/activate
else
    echo "==================================================================="
    echo "Installing new virtual environment, this will take a few minutes..."
    echo "==================================================================="
    virtualenv $BASEDIR/.venv && source $BASEDIR/.venv/bin/activate && pip install -r $BASEDIR/requirements.txt
fi

function make-doc() {
    pushd "$BASEDIR/en" && make clean htmlwerror && popd
}

function serve-doc() {
    echo "ctrl-C to stop the server " && pushd $BASEDIR/en/build/html &&
        python -m SimpleHTTPServer || popd
}

function copy-uforge-api() {
    UFORGE_DIR=$(realpath "$BASEDIR/../uforge")
    if [[ ! -z "$1" ]]; then
       UFORGE_DIR=$1
    fi

    echo "Please make sure that uforge wadl has been generated (mvn clean install -PnoLib,noGWT,wadl) before copying."
    echo "Copy uforge API files from $UFORGE_DIR? [y/n]"
    read
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Copying generated API files into en/source/ ..."
        cp -v $UFORGE_DIR/uForgeRest/target/wadl/uforge.xsd $BASEDIR/en/source/pages/dto-objects/
        cp -v $UFORGE_DIR/uForgeRest/target/wadl/application.wadl $BASEDIR/en/source/pages/
        UFORGE_API_DIR=$(find $UFORGE_DIR/uForgeRest/target/xslt -type d -name 'uForge API')
        cp -r "$UFORGE_API_DIR/index.rst" "$UFORGE_API_DIR/pages" $BASEDIR/en/source/
        cp -v $UFORGE_DIR/UForgeAPI/target/xslt/dto/*.rst $BASEDIR/en/source/pages/dto-objects

        echo "Fixing the generated index.rst to add the missing label for end-user doc if needed..."
        # the silent grep makes sure we don't do it if the label already exists
        grep -q '_apis-index:' $BASEDIR/en/source/index.rst || sed -i '1 a \\n.. _apis-index:' $BASEDIR/en/source/index.rst

    else
        echo "Copy aborted."
    fi
}

echo -e
echo -e "\e[1mmake-doc\e[0m can be used to generate the doc html:"
echo -e "  make-doc"
echo -e
echo -e "\e[1mserve-doc\e[0m can be used to serve the generated html for local consultation:"
echo -e "  serve-doc"
echo -e
echo -e "\e[1mcopy-uforge-api [uforge-dir]\e[0m can be used to copy uforge generated API files to update apis doc:"
echo -e "  copy-uforge-api ../uforge"
echo -e "  \e[2m# the above is the default value\e[0m"
echo -e "  copy-uforge-api"
echo -e
echo -e "To exit the virtual environment, execute 'deactivate'"
echo -e "To remove the virtual environment, delete the directory '.venv'"
echo -e "If your virtual environment stops working, try deleting '.venv', 'deactivate' and rerun this script"

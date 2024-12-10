#!/bin/bash

# Function to check for errors and exit if the previous command failed
function TestError() {
    if [ $? -ne 0 ]; then
        echo "Error: Command failed with exit code $?. Exiting..." >&2
        exit $?
    fi
}

# Function to clean up auxiliary files
function ResetAll() {
    echo "Cleaning up auxiliary files..."
    rm -f *.pdf *.aux *.bbl *.bcf *.blg *.log *.toc *.out *.run.xml
    # Uncomment the line below for recursive removal
    # rm -rf *.pdf *.aux *.bbl *.bcf *.blg *.log *.toc *.out *.run.xml
}

# Function to build LaTeX
function BuildLaTeX() {
    echo "Running pdflatex..."
    pdflatex report
    TestError

    echo "Running biber..."
    biber report
    TestError

    echo "Running pdflatex again..."
    pdflatex report
    TestError
}

# Check the number of arguments
if [ $# -gt 1 ]; then
    echo "Error: Max 1 parameter accepted." >&2
    exit 1
fi

# Handle script arguments
case "$1" in
    build)
        BuildLaTeX
        ;;
    clean)
        ResetAll
        ;;
    rebuild)
        ResetAll
        BuildLaTeX
        ;;
    *)
        echo "Usage: $0 {build|clean|rebuild}" >&2
        exit 1
        ;;
esac

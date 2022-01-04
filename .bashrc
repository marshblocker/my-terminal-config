# usage: findfile <directory path> <file name>
#
# List all files with <file name> as its or part of
# its file name starting from <directory path> up to
# all its root files.
findfile() {
    find "$1" -xdev -name "$2" 2>/dev/null;
}

cdd() {
    cd "$1" && dir;
}

gitc() {
    git add .;
    git commit -m "$1";
}

gitp() {
    git add .;
    git commit -m "$1";
    git push origin;
}

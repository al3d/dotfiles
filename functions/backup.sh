# Create a backup of the given file(s)
# USAGE: bk file1 file2 file3
#        -> result: file1.bak file2.bak file3.bak
function bk() {
    for file in "$@"
    do
        cp $file{,.bak}
    done
}



# Restores the file from backup
# USAGE: rbk file.bak OR rbk file
#        -> result: replaces file with file.bak
function rbk() {
    if [[ $1 == *.bak ]]
    then
        backup_file=$1
        old_file=${backup_file:0:$((${#backup_file}-4))}
    else
        old_file=$1
        backup_file=${old_file}".bak"
    fi
    read -p "Replace the old backup? (y/N) " -n 2
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        `cp $backup_file $old_file`
    fi
}

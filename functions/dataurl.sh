# Create a data URL from an image (works for other file types too, if you tweak the Content-Type afterwards)
function dataurl() {
    echo "data:image/${1##*.};base64,$(openssl base64 -in "$1")" | tr -d '\n'
}

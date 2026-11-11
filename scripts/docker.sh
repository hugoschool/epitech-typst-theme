BASE_DIR=$(realpath $(dirname "$0"))
TYPST="docker run -v $BASE_DIR/..:/app ghcr.io/typst/typst:0.15.1"

$TYPST compile /app/examples/slides.typ --root /app --font-path /app/assets
$TYPST compile /app/examples/subject.typ --root /app --font-path /app/assets

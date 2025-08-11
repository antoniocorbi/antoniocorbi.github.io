
#set shell := ["fish", "-c"]

# Build the web
@default:
    just build

# List targets
@list:
    just --list

# Where are we?
system-info:
  @echo "This is an {{arch()}} machine".

# Build frtree App
alias b := build
@build:
    echo Building Homepage
    ./build.sh &> /dev/null

# Upload to github
@push:
    echo Pushing to github
    git push -u origin one

# Serve
@serve:
    echo "Open http://127.0.0.1:4000"
    basic-http-server ./public

# Clean leftovers
@clean:
    find . -name "*~" -delete

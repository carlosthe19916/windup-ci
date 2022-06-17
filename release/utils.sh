#!/usr/bin/env bash

function setNextVersion() {
    # mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION"
    git config --global user.email "carlosthe19916@gmail.com"
    git config --global user.name "Carlos Feria"
    git commit --allow-empty -a -m "🏁 Releasing version $NEXT_VERSION"
    # git push origin HEAD:master
}

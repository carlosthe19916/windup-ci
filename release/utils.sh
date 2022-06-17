#!/usr/bin/env bash

function setNextVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
    git config --global user.email "carlosthe19916@gmail.com"
    git config --global user.name "Carlos Feria"
    git commit --allow-empty -a -m "🏁 Releasing version $NEXT_VERSION"
    git push origin HEAD:master
}

function releaseVersion() {
    echo "Not releasing to Maven central yet"

    # mvn -DskipTests \
    # release:prepare -DpreparationGoals='-DskipTests clean install' \
    # release:perform -P jboss-release,gpg-sign
}
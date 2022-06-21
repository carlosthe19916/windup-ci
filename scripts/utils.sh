#!/usr/bin/env bash

function setReleaseVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
    git config --global user.email "carlosthe19916@gmail.com"
    git config --global user.name "Carlos Feria"
    git commit --allow-empty -a -m "🏁 Releasing version $NEXT_VERSION"
    git push origin HEAD:master
}

function release() {
    mvn install -DskipTests -s settings.xml

    # mvn -DskipTests \
    # release:prepare -DpreparationGoals='-DskipTests clean install' \
    # release:perform -P jboss-release,gpg-sign
}

function setNextDevelopmentVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
    git config --global user.email "carlosthe19916@gmail.com"
    git config --global user.name "Carlos Feria"
    git commit --allow-empty -a -m "⬆️  Next version $NEXT_VERSION"
    git push origin HEAD:master
}

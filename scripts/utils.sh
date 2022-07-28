#!/usr/bin/env bash

function setReleaseVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
}

function release() {
    # mvn source:jar javadoc:jar verify gpg:sign install deploy \
    mvn package gpg:sign install deploy \
    -Dgpg.executable="$GPG_SCRIPT" -DskipTests \
    -s $SETTINGS_XML \
    -gs /home/runner/.m2/settings.xml 
}

function setNextDevelopmentVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
}

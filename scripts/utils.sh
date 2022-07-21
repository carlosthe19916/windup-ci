#!/usr/bin/env bash

function setReleaseVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
}

function release() {
    mvn deploy -DskipTests --settings $SETTINGS_XML --global-settings /home/runner/.m2/settings.xml 
}

function setNextDevelopmentVersion() {
    mvn -B versions:set versions:commit -DnewVersion="$NEXT_VERSION" -DprocessAllModules
}

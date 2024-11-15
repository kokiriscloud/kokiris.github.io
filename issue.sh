#!/bin/bash -

HELP="HELP \nSEVERITY : \n - down\n - disrupted\n - notice\nAFFECTED : \n - Kokiris Global France\n - KCH (Hébergement Cloud Kokiris) Roubaix\n - KCH (Hébergement Cloud Kokiris) Gravelines\n - Kokiris Strasbourg France\n - Kokiris Limburg Allemagne"

if [ -z $1 ] ; then
        echo "Missing TITLE"
        exit 2
    else
        export TITLE="$1"
fi

for var in SEVERITY AFFECTED ; do
    if ! env | grep -q $var ; then
        echo "Missing $var"
        echo -e $HELP
        exit 2
    fi
done

export DATESTART=$(date  +"%Y-%m-%d %H:%M")

#INCIDENT_NAME="$1"
envsubst '${TITLE} ${DATESTART} ${SEVERITY} ${AFFECTED}' < issue.tpl > content/issues/$(date +%Y-%m-%d-%H-%M)-${TITLE}.md

echo "file is here : content/issues/$(date +%Y-%m-%d-%H-%M)-${TITLE}.md"

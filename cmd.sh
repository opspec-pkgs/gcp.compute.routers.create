#!/bin/sh

set -e

gcloud auth activate-service-account --key-file=/keyFile

echo "checking for existing cloud router"

if eval "gcloud compute routers describe $name --project $projectId" >/dev/null 2>&1
then
  echo "found exiting cloud router"
  exit
else
  echo "existing cloud router not found"
fi

echo "creating cloud router..."
cloudRouterCreateCmd="gcloud compute routers create $name"
cloudRouterCreateCmd=$(printf "%s --network %s" "$cloudRouterCreateCmd" "$network")
cloudRouterCreateCmd=$(printf "%s --project %s" "$cloudRouterCreateCmd" "$projectId")

# handle opts
if [ "$advertisementMode" != " " ]; then
  cloudRouterCreateCmd=$(printf "%s --advertisement-mode %s" "$cloudRouterCreateCmd" "$advertisementMode")
fi
if [ "$asn" != "-1" ]; then
  cloudRouterCreateCmd=$(printf "%s --asn %s" "$cloudRouterCreateCmd" "$asn")
fi
if [ "$async" = "true" ]; then
  cloudRouterCreateCmd=$(printf "%s --async" "$cloudRouterCreateCmd")
fi
if [ "$description" != " " ]; then
  cloudRouterCreateCmd=$(printf "%s --description %s" "$cloudRouterCreateCmd" "$description")
fi
if [ "$setAdvertisementRanges" != " " ]; then
  cloudRouterCreateCmd=$(printf "%s --set-advertisement-ranges %s" "$cloudRouterCreateCmd" "$setAdvertisementRanges")
fi

eval "$cloudRouterCreateCmd"
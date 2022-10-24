#!/bin/bash
# Bash script to search for random ids for Spotify tracks using the web API.
# STAT 447
# Giang Le
# Usage: bash spotify_scraping.sh $CLIENT_ID $CLIENT_SECRET
# bash spotify_scraping.sh 7c83827741ee4cbc9bd117a9cf608a39 9c2a651fdabd472892b873644f774b09

CLIENT_ID=$1
CLIENT_SECRET=$2

creds=$CLIENT_ID:$CLIENT_SECRET
encoded_creds=$(echo -n $creds | base64)

access_token=$(curl -s -X "POST" -H "Authorization: Basic $encoded_creds" -d grant_type=client_credentials https://accounts.spotify.com/api/token | awk -F"\"" '{print $4}')
echo $access_token
rm result.json extracted_ids.txt
for x in {a..z}
do
curl --request GET --url "https://api.spotify.com/v1/search?q=%25"$x"%25&type=track&limit=50&market=US" --header "Authorization: Bearer $access_token" --header "Content-Type: application/json" >> result.json
done

cat result.json | grep -o "\"id\" :.*" | sed 's/"id" : "//g' | sed 's/",$//g' >> extracted_ids.txt


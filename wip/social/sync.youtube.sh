#!/bin/bash

# alias youtube="sh ~/scripts/social/sync.youtube.sh"

echo "starting sync."

# your variables
playlist="https://www.youtube.com/playlist?list=PLRgSHCeagEV4KTedHndOxXLXqZr4okOCA"
options="-i --extract-audio --audio-format mp3"
downloadFolder="/home/$USER/Music/YouTube"

# remove existing files
rm -rf $downloadFolder && mkdir $downloadFolder

# download the playlist with the defined options
cd $downloadFolder && youtube-dl $options $playlist

echo "coolio. your local playlist has been synced."
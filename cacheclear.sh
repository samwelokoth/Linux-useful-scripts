#!/bin/bash

# Clear DNS cache
sudo systemd-resolve --flush-caches

# Clear cache and launch all browsers in incognito mode
for browser in /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /Applications/Firefox.app/Contents/MacOS/firefox /Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser; do
  if [ -f "$browser" ]; then
    echo "Clearing cache for $browser"
    "$browser" --disk-cache-size=1 --media-cache-size=1 --incognito >/dev/null 2>&1 &
  fi
done

# Ensure no DNS leaks
dig +short myip.opendns.com @resolver1.opendns.com


echo Step 1: Preparing update
echo ========================
echo
echo Current version:
bee status | grep "Backdrop CMS"

echo Clearing cache...
bee cache-clear all

echo Backing up database...
bee db-export db-beforeupdate.sql

echo Downloading latest Backdrop version into parent directory...
bee download-core ../backdrop-latest
echo Latest version downloaded:
grep  -oE '[0-9]*\.[0-9]*\.[0-9]*' ../backdrop-latest/core/modules/system/system.info

echo
echo "Check differences in these files (latest | current):"
echo
echo .htaccess
echo =========
diff  -sy --suppress-common-lines ../backdrop-latest/.htaccess .htaccess
echo
echo robots.txt
echo ==========
diff -sy --suppress-common-lines ../backdrop-latest/robots.txt robots.txt
echo
echo settings.php
echo ============
diff -sy --suppress-common-lines ../backdrop-latest/settings.php settings.php

echo
echo Adapt these files if necessary, then proceed with step 2.
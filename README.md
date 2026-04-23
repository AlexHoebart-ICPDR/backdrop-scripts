# Backdrop Scripts
Update scripts for Backdrop CMS in 3 steps:
1. Prepares the update by showing the currently installed Backdrop version, clearing the cache, backing up the database, downloading the latest Backdrop version and showing differences in the files .htaccess, robots.txt and settings.php.
2. Updates Backdrop by entering maintenance mode, backing up current core directory, updating core directory and database, showing newly installed Backdrop version, clearing cache and leaving maintenance mode.
3. Cleans up by removing installation files as well as backups of core directory and database.

## Requirements
[Bee](https://backdropcms.org/project/bee) needs to be installed.
Note: scripts have to be run with "source" so that usage of Bee is working.

## Installation
Clone this repository (or copy these scripts) into a sub-folder of the Backdrop installation directory
## Usage
1. Start the first script from the Backdrop directory like this: 
`source backdrop-scripts/update-step1_prepare.sh`
2. Check the script's output and then run the second script the same way:
`source backdrop-scripts/update-step2_update_backdrop.sh`
3. Check the script's output and then run the third script:
`backdrop-scripts/update-step3_cleanup.sh`

echo Step 2: Updating Backdrop
echo =========================
echo

echo Entering maintenance mode...
bee maintenance-mode 1

echo Backing up old core directory, moving in latest core...
mv core core-beforeupdate
mv ../backdrop-latest/core .

echo Updating database...
bee update-db -y

echo Backdrop updated version:
#grep version core/modules/system/system.info
bee status | grep "Backdrop CMS"

echo Clearing cache...
bee cache-clear all

echo Leaving maintenance mode...
bee maintenance-mode 0

echo Update finished! Please review the site is working.
echo Don not forget to clean up files with step 3.
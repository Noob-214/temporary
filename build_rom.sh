# sync rom
repo init --depth=1 --no-repo-verify -u https://github.com/Project-Xtended/manifest.git -b xr -g default,-device,-mips,-darwin,-notdefault
git clone https://github.com/Noob-214/local_manifest.git --depth 1 -b master .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

# build rom
source build/envsetup.sh
lunch xtended_ysl-userdebug
mka xtended


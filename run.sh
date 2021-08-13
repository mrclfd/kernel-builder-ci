KERNEL_REPO=https://github.com/dimas-ady/kernel_asus_sdm660
BRANCH=public
git clone $KERNEL_REPO -b $BRANCH kernel
cd kernel
bash ../build.sh
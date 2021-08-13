KERNEL_REPO=https://github.com/dimas-ady/kernel_asus_sdm660 -b public

git clone $KERNEL_REPO kernel
cd kernel
bash ../build.sh
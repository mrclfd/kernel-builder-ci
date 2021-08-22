if [ -n "$DRONE" ]
then
  usermame=$DRONE_REPO_OWNER
elif [ -n "$CIRCLECI" ]
then
  username=$CIRCLE_USERNAME
fi

KERNEL_REPO=https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/dimas-ady/kernel_asus_sdm660-p.git
BRANCH=lineage-18.1-b

git config --global user.name $GITHUB_USERNAME
git config --global user.email $GITHUB_EMAIL
git clone $KERNEL_REPO -b $BRANCH kernel
cd kernel
git reset --hard HEAD~2
bash ../build.sh
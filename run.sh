if [ -n "$DRONE" ]
then
  usermame=$DRONE_REPO_OWNER
elif [ -n "$CIRCLECI" ]
then
  username=$CIRCLE_USERNAME
fi

KERNEL_REPO=https://$username:$GITHUB_TOKEN@github.com/dimas-ady/kernel_asus_sdm660-p.git
BRANCH=caf-test

git config --global user.name $username
git config --global user.email $GITHUB_EMAIL
git clone $KERNEL_REPO -b $BRANCH kernel
cd kernel
bash ../build.sh
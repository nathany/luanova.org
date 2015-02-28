set -x
set -e
if [ ! -e $CIRCLE_BUILD_DIR/bin/hugo ] || ! [[ `hugo version` =~ v0.13 ]]; then
  wget https://github.com/spf13/hugo/releases/download/v0.13/hugo_0.13_linux_amd64.tar.gz
  tar xvzf hugo_0.13_linux_amd64.tar.gz
  cp hugo_0.13_linux_amd64/hugo_0.13_linux_amd64 $CIRCLE_BUILD_DIR/bin/hugo
fi

#!/bin/sh

if [ $VERSION = "bleeding" ]; then
    version_path=builds/latest
else
    version_path=releases/$VERSION
fi

case "$(uname -m)" in
    "aarch64") architecture="arm64" ;;
    "x86_64") architecture="amd64" ;;
    *) echo "The current architecture ($(uname -m)) is not supported." >2; exit 1 ;;
esac

curl -Lo /tmp/$$-skaffold "https://storage.googleapis.com/skaffold/$version_path/skaffold-linux-$architecture" && \
mv /tmp/$$-skaffold /usr/local/bin/skaffold && \
chmod a=rx /usr/local/bin/skaffold

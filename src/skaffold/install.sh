#!/bin/sh

if [ $VERSION = "bleeding" ]; then
    version_path=builds/latest
else
    version_path=releases/$VERSION
fi

if [ "$(uname -m)" = "aarch64" ]; then
    architecture="arm64"
else
    architecture="amd64"
fi

curl -Lo /tmp/$$-skaffold "https://storage.googleapis.com/skaffold/$version_path/skaffold-linux-$architecture" && \
mv /tmp/$$-skaffold /usr/local/bin/skaffold && \
chmod a=rx /usr/local/bin/skaffold

#!/bin/sh

cp copy-kube-config.sh /usr/local/share/copy-kube-config.sh
if [ -n "$LOCALK8SHOST" ]; then
    sed -i -e "s/%localk8shost%/$LOCALK8SHOST/g" /usr/local/share/copy-kube-config.sh
elif [ -n "$LOCALK8SIPFROMHOST" ]; then
    resolvedIpFromHost="$( getent hosts $LOCALK8SIPFROMHOST | awk '{ print $1 }' )"
    sed -i -e "s/%localk8shost%/$resolvedIpFromHost/g" /usr/local/share/copy-kube-config.sh
fi

chmod a=rx /usr/local/share/copy-kube-config.sh

echo ". /usr/local/share/copy-kube-config.sh" >> /root/.bashrc
echo ". /usr/local/share/copy-kube-config.sh" >> /root/.zshrc
if [ -e /home/vscode ]; then
    echo ". /usr/local/share/copy-kube-config.sh" >> /home/vscode/.bashrc
    echo ". /usr/local/share/copy-kube-config.sh" >> /home/vscode/.zshrc
fi

docker run --rm -v kodi-home:/root/.kodi -v ${PWD}:/out busybox tar cvzf /out/kodi-home.tgz /root/.kodi

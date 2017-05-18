IMAGE="asssaf/kodi"
KODI_HOME_VOLUME="kodi-home"

xhost +
docker run --rm \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e "DISPLAY=unix${DISPLAY}" \
	--device /dev/snd \
	--device /dev/dri \
	--group-add video \
	--group-add audio \
	-v ${KODI_HOME_VOLUME}:/root/.kodi \
	$IMAGE kodi

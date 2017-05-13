
docker run -ti --rm \
	--privileged \
	-v $(pwd)/latest:/build \
	arch-base:2015.06.01 bash -c "cd /build \
		&& pacman -Suuyy --force --noconfirm \
		&& pacman -S --noconfirm arch-install-scripts expect \
		&& bash ./mkimage-arch.sh"




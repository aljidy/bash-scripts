small='_small'

for entry in *.jpg; do
	convert "$entry" -resize 1366 "${entry:0:-4}$small${entry: -4}";
	convert -strip -interlace Plane -quality 80% "${entry:0:-4}$small${entry: -4}" "${entry:0:-4}$small${entry: -4}";
	sudo chown root:adam "${entry:0:-4}$small${entry: -4}"
	chmod 755 "${entry:0:-4}$small${entry: -4}"

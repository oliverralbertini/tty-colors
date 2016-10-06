#!/bin/bash

for i in xresources/base16-*Xresources
do
	name=$(echo $i | sed -e 's/xresources\/base16-//g' -e 's/\.Xresources//g' -e 's/-256//g')
	echo -n "${name} | "
done

exit 0

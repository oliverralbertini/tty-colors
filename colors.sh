#!/bin/bash

string="echo -en \"\e]P"
TAB=$(printf '\t')
cat <<-EOF
	#!/bin/bash
	choice=\$1
	if [ "\$TERM" = "linux" ]
	then
	${TAB}case \$choice in
EOF
for i in xresources/base16-*Xresources
do
	name=$(echo $i | sed -e 's/xresources\/base16-//g' -e 's/\.Xresources//g' -e 's/-256//g')
	printf "\t\t${name})\n"
	colors=( $(grep \#define $i | sed -e "s/\#define base0//g" -e "s/ \#//g") )
	for j in ${colors[@]}
	do
		# printf "\t\t${string}${j}\"\n"
		#printf ${string}${j}\"
		printf '\t\t\t'
		echo "echo -en \"\e]P$j\""
	done
	printf '\t\t\tclear\n\t\t;;\n'
done
cat <<-EOF
${TAB}${TAB}*)
${TAB}${TAB}${TAB}echo "Enter a valid name."
${TAB}${TAB};;
${TAB}esac
fi
EOF
exit 0

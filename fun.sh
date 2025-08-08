dir() {
	USAGE=`cat <<EOF
+---------------------------------------------------------+
| Create a folder and enter into it.                      |
|                                                         |
|    dir foo/bar                                          |
|                                                         |
| If no path is given, a temporary folder will be created.|
|                                                         |
| https://github.com/fibo/dir                             |
+---------------------------------------------------------+
EOF`
	[ "$1" = "-h" ] && echo $USAGE && return
	[ "$1" = "--help" ] && echo $USAGE && return
	if [ $# -gt 0 ]
	then
		mkdir -p "$*" && cd "$_"
	else
		cd `mktemp -d`
	fi
}

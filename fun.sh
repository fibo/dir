dir() {
	USAGE="USAGE: dir foo/bar"
	[ "$1" = "-h" ] && echo $USAGE && return
	[ "$1" = "--help" ] && echo $USAGE && return
	if [ $# -gt 0 ]
	then
		mkdir -p "$*" && cd "$_"
	else
		echo USAGE: dir foo/bar
	fi
}

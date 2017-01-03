.PHONY: fun.sh
fun.sh:
	grep '    ' README.md | sed -e 's/    //' > fun.sh

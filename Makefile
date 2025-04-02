all:
	pandoc -f markdown+raw_tex -t pdf --metadata date="$(shell date +"%d/%m/%Y")" -o notes.pdf notes.md

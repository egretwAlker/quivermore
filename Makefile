.PHONY: all github
KATEX="./src/KaTex"

# Build KaTeX.
all:
	set -e
	curl -L -O "https://github.com/KaTeX/KaTeX/releases/download/v0.16.4/katex.zip"
	unzip katex.zip
	rm katex.zip
	mv katex $(KATEX)

github:
	ghp-import -m "Generate Pelican site" -b "gh-pages" "src/"
	git push origin "gh-pages"
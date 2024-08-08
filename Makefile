.PHONY: demo rebuild tests

test:
	set -e; mkdir -p test; cd test; printf "\nABlog\nABlog Team\nhttps://ablog.readthedocs.io/" | ablog start; ablog build -j auto -W; cd ..; rm -rf test

test1:
	set -e; mkdir -p testablog; cd testablog; printf "\nABlog\nABlog Team\nhttps://ablog.readthedocs.io/" | ablog start; ablog build -j auto -W; cd ..; rm -rf testablog

tests: test test1

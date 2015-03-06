deploy:
	git --work-tree=/tmp/dotfiles/ checkout -f master

.PHONY: deploy

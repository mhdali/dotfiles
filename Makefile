deploy:
	git --work-tree=${HOME} checkout -f master

.PHONY: deploy

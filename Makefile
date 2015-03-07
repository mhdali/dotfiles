deploy:
	git --work-tree=${HOME} checkout -f master

test:
	find . -maxdepth 1 -name .\* ! -name \*.git ! -path . -exec cp -rf {} ${HOME} \;

.PHONY: deploy test

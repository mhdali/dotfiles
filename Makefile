backup:
	find . -maxdepth 1 -name .\* ! -name \*.git ! -path . -exec cp -rf ${HOME}/{}{,.$$(date +%Y%m%d).bak} \;

deploy:
	git --work-tree=${HOME} checkout -f master

test:
	find . -maxdepth 1 -name .\* ! -name \*.git ! -path . -exec cp -rf {} ${HOME} \;

.PHONY: backup deploy test

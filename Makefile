backup:
	mkdir -p ${HOME}/.backup
	find . -maxdepth 1 -name .\* ! -name \*.git ! -path . -exec cp -rf ${HOME}/{} ${HOME}/.backup/{}.$$(date +%Y%m%d).bak \;

deploy:
	git --work-tree=${HOME} checkout -f master

test:
	find . -maxdepth 1 -name .\* ! -name \*.git ! -path . -exec cp -rf {} ${HOME} \;

.PHONY: backup deploy test

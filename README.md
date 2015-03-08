# My Personal Dotfiles

First thing first you need to backup you current configuration before it's too late :S

```
make
```

`make` will help you to do that, by default when you run it alone it'll backup all config files and directory inside this repo to be located `~/.backup/` directory.


To Deploy the commited changes you need to run:

```bash
make deploy
```

If you made any changes and you want to test them before commiting them to git repo you need to run:

```
make test
```

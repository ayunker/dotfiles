# dotfiles

1. run the install script
2. install homebrew formulae from .formulae
3. install homebrew casks from .casks


## Other software to Install

* [Homebrew](https://brew.sh)
* [PostgresApp](https://postgresapp.com)
* [Postico](https://eggerapps.at/postico/)
* [rvm](https://rvm.io)

## Homebrew

To generate list of installed formulae and casks:

```
brew leaves >! formulae
brew list --casks >! casks
```

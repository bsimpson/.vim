Notes for adding ViM plugins via Pathogen:

git submodule add git://path/to/repo bundle/name_of_project
  this creates an entry in .gitmodules
git submodule init
  check that this is in .git/config
git submodule update
  this updates the module

Pathogen will load projects under bundle automatically via .vimrc call Pathogen#infect()

Commit submodule so this will be available in the remote repo

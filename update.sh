for project in */
do
  cd ./$project
  git pull
  git submodule update --init --recursive
  git pull --recurse-submodules
  git submodule foreach "(git checkout master; git pull)"
  git add --all
  git commit -m "Submodule Sync"
  git push
  cd ..
done
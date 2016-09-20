for project in */
do
  cd ./$project
  git pull
  git submodule update --recursive --remote
  git pull --recurse-submodules
  git submodule foreach "(git checkout master; git pull)"
  git add --all
  git commit -m "Submodule Sync"
  git push
  cd ..
done

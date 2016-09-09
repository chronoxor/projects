for project in */
do
  cd ./$project
  git pull
  git submodule update --init --recursive
  git pull --recurse-submodules
  git submodule foreach "(git checkout master; git pull)"
  cd ..
done
.
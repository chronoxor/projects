FOR /D %%X IN (
  *
) DO (
  cd %%X
  git pull
  git submodule update --recursive --remote
  git pull --recurse-submodules
  git submodule foreach "(git checkout master; git pull)"
  cd ..
)

for /D %%X in (
  *
) do (
  cd %%X
  git pull
  git submodule update --init --recursive --remote
  git pull --recurse-submodules
  git submodule foreach "(git checkout master; git pull)"
  git add --all
  git commit -m "Submodule Sync"
  git push
  cd ..
)

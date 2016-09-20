git clone "git@github.com:chronoxor/CppBuildScripts.git" CppBuildScripts
git clone "git@github.com:chronoxor/CppCMakeScripts.git" CppCMakeScripts
git clone "git@github.com:chronoxor/CppBenchmark.git" CppBenchmark
git clone "git@github.com:chronoxor/CppTemplate.git" CppTemplate
git clone "git@bitbucket.org:chronoxor/CppCommon.git" CppCommon
git clone "git@bitbucket.org:chronoxor/CppLogging.git" CppLogging

for project in */
do
  cd ./$project
  git submodule update --init --recursive
  cd ..
done

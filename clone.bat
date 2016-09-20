git clone "https://github.com/chronoxor/CppBuildScripts.git" CppBuildScripts
git clone "https://github.com/chronoxor/CppCMakeScripts.git" CppCMakeScripts
git clone "https://github.com/chronoxor/CppBenchmark.git" CppBenchmark
git clone "https://github.com/chronoxor/CppTemplate.git" CppTemplate
git clone "git@bitbucket.org:chronoxor/CppCommon.git" CppCommon
git clone "git@bitbucket.org:chronoxor/CppLogging.git" CppLogging

FOR /D %%X IN (
  *
) DO (
  cd %%X
  git submodule update --init --recursive
  cd ..
)

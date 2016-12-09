#!/bin/bash
git clone "https://github.com/chronoxor/CppBuildScripts.git" CppBuildScripts
git clone "https://github.com/chronoxor/CppCMakeScripts.git" CppCMakeScripts
git clone "https://github.com/chronoxor/CppBenchmark.git" CppBenchmark
git clone "https://github.com/chronoxor/CppTemplate.git" CppTemplate
git clone "https://github.com/chronoxor/CppCommon.git" CppCommon
git clone "https://github.com/chronoxor/CppLogging.git" CppLogging
git clone "https://github.com/chronoxor/CppServer.git" CppServer

for project in */
do
  cd ./$project
  git submodule update --init --recursive --remote
  cd ..
done

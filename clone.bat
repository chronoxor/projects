git clone "https://github.com/chronoxor/CppBuildScripts.git"
git clone "https://github.com/chronoxor/CppCMakeScripts.git"
git clone "https://github.com/chronoxor/CppBenchmark.git"
git clone "https://github.com/chronoxor/CppTemplate.git"
git clone "https://github.com/chronoxor/CppCommon.git"
git clone "https://github.com/chronoxor/CppLogging.git"
git clone "https://github.com/chronoxor/CppSerialization.git"
git clone "https://github.com/chronoxor/CppServer.git"
git clone "https://github.com/chronoxor/CppTrader.git"
git clone "https://github.com/chronoxor/CSharpServer.git"
git clone "https://github.com/chronoxor/FastBinaryEncoding.git"

for /D %%X in (
  *
) do (
  cd %%X
  git submodule update --init --recursive --remote
  cd ..
)

all    :; DAPP_BUILD_OPTIMIZE=1 DAPP_BUILD_OPTIMIZE_RUNS=1000000 dapp --use solc:0.6.12 build
clean  :; dapp clean
test   :; ./test-autoexec.sh
deploy :; make && dapp create Autoexec

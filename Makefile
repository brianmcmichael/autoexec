all    :; SOLC_FLAGS="--optimize --optimize-runs=1000000" dapp --use solc:0.6.11 build --extract
clean  :; dapp clean
test   :; ./test-autoexec.sh
deploy :; SOLC_FLAGS="--optimize --optimize-runs=1000000" dapp --use solc:0.6.11 build && dapp create Autoexec

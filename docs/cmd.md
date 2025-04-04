https://raihanhd.medium.com/hyperledger-besu-create-a-network-2-create-a-private-network-using-ibft-2-0-6470b142ba64



Node-1. besu --data-path=data --genesis-file=../genesis.json --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-allowlist="*" --rpc-http-cors-origins="all"

Node-2. besu --data-path=data --genesis-file=../genesis.json --bootnodes=enode://ad8fe5dfa07e7481d67f56d837f9d9cf461412c06e0e6f75d3ed81bfcccfec249b96410cdafc8a5cf72c01bb821042f73ed3ca41c55d7f16a2a421af4cbb73d8@127.0.0.1:30303 --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8546

Node-3. besu --data-path=data --genesis-file=../genesis.json --bootnodes=enode://ad8fe5dfa07e7481d67f56d837f9d9cf461412c06e0e6f75d3ed81bfcccfec249b96410cdafc8a5cf72c01bb821042f73ed3ca41c55d7f16a2a421af4cbb73d8@127.0.0.1:30303 --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8547

Node 4. besu --data-path=data --genesis-file=../genesis.json --bootnodes=enode://ad8fe5dfa07e7481d67f56d837f9d9cf461412c06e0e6f75d3ed81bfcccfec249b96410cdafc8a5cf72c01bb821042f73ed3ca41c55d7f16a2a421af4cbb73d8@127.0.0.1:30303 --p2p-port=30306 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8548

Dynamic

curl -X POST --data '{"jsonrpc":"2.0","method":"ibft_proposeValidatorVote","params":["0xcb4f74dde91c482090ed9bdce6e954d484373606", true], "id":1}' http://127.0.0.1:8546 | jq

Node-5. besu --data-path=data --genesis-file=../genesis.json --bootnodes=enode://ad8fe5dfa07e7481d67f56d837f9d9cf461412c06e0e6f75d3ed81bfcccfec249b96410cdafc8a5cf72c01bb821042f73ed3ca41c55d7f16a2a421af4cbb73d8@127.0.0.1:30303 --p2p-port=30307 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8549


curl -X POST --data '{"jsonrpc":"2.0","method":"ibft_proposeValidatorVote","params":["0xcb4f74dde91c482090ed9bdce6e954d484373606", false], "id":1}' http://127.0.0.1:8546 | jq
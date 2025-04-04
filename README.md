Here's a step-by-step guide to run a 4-node Besu IBFT 2.0 network using your folder structure.

### Prerequisites
besu --version
besu/v23.4.4/linux-x86_64/openjdk-java-20

Install Besu
Download and install Besu on your system.

## Generate IBFT configuration
If you haven’t already, generate genesis.json and node keys using:
```bash
besu operator generate-blockchain-config --config-file=ibftConfigFile.json --to=networkFiles
```
Then copy the contents of networkFiles to your Node-X/data directories.
Folder Structure Overview
ibft2.0/
├── genesis.json
├── ibftConfigFile.json
├── Node-1/
│   ├── config.toml
│   ├── start.sh
│   └── data/...
├── Node-2/
│   ├── config.toml
│   ├── start.sh
│   └── data/...
├── Node-3/
│   ├── config.toml
│   ├── start.sh
│   └── data/...
├── Node-4/
│   ├── config.toml
│   ├── start.sh
│   └── data/...

### Instructions to Run Nodes

1. Set Permissions for start.sh
```bash
chmod +x Node-1/start.sh Node-2/start.sh Node-3/start.sh Node-4/start.sh
```

2. Start Node-1 (Bootnode)
```bash
cd Node-1
./start.sh
```
This node acts as the bootnode, so always start it first.

3. Start Node-2, Node-3, Node-4
In separate terminal tabs:
```bash
cd Node-2
./start.sh

cd Node-3
./start.sh

cd Node-4
./start.sh
```

🛑 Stop a Node
CTRL + C

If you want to stop it in the background using PID, you can use:
```bash
ps aux | grep besu  # get the process id (PID)
kill <PID>
```

# Tips
Always ensure Node-1 is up before starting the others.

Use different terminal windows for each node to monitor logs and status.

Make sure all ports (e.g., 8545–8548, 30303–30306) are free and not blocked by firewall.

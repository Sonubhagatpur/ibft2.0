#!/bin/bash
#chmod +x start.sh
cd "$(dirname "$0")" 
besu --config-file=config.toml

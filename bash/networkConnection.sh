#!/bin/bash
# Purpose: Test Network Connectivity. This currently uses Google and GitHub as the test hosts.

#Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

#Network connectivity test
network_test() {
    echo -e "${GREEN}=== NETWORK CONNECTIVITY TEST ===${NC}"
    
    hosts=("8.8.8.8" "google.com" "github.com")
    
    for host in "${hosts[@]}"; do
        echo -n "Testing connection to $host: "
        if ping -c 1 -W 3 "$host" &> /dev/null; then
            echo -e "${GREEN}OK${NC}"
        else
            echo -e "${RED}FAILED${NC}"
        fi
    done
    
    echo ""
    echo "DNS Resolution Test:"
    nslookup google.com 2>/dev/null | grep -A 2 "Name:" || echo "DNS resolution failed"
    echo ""
}

#run the network connectivity test
network_test

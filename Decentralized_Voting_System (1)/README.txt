# Deployment Guide

## Requirements:
1. Install **Node.js** (`node -v` to check)
2. Install **Truffle** (`npm install -g truffle`)
3. Install **Ganache** (for local Ethereum network)
4. Install **Java (JDK 17+)** (`java -version` to check)
5. Install **MySQL** (Create a database named `voting`)

## Steps:
1. Start Ganache and note down the first account (private key for MetaMask).
2. Deploy the contract using:
   ```bash
   truffle migrate --reset
   ```
3. Run the Java backend using:
   ```bash
   javac VotingBackend.java && java VotingBackend
   ```
4. Open `index.html` in a browser and connect MetaMask.
5. Vote using the UI! 🎉

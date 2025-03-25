async function connectWallet() {
    if (window.ethereum) {
        try {
            const accounts = await ethereum.request({ method: 'eth_requestAccounts' });
            console.log("Connected account:", accounts[0]);
        } catch (error) {
            console.error("User denied account access");
        }
    } else {
        alert("MetaMask is not installed!");
    }
}
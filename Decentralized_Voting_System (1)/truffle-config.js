module.exports = {
    networks: {
      development: {
        host: "127.0.0.1",
        port: 7545,
        network_id: "5777",
        gas: 8000000,  // Increase gas limit
        gasPrice: 20000000000,
      },
    },
    compilers: {
      solc: {
        version: "0.8.21",
      },
    },
  };
  
var Token = artifacts.require("./XOF.sol");

module.exports = function(deployer) {
    deployer.deploy(Token, process.env.ADDRESS ).then(function (token) {
        return token
    });
};

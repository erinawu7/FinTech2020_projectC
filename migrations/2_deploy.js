// migrations/2_deploy.js
// SPDX-License-Identifier: MIT
const Bear = artifacts.require("B08902121");

module.exports = function(deployer) {
  deployer.deploy(Bear);
};
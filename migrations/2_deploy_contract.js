var HelloWorld = artifacts.require('HelloWorld');
const HelloWorldPermanent = artifacts.require('HelloWorldPermanent');

module.exports = function (deployer) {  
deployer.deploy(HelloWorld,"Hello Priyam").then( async () => {
  let instance = await HelloWorld.deployed();
  let message = instance.message();
  deployer.deploy(HelloWorldPermanent, message)
})


};
# SocialNetworkBlockchain
Projects from [Special Topics on Computer Systems](https://uspdigital.usp.br/jupiterweb/obterDisciplina?nomdis=&sgldis=SSC0147)

## Theme
Blockchain-based Social Networks

## Contents
LearningBlockchain: Basic components of a Blockchain 
* Following the tutorial [Creating a Blockchain from Scratch](https://levelup.gitconnected.com/creating-a-blockchain-from-scratch-9a7b123e1f3e);

LearningSmartContract: Basic implementation of a simple smart contract for bank transactions in Solidity. 
* Following the tutorial [Write Your First Smart contract Using Remix IDE](https://betterprogramming.pub/developing-a-smart-contract-by-using-remix-ide-81ff6f44ba2f)

SocialNetworkPrototype: Basic implementation of a simple social network in Solidity. 
* Inspiration from TaskManager smart contract, led by [Solange Gueires at Microsoft Reactor Sao Paulo Workshop](https://github.com/microsoft/ReactorSaoPaulo/tree/main/Workshops/Blockchain/Learn_Solidity)

### How to use our social network

If you want to see the whole repository content, 

Clone the repository:
```code
git clone https://github.com/jorgesalhani/SocialNetworkBlockchain.git
```

Otherwise, if you want just to check out our social network prototype, it goes as follows:

Open the [remix platform](https://remix.ethereum.org)

Click on LOAD FROM: GitHub

![Step 1](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step1.png)

Into the text field to be filled, paste the url

```code
https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/SocialNetworkPrototype.sol
```
![Step 2](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step2.png)

Click on the new created path to the .sol file: github > jorgesalhani > SocialNetworkBlockchain > SocialNetworkPrototype.sol

![Step 3](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step3.png)

At the leftmost vertical navbar, click on the 3rd icon SOLIDITY COMPILER

![Step 4](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step4.png)

Compile the smart contract by clicking the Compile button

![Step 5](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step5.png)

Hopefully, it will be well-succeeded!

At the vertical navbar, click on the 4th icon DEPLOY & RUN TRANSACTIONS

![Step 6](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step6.png)

Deploy the compiled contract by clicking on the Deploy button. By default a account is already selected. As you can see, it currently has 100 ether.

![Step 7](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step7.png)

By simulating a smart contract deployment, the default selected account must spent an ether fraction amount in order to deploy the contract. Now this account has 99.9999... ether available and the contract (TASKMANAGER) can be seen below the field Deployed Contracts

With the deployment, we can see at the terminal a green checkmark. Now the terminal is important to follow the recorded transactions within the created blockchain.

![Step 8](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step8.png)

By clicking the dropdown below the Deployed Contracts field we have access to all functionalities available by our social network smart contract.

The functions (state changing) are:

```solidity
addPost(string _content, PostTrustLabel _trust_label),
updateTrustLabel(uint _post_index, PostTrustLabel _trust_label)
```
and the view functions (visualize current state) are:

```solidity
getPost(uint _post_index),
listMyPosts,
nposts
```

The environment is set! Now let us move to the fun part and create posts with our smart contract!

### Using our Social Network Prototype functions

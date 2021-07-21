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

At the first, click on LOAD FROM: GitHub. It will pop up a window. In the text field to be filled, paste the url:

```code
https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/SocialNetworkPrototype.sol
```

At the FILE EXPLORERS it will be created a folder named 'github' inside which you can also see a path to SocialNetworkProrotype.sol. Click over this file and you will be able to see the source code.

Firstly, at the leftmost sidebar (with four icons, namely File explorers, Solidity compiler, Deploy & run transactions, Plugin manager) click on Solidity compiler icon. You may want to modify the file at your wish, so, at COMPILER CONFIGURATION section, mark the Auto compile checkbox. Finally, click on the big blue button Compile SocialNetworkPrototype.sol. 

Back to the leftmost sidebar with four icons, click on Deploy & run transactions. Then, click on the Deploy orange button.


Hopefully everything is running properlly and a green check mark will be displayed at the terminal. You can also click on it and a dropdown will be shown inside the terminal with the informations from the contract deployment, such as the transaction hash, the execution cost in gas and the log generated.

Back to the DEPLOY & RUN TRANSACTIONS tab, at the end you might see, after the section Deployed Contracts the clickable dropdown > TASKMANAGER AT 0XD91...  Click on the arrow!

It will drop all functions allowed within the smart contract, and here we start playing with this prototype!

### Using our Social Network Prototype functions

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

ArticleSocialNetworkPrototype: (Authored article)[https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ArticleSocialNetworkPrototype.pdf] submitted to (Journal and Event Management System (JEMS))[https://jems.sbc.org.br/jems2/index.php?r=paper/view&p=217544] we based our prototype. Written in collaboration with 

* Gabrielle Ap Pires Alves (Universidade de São Paulo)
* Marcelo G. Manzato (University of Sao Paulo)
* Jó Ueyama (Universidade de São Paulo)

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

where we define the post trust label as 

```solidity
enum PostTrustLabel {
    Fake, 
    Unsustainable, 
    Underestimated, 
    Inconsistent, 
    Overestimated, 
    Naive,
    Superficial,
    Trustful
}
```

and the view functions (visualize current state) are:

```solidity
getPost(uint _post_index),

listMyPosts,

nposts
```

The environment is set! Now let us move to the fun part and create posts with our smart contract!

### Using our Social Network Prototype functions

By definition, we start our social network prototype with 8 posts, one for each trust label, and we post them via the deployment account.

At first, let us see how the view functions work.

By clicking at **nposts**, we can see how many posts our social network has (which is 8).

![Step 9](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step9.png)

By clicking at **listMyPosts** we can see the index of the posts owned by the current account (which are 0,1,...,6,7)

![Step 10](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step10.png)

By clicking at **getPost** we can see the post owner account, the post content and its trust label

![Step 11](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step11.png)

Now, let us step forward to the state-changing functions.

By clicking at **addPost** we must informe its content and its trust label.

![Step 13](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step13.png)

Confirm the transaction by pressing the button transact. It will generate a log into the terminal.

![Step 14](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step14.png)

Some of the informations displayed are: 

* __from__: the account that made the transaction
* __execution cost__: the cost in gas to execute the transaction
* __hash__: the hash associated to this transaction
* __input__: the encoded transaction

If we click to **listMyPosts**, the new post was added and can be viewed by insert 8 to **getPost**

![Step 12](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step12.png)


Now, let us change the account, simulating a different person.

![Step 13](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step13.png)

Let us add a post with **addPost**, get its content with **getPost**, check our post list with **listMyPosts** and check the total posts within our blockchain with **nposts**

![Step 14](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step14.png)

And now, let us select another account and follow the previous steps

![Step 15](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step15.png)

Knowing that the information from the last post is fake, we (as this account) can change its trust label to 0 (enum: FAKE) by insert its post index (9) and the updated trust label (0) into the function **updateTrustLabel**

After make the transaction, we can check the fake post with **getPost**

![Step 16](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step16.png)

With another account, let us add a post and get its content

![Step 17](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step17.png)

Let us suppose our 2nd friend read this post. She knows Brazil defeated China, however the score was not 3x2. She then decided to label it as Naive (partially truth) and update the truth label to 5

![Step 17](https://github.com/jorgesalhani/SocialNetworkBlockchain/blob/main/ExplanatoryFigures/step17.png)

### Disclaimer
This prototype was theoricised to be more general, as shown in this article, however for this discipline's purpose, this is the final version we have.

Hope you enjoyed! cheers!!


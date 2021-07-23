// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

contract TaskManager {

    uint public nposts;

    //enum PostTrustLabel. Based on AGENCIA LUPA labels
    /*{
        Fake = 0, 
        Unsustainable = 1, 
        Underestimated = 2, 
        Inconsistent = 3, 
        Overestimated = 4, 
        Naive = 5, 
        Superficial = 6,
        Trustful = 7
      }
    */
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
    
    struct PostStruct {
        address owner;
        string content;
        PostTrustLabel trust_label;
    }
    PostStruct[] private posts;
    //PostStruct[] public posts;
    
    mapping (address => uint[]) private myposts;
    //mapping (address => uint[]) public myposts;

    event PostAdded(address owner, string content, PostTrustLabel trust_label);
    
    event TustLabelAltered(address owner, PostTrustLabel old_trust_label, PostTrustLabel new_trust_label);
    
    modifier onlyOwner (uint _post_index) {
         if  (posts[_post_index].owner == msg.sender) {
           _;
        }
    }
    
    constructor() public {
        nposts = 0;      
        addPost ("News 0 - FAKE", PostTrustLabel.Fake);
        addPost ("News 1 - UNSUSTAINABLE", PostTrustLabel.Unsustainable);
        addPost ("News 2 - UNDERESTIMATED", PostTrustLabel.Underestimated);
        addPost ("News 3 - INCONSISTENT", PostTrustLabel.Inconsistent);
        addPost ("News 4 - OVERESTIMATED", PostTrustLabel.Overestimated);
        addPost ("News 5 - NAIVE", PostTrustLabel.Naive);
        addPost ("News 6 - SUPERFICIAL", PostTrustLabel.Superficial);
        addPost ("News 7 - TRUSTFUL", PostTrustLabel.Trustful);
    }    

    function getPost(uint _post_index) public view
        require (_post_index >= 0 && _post_index < nposts);
        returns (address owner, string memory content, PostTrustLabel trust_label) {
        
        owner = posts[_post_index].owner;
        content = posts[_post_index].content;
        trust_label = posts[_post_index].trust_label;
    }
    
    function listMyPosts() public view returns (uint[] memory) {
        return myposts[msg.sender];
    }
    
    function addPost(string memory _content, PostTrustLabel _trust_label) public returns (uint index) {
        PostStruct memory postAux = PostStruct ({
            owner: msg.sender,
            content: _content,
            trust_label: _trust_label 
        });
        posts.push (postAux);
        index = posts.length - 1;
        nposts ++;
        myposts[msg.sender].push(index);
        emit PostAdded (msg.sender, _content, _trust_label);
    }
    
    function update_trust_label(uint _post_index, PostTrustLabel _trust_label) public {
        require (
            (_post_index >= 0 && _post_index < nposts) && 
            (_trust_label >= 0 && _trust_label <= 7)
            );
        PostTrustLabel older_trust_label = posts[_post_index].trust_label;
        posts[_post_index].trust_label = _trust_label;
        emit TustLabelAltered(msg.sender, older_trust_label, _trust_label);
    }
}

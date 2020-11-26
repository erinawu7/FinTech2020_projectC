// contracts/Bears.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.22;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract B08902121 is ERC721 {
    constructor() public ERC721("B08902121", "B08902121_S") {}

    struct Bear {
        string name; // Name of the Bear
        uint age; // Bear age
        uint pet;  // Bear's pet include 0=cat, 1=dog, 2=rabbit and 3=cow
        address owner; // Owner of the Bear
    }

    Bear[] public bears;

    function createBear(string memory _name, address _to) public {
        uint id = bears.length; // Bear ID = Length of the Array bears
        uint a = id * 10;
        uint p = (id * 267 + 37) % 4;

        bears.push(Bear(_name, a, p, _to));
        
        _mint(_to, id);
    }

    function bearName(uint id) public view returns (string memory) {
        return bears[id].name;
    }

    function bearAge(uint id) public view returns (uint) {
        return bears[id].age;
    }

    function bearPet(uint id) public view returns (string memory) {
        uint petnum = bears[id].pet;
        string memory petie;
        if (petnum == 0) {
            petie = "cat";
        } else if (petnum == 1) {
            petie = "dog";
        } else if (petnum == 2) {
            petie = "rabbit";
        } else if (petnum == 3) {
            petie = "cow";
        }
        return petie;
    }

    function bearOwner(uint id) public view returns (address) {
        return bears[id].owner;
    }
}
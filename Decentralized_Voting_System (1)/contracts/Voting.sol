// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21; // Ensure Solidity version matches Truffle

contract Voting {
    struct Candidate {
        string name;
        uint voteCount;
    }

    struct Voter {
        bool registered;
        bool voted;
    }

    address public admin;
    Candidate[] public candidates;
    mapping(address => Voter) public voters;

    constructor() {
        admin = msg.sender;
    }

    function addCandidate(string memory _name) public {
        require(msg.sender == admin, "Only admin can add candidates");
        candidates.push(Candidate({name: _name, voteCount: 0}));
    }

    function registerVoter(address _voter) public {
        require(msg.sender == admin, "Only admin can register voters");
        require(!voters[_voter].registered, "Voter is already registered");
        voters[_voter] = Voter({registered: true, voted: false});
    }

    function vote(uint candidateIndex) public {
        require(voters[msg.sender].registered, "Not registered to vote");
        require(!voters[msg.sender].voted, "Already voted");
        require(candidateIndex < candidates.length, "Invalid candidate index");

        candidates[candidateIndex].voteCount++;
        voters[msg.sender].voted = true;
    }

    function getCandidates() public view returns (Candidate[] memory) {
        return candidates;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    struct Candidate {
        string name;
        uint voteCount;
    }
    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public voters;
    uint public candidateCount;

    function addCandidate(string memory name) public {
        candidates[candidateCount] = Candidate(name, 0);
        candidateCount++;
    }

    function vote(uint candidateId) public {
        require(!voters[msg.sender], "You have already voted.");
        require(candidateId < candidateCount, "Invalid candidate.");
        candidates[candidateId].voteCount++;
        voters[msg.sender] = true;
    }
}
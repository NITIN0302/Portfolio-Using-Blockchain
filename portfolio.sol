// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Portfolio
{
    struct Project
    {
        uint id;
        string name;
        string description;
        string image;
        string githublink;
    }

    struct Education{
        uint id;
        string date;
        string degree;
        string knowledgeAcquired;
        string instutionName;
    }

    Project[3] public projects;
    Education[3] public educationDetails;

    string public imageLink = "";
    string public description = "";
    string resumeLink = "QmY5z7sE4jDYYqtF29CMxBJ911Crnv2AbQCFHCi9FeJsMB";
    uint projectCount;
    uint educationCount;
    address public manager;

    constructor(){
        manager = msg.sender;
    }

    modifier onlyManager(){
        require(manager==msg.sender,"You are not the manager");
        _;
    }

    function insertProject(string calldata _name,string calldata _description,string calldata _image,string calldata _githubLink)
    {
        require(projectCount<3,"Only 3 projects allowed");
    }

}
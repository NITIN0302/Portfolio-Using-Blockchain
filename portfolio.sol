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
    string public description = "Over 6 months of practicle experience with a good knowledge in blockchain development";
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

    function insertProject(string calldata _name,string calldata _description,string calldata _image,string calldata _githubLink)external onlyManager
    {
        require(projectCount < 3,"Only 3 projects allowed");
        projects[projectCount] = Project(projectCount,_name,_description,__image,_githubLink);
        projectCount++;
    }

    function changeProject(string calldata _name,string calldata _description,string calldata _image,_githubLink,uint _projectCount)external onlyManager
    {
        require(_projectCount >= 0 && _projectCount < 3,"Only 3 projects allowed");
        projects[_projectcount] = Project(_projectCount,_name,_description,_image,_githubLink);
    }

    function allProjects() external view returns(Project[3] memory){
        return projects;
    }

    function insertEducation(string calldata _date,string calldata _degree, string calldata _knowledgeAcquired,string calldata _instutionName)external onlyManager
    {
        require(educationCount<3,"Only 3 details allowed");
        educationDetails[educationCount] = Education(educationCount,_date,_degree,_knowledgeAcquired,_instutionName);
        educationCount++;
    }

    function changeEducation(string calldata _date,string calldata _degree, string calldata _knowledgeAcquired,string calldata _instutionName,uint _educationCount)external onlyManager
    {
        require(_educationCount >= 0 && _educationCount < 3,"Only 3 Details allowed");
        educationDetails[_educationCount] = Education(_educationCount,_date,_degree,_knowledgeAcquired,_instutionName);
    }

    function allEducation() external view returns(Education[3] memory)
    {
        return educationDetails;
    }

    function changeDescription(string calldata _description) external
    {
        description = _description;
    }

    function changeImage(string calldata _image) external onlyManager
    {
        imageLink = _image;
    }

    function changeResume(string calldata _resume)external onlyManager 
    {
        resumeLink = _resume;
    }
}
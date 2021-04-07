# Project 2 Requirements

For your second project, you'll be in groups of 3 or 4. You will be creating a full stack application that uses the following technologies and methodologies at a minimum: **Azure DB**, **Java**, **Spring**, **Angular**, **HTML/CSS/JS**, **Jenkins**, **Azure VM**, and **Agile/Scrum Methodologies**. The quality of your project is a reflection of your skills and abilities, so create something you can be proud of. 

During this project, follow the best practices for the following: _Daily Standup Meetings_, _Sprint Planning Meeting_, _Burndown Chart_, _Scrum Board_, _CI_, _CD_, and _Pull/Merge Requests_. Consider using services such as GitHub, GitLab, Jira, or Trello to manage your Scrum Board. The first thing that you should do is define your product backlog, prioritizing user stories and allocating an appropriate scope for the MVP. Meet with your team and conduct a sprint planning meeting to get your backlog organized.

# Minimum Requirements:

- [ ] a RESTful API should expose CRUD operations, and be consumed by an Angular application to accomplish your business goals
- [ ] code should be well tested
- [ ] code should be consistently written and adhere to good code quality
- [ ] backend application should be deployed using continuous deployment
- [ ] applications should make considerations for security good practices

If you do decide to follow any additional guidelines, do so because you all understand the value of that guideline and appreciate how it helps you build a better, more secure, sustainable, and maintainable project.


### Git Flow

- Each team will have its own repository for their backend java application.
- Each repository will have a master branch which is deployed on an EC2 and a dev branch.
- Feature branches specific to user stories/tasks will be made off of dev.
- Master and dev will be protected. Pull requests must be made for each merge and approved by a teammate.
- Do not change more than 5-7 files in a pull request.

- Each team will have a repository for their front end angular application.
- Angular application should be hosted in an S3 bucket


### Optional Requirements:
- Create a continuous deployment pipeline for angular front end
- Integrate SonarQube into backend pipeline

---
--- 

## Review Project Proposal
- Team names + Team lead (team lead will act as scrum master for the team and run standups) + a team member responsible for managing gitflow (this can be the team lead or another team member)
- Topic proposal with 10-15 user stories (Topic should demonstrate multiple user roles and leverages other APIs like Google Maps, Spotify, et cetera…)
- Each team must create a document in the Project 2 Proposals Folder with this information and review it with a trainer before moving forward.
## Project Setup
- Establish a github repository for front end and back end applications
- Establish a trello board (or similar) to keep track of user story progress within the group
- Set up DevOps pipeline for back end
## Development Process
- Allocate responsibilities through team members
- Keep code quality in mind using a static code quality analysis tool
## Presentation
- Data model
- Provide testing and static code analysis metrics - what considerations did you make? How did you reduce code smells? Etc.
- Project demo 


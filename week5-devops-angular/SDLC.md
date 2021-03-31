SDLC - Software Development Lifecycle

## 1. Big Bang

- does not follow any specific process
- very little planning needed, requirements are implemented without much analysis
- generally used with small projects and with small teams
- simple and easy to manage
- high risk and uncertain for ongoing projects

## 2. Waterfall

- earlier SDLC approach
- linear process, phases do not overlap, the next phase does not begin until the previous is complete
  1. Requirement Analysis
  2. System Design
  3. Implementation
  4. Testing
  5. Deployment
  6. Maintenance

Good For when:

- requirements are clear and well documented
- product definition is stable
- technology is understood and not dynamic

Drawbacks:

- no working software product until late in the process
- can be difficult to measure progress within stages
- cannot accommodate changing requirements
- doesn't allow for identifying integration issues until the very end

## 3. Agile

- agile is a dynamic and iterative process which focuses on adaptability to efficiently produce software products

![waterfall vs agile from ouriken](https://ouriken.com/blog/wp-content/uploads/2019/11/Untitled-design-2.png)

> Several implementations of Agile, e.g. Scrum, Kanban

### Scrum

- software development is broken down into 2-4 week sprints
- functionality within sprints are broken up into user stories
  - "As a [type of user] I want [some feature] so that [some reason]"
- user stories are broken down even further into tasks
  - smaller units of work, usually should be completed in less than a day

**Product Backlog**

- pending user stories for a particular project

**Sprint Backlog**

- pending user stories for the current sprint of a project

#### Product Owner

- manages the product backlog for a particular project
- responsible for maximizing the value of the product resulting from the work on the development team
- defines priority of items in the backlog

#### Story Pointing

- allocating different amounts (generally use fibonacci 1,2,3,5,8...)
- burndown chart is used to track the progress of the project over time
- burndown chart velocity allows you to gauge the pace of project progress, gives you an idea of whether you're on schedule

#### Scrum Meetings

**Daily Standup**

- quick daily meeting with your entire team
- team members share what they've done since their last meeting, what they plan on doing today, and if you have any blockers (issues prohibiting future progress)

**Sprint Review**

- review the sprint's progress with the product owner and other key stakeholders

**Sprint Retrospective**

- review the sprint's progress with the team
- what went well, what went wrong, what will need to be changed for the next sprint

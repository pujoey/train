<img align="left" alt="GA logo." title="General Assemb.ly" src="https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png" height="90px">

# WDI DTLA 6 Project 2 - Train

![Train](https://i.imgur.com/OvpdpkE.png =300x)
[Link to Wireframe & ERD on Trello](https://trello.com/b/VBxokcZL/wdi-project-2-train)

---


### About This App


Most trainers keep clients' sessions and body stats data on their phone in a notepad which is often inaccurate and prone to neglect to update. Trainers and their clients can maintain clients' body stats in a centralized database accessible by multi-platforms.

This app is for personal trainers to keep track of clients' sessions with calendar and for clients to keep track of their own goals and progress.  I made this app after speaking to an actual body trainer to find out his unique needs for a website.    

---

### Project Requirement

- Have at least 2 models (more if they make sense) – one representing someone using your application, and at least one more that represents the main functional idea for your app.
- Include sign up/log in functionality, with authentication from scratch (has_secure_password). Implement basic authorization by restricting access to certain features, such as editing and deleting a resource, to an authenticated user.
- Have complete RESTful routes for at least one of your resources with GET, POST, PUT/PATCH, and DELETE.
- Have semantically clean HTML and CSS.
Be deployed online (Heroku) and accessible to the public.

---
### Technology Used

 Development| Design | Communication | Deployment
----| --- | --- | ---
 [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)| [Moqups](moqups.com)|  [Standup meetings](https://en.wikipedia.org/wiki/Stand-up_meeting)| [Heroku](http://heroku.com/)
 [CSS](http://www.w3schools.com/css/) | [Sublime](http://www.sublimetext.com/) | [Slack](https://slack.com/) 
  [Bootstrap](http://getbootstrap.com/) | [Trello](https://trello.com/) | [Markdown](https://guides.github.com/features/mastering-markdown/)| 
[Ruby](https://www.ruby-lang.org/)  | | |
[Ruby on Rails](rubyonrails.org/) | | |
[PostgreSQL](www.postgresql.org/) |



---
### Project Challenges

- Apply **Ruby**, **RoR**, **PostgreSQL** skill learned in class after learning it for 2 weeks to make a fullstack application.
- Familirize myself with principles such as **MVC** (Model, View, Controller), **RESTful CRUDing** design, and RoR's **convention over configuration**.
- Design a working **ERD** (Entity Relational Diagram) and following Rail's **ORM** (Object Relational Mapping) and **Active Record** schema conventions.
- Implmenting **Authentication** by building user models with hashed password authorization Rail's gem **"bcrypt"** to grant different access, and build signup/login **ERB** (Embedded Ruby) views in to the app.
- Explore and implment **Calendar** function into app without using Gem.
- Contact actual trainer to find out what useful functions are needed for the app in order to determine the **business requirements**.


---
### Completed

- [ x ] As a TRAINER & USER, I would like to see good looking center formated sign-in page BECAUSE it makes it more pleasant to the eyes

- [ x ] As a TRAINER, I would like to have menu to different pages on the navbar BECAUSE it's easily accessible to me to click on.

- [ x ] As a USER, I would like to see my schedules with headings of start/end dates BECAUSE it reminds me of the important dates

- [ x ] As a TRAINER, I would like to see calendar of training sessions on the calendar BECAUSE it helps me to keep sessions organized.

- [ x ] As a TRAINER & USER, I would like to have good looking center formated profile edit page BECAUSE it makes it more pleasant to read


---
### Icebox


- [ ] **FEATURE**: As a TRAINER, I would like to see a dashboard/kanban with as much information as soon as the page is loaded BECAUSE it saves me time to navigate from page loadings

- [ ] **Select Users**: As a TRAINER & USER, I would like to send message to my trainer/client BECAUSE it's cool to leave messages between trainer/clients

- [ ] **Active Mail**: As a TRAINER & USER, I would like to receive email when I sign up BECAUSE it is a web convention 

- [ ] **Active Mail**: As a TRAINER, I would like to send email listing to my clients BECAUSE I want to inform clients on training session price update, new videos and posts.

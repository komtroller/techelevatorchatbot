

-- Switch to the system (aka master) database
USE master;
GO

-- Delete the DemoDB Database (IF EXISTS)
IF EXISTS(select * from sys.databases where name='Chatbot')
DROP DATABASE Chatbot;
GO

-- Create a new DemoDB Database
CREATE DATABASE Chatbot;
GO

-- Switch to the DemoDB Database
USE Chatbot
GO

BEGIN TRANSACTION;






CREATE TABLE users
(
	id			int			identity(1,1),
	keyword	varchar(250)	not null,
	response varchar(max)		not null,


	constraint pk_users primary key (id)
);

CREATE TABLE motivationalquotes
(
	quoteid			int			identity(1,1),
	quote varchar(max)		not null,
	constraint pk_motivationalquotes primary key (quoteid)
);
CREATE TABLE tech_questions
(
	questionsid			int			identity(1,1),
	question varchar(max)		not null,
	primary key (questionsid)
);

CREATE TABLE interview_questions
(
	questionsid			int			identity(1,1),
	question varchar(max)		not null,
	primary key (questionsid)
);

CREATE TABLE positions
(
	id			int			identity(1,1),
	position varchar(max)		not null,
	primary key (id)
);

CREATE TABLE co_information
(
	
	company varchar(max)		not null,
	primary key (id),
	id int,
	location varchar(max)		not null,
	grads_placed int		not null,
	rating int			not null,
	employee_no int			not null,
	linkedin varchar(max)	
);



CREATE TABLE upcomingevents
(
	id			int			identity(1,1),
	dateOfEvent DATE not null, 
	eventDescription varchar(max)		not null,
	primary key (id)
);


-- Upcoming Events

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-18', 'Meetup: Tech Holiday Party! An end of the year holiday event where we mingle and remember the highlights of the year! Location: Pillar Accenture, Time: 6:00 - 8:00 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-19', 'Pathway: Employer Showcase Olive. Location: Elevate Space, Time: 1:00 - 2:00 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-20', 'Meetup: Ardino Enthusiasts. Location: Polaris Hub, Time: 7:00 - 9:00 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-21', 'Pathway: Behavioral Mock Interview. Location: Galileo, Time: 1:35 - 2:00 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-22', 'Meetup: Elixir Columbus. Location: Cover My Meds, Time: 4:30 - 6:30 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-25', 'Pathway: Elevator Pitch. Location: Elevate space, Time: 1:30 - 2:30 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-27', 'Pathway: Employer Showcase OCLC. Location: Elevate Space, Time: 12:30 - 1:30 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-30', 'Meetup: R-Ladies Columbus is part of a worldwide organization to promote gender diversity in the R community! Location: Rev1, Time: 4:00 - 6:00 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-24', 'Pathway: Employer Matchmaking. Location: Main Hall, Time: 11:00 AM - 4:30 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-23', 'Pathway: Career Panels. Location: Elevate Space, Time: 5:30 PM - 6:30 PM.')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-22', 'Pathway: Employer Matchmaking. Location: Elevate Space, Time: 8:30 AM - 11:30 PM.')


-- Job Positions
INSERT INTO positions
VALUES ('software developer')
 
INSERT INTO positions
VALUES ('UX/IX designer') 

INSERT INTO positions
VALUES ('data analyst') 

INSERT INTO positions
VALUES ('business analyst') 

INSERT INTO positions
VALUES ('project manger') 

INSERT INTO positions
VALUES ('product owner') 

INSERT INTO positions
VALUES ('software engineer') 

INSERT INTO positions
VALUES ('.Net') 

INSERT INTO positions
VALUES ('Automation') 

INSERT INTO positions
VALUES ('QA Quality Assurance') 

INSERT INTO positions
VALUES ('Front end developer') 

INSERT INTO positions
VALUES ('Back end developer') 

INSERT INTO positions
VALUES ('SQL Developer') 

INSERT INTO positions
VALUES ('Programmer Analyst')

INSERT INTO positions
VALUES ('Java')  

INSERT INTO positions
VALUES ('Python') 

INSERT INTO positions
VALUES ('Javascript') 

INSERT INTO positions
VALUES ('Web Developer') 



------ Information Table

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Accenture',1,'Columbus',10,4,10500, 'https://www.linkedin.com/company/accenture/people/?facetGeoRegion=us%3A184&keywords=tech%20elevator')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Pillar',2,'Columbus',10,4,9400, 'https://www.linkedin.com/company/pillar-technology/people/?keywords=Tech%20Elevator')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('JPMorgan Chase',25,'Columbus',98,4,13600, 'https://www.linkedin.com/company/jpmorganchase/people/?facetSchool=372014')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Chase',26,'Columbus',98,4,13600, 'https://www.linkedin.com/company/jpmorganchase/people/?facetSchool=372014')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('JPMorgan',6,'Columbus',98,4,13600, 'https://www.linkedin.com/company/jpmorganchase/people/?facetSchool=372014')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Willow Tree',7,'Columbus',10,4,420, 'https://www.linkedin.com/search/results/people/?facetCurrentCompany=%5B%221099749%22%5D&facetNetwork=%5B%22F%22%5D')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('BYBE',8,'Columbus',0,4,7)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Nationwide',9,'Columbus',3,4,16500, 'https://www.linkedin.com/company/nationwide/people/?facetSchool=372014&keywords=TECH%20ELEVATOR')

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('RED HAT',10,'Columbus',2,4,18563)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('Olive',11,'Columbus',8,5,110)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('Safelite AutoGlass',12,'Columbus',0,3,14500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('AWH',13,'Columbus',1,5,103)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('T-CETRA',14,'Columbus',10,4,10500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('OPERS',15,'Columbus',10,4,603)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('McGraw-Hill',16,'Columbus',10,4,10500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('Avanade',17,'Columbus',2,5,18340)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('FCDC',18,'Columbus',1,5,14)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('TEK SYSTEMS',19,'Columbus',1,3,10500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('OPERS',20,'Columbus',1,2,10500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('McGraw-Hill',21,'Columbus',1,4,10500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('OCLC',22,'Columbus',4,5,10500)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('L-BRANDS',23,'Columbus',10,5,16570)

INSERT INTO co_information(company,id,location,grads_placed,rating,employee_no)
VALUES ('Brooksource',24,'Columbus',4,3,1540)


 -------
--- QUOTES
INSERT INTO motivationalquotes (quote)
Values ('"Nothing is impossible, the word itself says I''m possible!" - Audrey Hepburn')

INSERT INTO motivationalquotes (quote)
Values ('"The journey of a thousand miles begins with a single step." - Lao Tzu')

INSERT INTO motivationalquotes (quote)
Values ('"Do not follow where the path may lead. Go instead where there is no path and leave a trail." - Ralph Waldo Emerson')

INSERT INTO motivationalquotes (quote)
Values ('"Bite off more than you can chew, then chew it." - Ella Williams')

INSERT INTO motivationalquotes (quote)
Values ('"Life is 10% what happens to you and 90% how you react to it." - Charles R. Swindoll')

INSERT INTO motivationalquotes (quote)
Values ('"The secret of getting ahead is getting started." - Mark Twain')

INSERT INTO motivationalquotes (quote)
Values ('"Do not let your difficulties fill you with anxiety, after all, it is only in the darkest nights that the stars shine more brilliantly." - Ali Bin Abitaleb')

INSERT INTO motivationalquotes (quote)
Values ('"Look up at the stars and not down at your feet. Try to make sense of what you see, and wonder about what makes the universe exist. Be curious." - Stephen Hawking')

INSERT INTO motivationalquotes (quote)
Values ('"If you can dream it, you can do it." - Walt Disney')

INSERT INTO motivationalquotes (quote)
Values ('"If you''re walking down the right path and you''re willing to keep walking, eventually you''ll make progress." - Barak H. Obama')





----- PATHWAY

INSERT INTO users (keyword, response)
Values ('Cover letter','You might or might not need one. It really depends on the company. <a href="https://zety.com/blog/how-to-write-a-cover-letter">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Resume', '<a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('CV', '<a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Click here!</a>')

INSERT INTO users (keyword, response)
Values ('Curriculum Vitae', '<a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Job', '<a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Click me!</a>')

INSERT INTO users (keyword, response)
Values ('how get job', '<a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Follow this link!</a>')

INSERT INTO users (keyword, response)
Values ('work', '<a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Click here to find out more!</a>')

INSERT INTO users (keyword, response)
Values ('Hired', '<a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Hiring', '<a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that might help with that!</a>')


INSERT INTO users (keyword, response)
Values ('Networking', 'I would advise you to join a meetup group related to your field and interests, and to also create a LinkedIn account!')

INSERT INTO users (keyword, response)
Values ('Network', 'I would advise you to join a meetup group related to your field and interests, and to also create a LinkedIn account!')

INSERT INTO users (keyword, response)
Values ('Recruiter', 'There are many way to contact a recruiter, I would advise you to go to join a meetup related to your field, and to also network on LinkedIn. I strongly advise you to add a note with every request you send on LinkedIn')


INSERT INTO users (keyword, response)
Values ('Recruiters', 'There are many way to contact a recruiter, I would advise you to go to join a meetup related to your field, and to also network on LinkedIn. I strongly advise you to add a note with every request you send on LinkedIn')

INSERT INTO users (keyword, response)
Values ('Wear', 'Generally, you want to wear professional or business attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here is more information on that!</a>')

INSERT INTO users (keyword, response)
Values ('dresscode', 'Generally, you want to wear professional, or business, attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here is more information on that!</a>')

INSERT INTO users (keyword, response)
Values ('Casual', 'If the company has a casual dresscode, you still you want to wear professional, or business, attire for the interview. <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">This link maybe able to help with that.</a>')

INSERT INTO users (keyword, response)
Values ('Outfit', 'It depends on the organization. Generally, you want to wear professional or business attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here is more information on that!</a>')

INSERT INTO users (keyword, response)
Values ('dresscode', 'It depends on the organization. Generally, you want to wear professional or business attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here is more information on that!</a>')



INSERT INTO users (keyword, response)
Values ('Salary expectations', 'I would use websites such as Glassdoor, Payscale or LinkedIn to give you a better idea of industry standards based on your experience, hope that helps!')

INSERT INTO users (keyword, response)
Values ('Starmethod', 'The STAR interview response is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('STAR', 'The STAR interview response is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('advice prepare job', 'Research the company and the individuals. LinkedIn should help with that. Have a few hard copies of your resume or portfolio. Arrive early, 20 minutes before your interview is ideal. Stay calm, be humble and confident. Regardless of the outcome, send a follow up thank you email within 24hrs. Remember: What is yours is yours!')

INSERT INTO users (keyword, response)
Values ('arrays','An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type. For a single dimensional array, a good analogy is to think of it as a row of boxes. Each box can store a single value but each value must be of the same type. Hope that helps!')

INSERT INTO users (keyword, response)
Values ('mvc','MVC stands for Model (Business logic), View (Presenatation logic), and Controller (Interacts with model to get data for View). MVC is a popular way of organizing your code. Each section of your code has a purpose, and those purposes are different. Here is a more detailed link: <a href="https://www.codecademy.com/articles/mvc">Click me!</a>')

INSERT INTO users (keyword, response)
Values ('company','?')

INSERT INTO users (keyword, response)
Values ('company info','?')


----- JOB POSTING KEYWORDS

INSERT INTO users (keyword, response)
Values ('posting','?')
INSERT INTO users (keyword, response)
Values ('listing','?')
INSERT INTO users (keyword, response)
Values ('position','?')
INSERT INTO users (keyword, response)
Values ('job opening','?')
INSERT INTO users (keyword, response)
Values ('job posting','?')
INSERT INTO users (keyword, response)
Values ('job listing','?')
INSERT INTO users (keyword, response)
Values ('open position','?')
INSERT INTO users (keyword, response)
Values ('job opening','?')


----- INSPIRATIONAL QUOTE KEYWORDS
INSERT INTO users (keyword, response)
Values ('quote','?')
INSERT INTO users (keyword, response)
Values ('inspirational quote','?')
INSERT INTO users (keyword, response)
Values ('inspire me','?')
INSERT INTO users (keyword, response)
Values ('inspirational','?')

----- Interview Quesions
INSERT INTO users (keyword, response)
Values ('interview question','?')
INSERT INTO users (keyword, response)
Values ('sample question','?')
INSERT INTO users (keyword, response)
Values ('iq','?')

----- Event Keywords
INSERT INTO users (keyword, response)
Values ('upcoming events','?')
INSERT INTO users (keyword, response)
Values ('pathway events','?')
INSERT INTO users (keyword, response)
Values ('upcoming meetups','?')
INSERT INTO users (keyword, response)
Values ('events','?')
INSERT INTO users (keyword, response)
Values ('meetup','?')
INSERT INTO users (keyword, response)
Values ('pathway meetings','?')

--learning sql

INSERT INTO users (keyword, response)
Values ('tutorial SQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL</a>')

INSERT INTO users (keyword, response)
Values ('tutorial mySQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL</a>')

INSERT INTO users (keyword, response)
Values ('Beginners SQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL</a>')

INSERT INTO users (keyword, response)
Values ('sql','SQL is a standard language for storing, manipulating and retrieving data in databases. <a href="https://www.w3schools.com/sql/default.asp">Check this link out for more information</a>')

INSERT INTO users (keyword, response)
Values ('sql commands','Check out this link for <a href="https://www.codecademy.com/articles/sql-commands">SQL commands</a>')

INSERT INTO users (keyword, response)
Values ('New project MSSQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>">Click here to learn about that!</a>')

INSERT INTO users (keyword, response)
Values ('mssql commands','Check out this link for <a href="https://www.codecademy.com/articles/sql-commands">SQL commands</a>')

INSERT INTO users (keyword, response)
Values ('create project SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">Click here for more info!</a>')

INSERT INTO users (keyword, response)
Values ('create new project SQL microsoft','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">Here is a link to help with that!</a>')

INSERT INTO users (keyword, response)
Values ('tutorial SQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL!</a>')

INSERT INTO users (keyword, response)
Values (' tutorial mySQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL!</a>')

INSERT INTO users (keyword, response)
Values ('Beginners SQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL!</a>')

INSERT INTO users (keyword, response)
Values ('sql','SQL is a standard language for storing, manipulating and retrieving data in databases. Check this link out for <a href="https://www.w3schools.com/sql/default.asp">more information</a>')

INSERT INTO users (keyword, response)
Values ('what sql commands','Check out this link for <a href="https://www.codecademy.com/articles/sql-commands">SQL commands</a>')

-----
--LEARNING C#

INSERT INTO users (keyword, response)
Values ( 'c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'c# introduction','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ('C# TUTORIAL','<a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'help c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'c# explain','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Here is a helpful link for that!</a>')

INSERT INTO users (keyword, response)
Values ('C# study','<a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">Click me to learn more!</a>')




--interview questions

INSERT INTO interview_questions (question)
Values ('Tell me about yourself')

INSERT INTO interview_questions (question)
Values ('What are your strengths?')

INSERT INTO interview_questions (question)
Values ('What are your weaknesses?')

INSERT INTO interview_questions (question)
Values ('Why do you want this job?')

INSERT INTO interview_questions (question)
Values ('What do you know about our company?')

INSERT INTO interview_questions (question)
Values ('Where would you like to be in your career five years from now?')

INSERT INTO interview_questions (question)
Values ('Are you willing to relocate? ')

INSERT INTO interview_questions (question)
Values ('What are your passions and goals in life?')

INSERT INTO interview_questions (question)
Values ('Do you have any questions for me?')

INSERT INTO interview_questions (question)
Values ('Can you describe a time when your work was criticized? ')

INSERT INTO interview_questions (question)
Values ('What is the most difficult decision you have made in the last two years and how did you come to that decision?')

INSERT INTO interview_questions (question)
Values ('What salary are you seeking?')

INSERT INTO interview_questions (question)
Values ('Sell me this pencil.')

INSERT INTO interview_questions (question)
Values ('Who do you consider leaders/idol and why?')

INSERT INTO interview_questions (question)
Values ('How would you feel about working for someone who knows less than you? ')

INSERT INTO interview_questions (question)
Values ('What are you most proud of? ')

--TECHNICAL QUESTIONS 

INSERT INTO tech_questions (question)
Values (' Where and when do you use an Assert.AreEqual statement?')

INSERT INTO tech_questions (question)
Values (' When and how do you use reflection in your projects? ')

INSERT INTO tech_questions (question)
Values ('What’s the difference between a base class and an interface? ')

INSERT INTO tech_questions (question)
Values ('When is it beneficial to use an IoC Container ')

INSERT INTO tech_questions (question)
Values ('When and how do you use an interface? ')

INSERT INTO tech_questions (question)
Values ('What is difference between constants and readonly? ')

INSERT INTO tech_questions (question)
Values ('Why do you want to become a programmer? ')

INSERT INTO tech_questions (question)
Values (' What is object oriented programming? ')

INSERT INTO tech_questions (question)
Values (' What is unit testing? ')

INSERT INTO tech_questions (question)
Values (' What is abstraction? ')

INSERT INTO tech_questions (question)
Values (' What is polymorphism? ')

INSERT INTO tech_questions (question)
Values (' What is better composition or inheritance? ')

INSERT INTO tech_questions (question)
Values ('Name three different types of loops? ')

INSERT INTO tech_questions (question)
Values ('What are primitives and provide some examples? ')

INSERT INTO tech_questions (question)
Values ('What is the difference between a List and an Array in C#? ')

INSERT INTO tech_questions (question)
Values ('What is a Dictionary in C# and what is a use case for them? ')

INSERT INTO tech_questions (question)
Values ('What is method overloading and method overriding? (Hint: Mention difference in paramters,run-time etc) ')

INSERT INTO tech_questions (question)
Values ('How does JavaScript compare to C#? ')

INSERT INTO tech_questions (question)
Values (' What is meant by the term immutable? ')

INSERT INTO tech_questions (question)
Values ('What is string interpolation? ')

INSERT INTO tech_questions (question)
Values ('In CSS what is an element? ')

INSERT INTO tech_questions (question)
Values ('What is the DOM? ')

INSERT INTO tech_questions (question)
Values ('What is AJAX? ')

INSERT INTO tech_questions (question)
Values ('What is a cookie? ')

INSERT INTO tech_questions (question)
Values ('Explain Json and XML? When do would you either one (Json or XML)? ')

INSERT INTO tech_questions (question)
Values ('What is the difference between authentication and authorization? ')

INSERT INTO tech_questions (question)
Values ('What data structure would you use to process items as they arrive? ')

INSERT INTO tech_questions (question)
Values ('Explain dependency injection.')

INSERT INTO tech_questions (question)
Values (' What is a CORS vulnerability?')

INSERT INTO tech_questions (question)
Values ('What is the difference between ExecuteScalar, ExecuteReader and ExecuteNonQuery? (Hint one takes in a single value, one takes in multiple rows/columns ')

INSERT INTO tech_questions (question)
Values ('What is JWT? ')

INSERT INTO tech_questions (question)
Values ('What is a hashset?')

INSERT INTO tech_questions (question)
Values (' How do you create a new tab when linking the controller to URL?')

INSERT INTO tech_questions (question)
Values ('What is a moustache and when would you use it? ')

INSERT INTO tech_questions (question)
Values ('What is managed and unmanaged code? ')

INSERT INTO tech_questions (question)
Values ('What are C# I/O classes? Which are the classes that are commonly used? ')

INSERT INTO tech_questions (question)
Values ('What is a stream? (Hint: think River of Data ')

INSERT INTO tech_questions (question)
Values ('What are Get and Set Accessor properties? ')

INSERT INTO tech_questions (question)
Values ('Explain the 3 layers present in a webpage. How CSS plays its role in it? ')

INSERT INTO tech_questions (question)
Values ('W3C stands for World Wide Web Consortium. What can you tell me about it? ')

INSERT INTO tech_questions (question)
Values ('As a developer what ways are applied to reduce the load time of any given website? ')

INSERT INTO tech_questions (question)
Values ('How will you declare a 3-dimensional array in Javascript? Use syntax. ')

INSERT INTO tech_questions (question)
Values ('Explain the CSS box model? ')

INSERT INTO tech_questions (question)
Values ('Explain the different between waterfall and agile? ')

INSERT INTO tech_questions (question)
Values ('When would you not use Agile? (Explain a general example of a project)')

INSERT INTO tech_questions (question)
Values (' What is Git? ')

INSERT INTO tech_questions (question)
Values ('What language is used in Git? ')

INSERT INTO tech_questions (question)
Values ('In Git.How can you fix a broken commit? ')

INSERT INTO tech_questions (question)
Values ('What is a repository in Git? ')

INSERT INTO tech_questions (question)
Values ('Explain the binary tree conceptually? You can draw a diagram ')

INSERT INTO tech_questions (question)
Values ('What is the difference between git pull and git fetch?')

INSERT INTO tech_questions (question)
Values ('What is the difference between ‘git remote’ and ‘git clone’? ')

INSERT INTO tech_questions (question)
Values (' What are some of the common lists that can be used when designing a page? ')

INSERT INTO tech_questions (question)
Values (' List out few different return types of a controller action method?')

INSERT INTO tech_questions (question)
Values ('  What is Data Integrity?  ')

INSERT INTO tech_questions (question)
Values (' What is a Subquery? What are its types? ')

--- GREETINGS AND NATURAL LANGUAGE UNDERSTANDING 
INSERT INTO users (keyword, response)
Values ('How are you', 'I am good thank you! How can I help you?')

INSERT INTO users (keyword, response)
Values ('HELP', 'I can help you. Please insert a question or a topic of interest.(ex interview, posting')

INSERT INTO users (keyword, response)
Values ('Hi', 'Hi, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Question', 'Ask away, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Hey there',  'Hi, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Goodmorning', 'Hi, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Goodafternoon','Hi, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Goodevening','Hi, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Hola','Hola, How can I help you?')

INSERT INTO users (keyword, response)
Values ('SUP','Hollar, How can I help you?')

INSERT INTO users (keyword, response)
Values ('Thank you','You are welcome,Let me know if you have any more questions')

INSERT INTO users (keyword, response)
Values ('YOU ARE SO','Ohhh Thank you!')

INSERT INTO users (keyword, response)
Values ('No,Thank you','You are welcome, Goodbye!')

INSERT INTO users (keyword, response)
Values ('Who are you?','I am a chatbot!')

INSERT INTO users (keyword, response)
Values ('Siri','Very funny!')

INSERT INTO users (keyword, response)
Values ('Alexa','Cute!That is not my name though')

INSERT INTO users (keyword, response)
Values ('Yo','Yoyoyo, How can I help?')

INSERT INTO users (keyword, response)
Values ('Ciao','Ciao, Thank you for visiting our site?')

INSERT INTO users (keyword, response)
Values ('Can you help me?','I sure can! Let us getting started. What would you like to ask?')

INSERT INTO users (keyword, response)
Values ('Answer me','I am just a chatbot! I can display answers but you know I can not actually talk!')

INSERT INTO users (keyword, response)
Values ('Who are you?','I am a Chattio, your tech elevator chatbot!')

INSERT INTO users (keyword, response)
Values ('John Fulton','He is awesome, we all know that!')

INSERT INTO users (keyword, response)
Values ('Program details','Here is the link <a href=https://www.techelevator.com/program-details>">Click me to learn more!</a>')

INSERT INTO users (keyword, response)
Values ('FAQ tech elevator','Here is the link <a href=https://www.techelevator.com/faqs">Click me to learn more about Tech Elevator FAQ!</a>')


INSERT INTO users (keyword, response)
Values ('tech elevator','Best coding bootcamp in the Midwest! It will help you elevate your career in 14 weeks')

INSERT INTO users (keyword, response)
Values ('about you','I was born at Rev1 in December of 2019! Created by the super awesome trio from Cohort 9: Hala Shiblaq, Kael OMalley, and Basal Ali')

INSERT INTO users (keyword, response)
Values ('created Chattio','I was born at Rev1 in December of 2019! Created by the super awesome trio from Cohort 9: Hala Shiblaq, Kael OMalley, and Basal Ali')

INSERT INTO users (keyword, response)
Values ('unknown','Sorry, I don''t understand what you''re asking. Try rewording your request.')




COMMIT TRANSACTION;










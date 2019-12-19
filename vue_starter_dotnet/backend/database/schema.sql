

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
	id int identity(1,1) not null,
	location varchar(max)		not null,
	grads_placed int		not null,
	rating float			not null,
	employee_no int			not null,
	linkedin varchar(max),	
	primary key (id)
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
VALUES ('2020-12-26', '<span style=''font-weight:bold; text-decoration: underline''>MEETUP: COLUMBUS MACHINE LEARNERS</span><br>Date & Time: Thur 12/26, 7-9PM <br>Location: The Forge <br><a href="https://www.meetup.com/Columbus-Machine-Learners/events/nhsxcrybccbcb/">More info</a>')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-20', '<span style=''font-weight:bold; text-decoration: underline''>PATHWAY EVENT: COHORT 9 DEMOS</span><br>Date & Time: Fri 12/20, 4-6PM <br>Location: Rev1-Main CR')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-20', '<span style=''font-weight:bold; text-decoration: underline''>PATHWAY EVENT: GRADUATION CEREMONY</span><br>Date & Time: Fri 12/20, 6-7PM<br>Location: Rev1-Main CR')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-23', '<span style=''font-weight:bold; text-decoration: underline''>MEETUP: OPEN COLUMBUS</span><br>Date & Time: Mon 12/23, 6-8PM<br>Location: AEP Charge<br><a href="https://www.meetup.com/OpenColumbus/events/267219333/">More info</a>')

INSERT INTO upcomingevents (dateOfEvent, eventDescription)
VALUES ('2019-12-25', '<span style=''font-weight:bold; text-decoration: underline''>HOLIDAY: CHRISTMAS DAY</span><br>Date: Wed 12/25<br>HAPPY HOLIDAYS!!')

-- Job Positions
INSERT INTO positions
VALUES ('software developer')
 
INSERT INTO positions
VALUES ('UI designer') 

INSERT INTO positions
VALUES ('UX designer') 

INSERT INTO positions
VALUES ('UI/UX designer') 

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

--Interview Keywords
INSERT INTO users (keyword, response)
Values ('TQ','technical question')
INSERT INTO users (keyword, response)
Values ('interview question','interview question')
INSERT INTO users (keyword, response)
Values ('sample question','interview question')
INSERT INTO users (keyword, response)
Values ('sample questoin','interview question')
INSERT INTO users (keyword, response)
Values ('iq','interview question')
INSERT INTO users (keyword, response)
Values ('technical','technical question')
INSERT INTO users (keyword, response)
Values ('technical question','technical question')
INSERT INTO users (keyword, response)
Values ('technical interview question','technical question')

------ Information Table

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Accenture','Columbus',13,3.8,492000, 'https://www.linkedin.com/company/accenture/people/?facetGeoRegion=us%3A184&keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Pillar','Columbus',6,4.0,2006, 'https://www.linkedin.com/company/pillar-technology/people/?keywords=Tech%20Elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('JPMorgan Chase','Columbus',98,3.9,189315, 'https://www.linkedin.com/company/jpmorganchase/people/?facetSchool=372014')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Chase','Columbus',98,3.9,189315, 'https://www.linkedin.com/company/jpmorganchase/people/?facetSchool=372014')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('JPMorgan','Columbus',98,3.9,189315, 'https://www.linkedin.com/company/jpmorganchase/people/?facetSchool=372014')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Willow Tree','Columbus',1,4,474, 'https://www.linkedin.com/company/willowtreeapps/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Nationwide','Columbus',3,4,16500, 'https://www.linkedin.com/company/nationwide/people/?facetSchool=372014&keywords=TECH%20ELEVATOR')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Olive','Columbus',13,3.9,203,'https://www.linkedin.com/company/hireolive/people/?facetSchool=372014')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Safelite AutoGlass','Dublin',5,3.5,15000, 'https://www.linkedin.com/company/safelite-autoglass/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('T-CETRA','Dublin',2,4,65, 'https://www.linkedin.com/company/t-cetra-llc/people/?facetSchool=372014')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Franklin County Data Center','Columbus',3,2.6,25,'https://www.linkedin.com/company/franklin-county-data-center/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('FCDC','Columbus',3,2.6,25,'https://www.linkedin.com/company/franklin-county-data-center/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('OCLC','Columbus',3,3.6,1222, 'https://www.linkedin.com/company/oclc/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('L-BRANDS','Columbus',5,3.6,47680,'https://www.linkedin.com/company/limited-brands/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('LBRANDS','Columbus',5,3.6,47680,'https://www.linkedin.com/company/limited-brands/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('L BRANDS','Columbus',5,3.6,47680,'https://www.linkedin.com/company/limited-brands/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Huntington','Columbus',12,3.4,14511,'https://www.linkedin.com/company/huntington-national-bank/people/?keywords=tech%20elevator')

INSERT INTO co_information(company,location,grads_placed,rating,employee_no,linkedin)
VALUES ('Script Drop','Columbus',1,4.4,71,'https://www.linkedin.com/company/scriptdrop/people/?keywords=tech%20elevator')



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
Values ('Cover letter','You might or might not need one. It really depends on the company. <br><a href="https://zety.com/blog/how-to-write-a-cover-letter">Here is some advice on how to write a cover letter</a>')

INSERT INTO users (keyword, response)
Values ('Resume', 'Oh, getting your resume in shape is so important! <br><a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a good template</a>')

INSERT INTO users (keyword, response)
Values ('CV', 'Oh, getting your CV (or resume as we say in North America) in shape is so important! <br><a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a good template</a>')

INSERT INTO users (keyword, response)
Values ('Curriculum Vitae', 'Oh, getting your CV (or resume as we say in North America) in shape is so important! <br><a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a good template</a>')

INSERT INTO users (keyword, response)
Values ('Networking', 'Go to meetups! Be yourself! Connect on LinkedIn and keep in contact!')

INSERT INTO users (keyword, response)
Values ('Network', 'Go to meetups! Be yourself! Connect on LinkedIn and keep in contact!')

INSERT INTO users (keyword, response)
Values ('Recruiter', 'Recruiters can be very helpful in your job search. Make sure they''re not just sending blanket emails and that they don''t send your resume without permission.')


INSERT INTO users (keyword, response)
Values ('Recruiters', 'Recruiters can be very helpful in your job search. Make sure they''re not just sending blanket emails and that they don''t send your resume without permission.')

INSERT INTO users (keyword, response)
Values ('Wear', 'Generally, you want to wear professional or business attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here''s a good guide.</a>')

INSERT INTO users (keyword, response)
Values ('dresscode', 'Generally, you want to wear professional, or business, attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here''s a good guide.</a>')

INSERT INTO users (keyword, response)
Values ('Casual', 'If the company has a casual dresscode, you still you want to wear professional, or business, attire for the interview. <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">This link maybe able to help with that.</a>')

INSERT INTO users (keyword, response)
Values ('Outfit', 'It depends on the organization. Generally, you want to wear professional or business attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here''s a good guide.</a>')

INSERT INTO users (keyword, response)
Values ('dresscode', 'It depends on the organization. Generally, you want to wear professional or business attire! <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">Here''s a good guide.</a>')



INSERT INTO users (keyword, response)
Values ('Salary expectations', 'I would use websites such as Glassdoor, Payscale or LinkedIn to give you a better idea of industry standards based on your experience, hope that helps!')

INSERT INTO users (keyword, response)
Values ('Starmethod', 'The STAR interview response is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('STAR', 'The STAR interview response is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('prepare', 'Research the company and the individuals. LinkedIn should help with that. Have a few hard copies of your resume or portfolio. Arrive early, 20 minutes before your interview is ideal. Stay calm, be humble and confident. Regardless of the outcome, send a follow up thank you email within 24hrs. Remember: What is yours is yours!')

INSERT INTO users (keyword, response)
Values ('array','An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type. For a single dimensional array, a good analogy is to think of it as a row of boxes. Each box can store a single value but each value must be of the same type. Hope that helps!')

INSERT INTO users (keyword, response)
Values ('mvc','MVC stands for Model (Business logic), View (Presenatation logic), and Controller (Interacts with model to get data for View). MVC is a popular way of organizing your code. Each section of your code has a purpose, and those purposes are different. Here is a more detailed link: <a href="https://www.codecademy.com/articles/mvc">Click me!</a>')

INSERT INTO users (keyword, response)
Values ('company','company info')

INSERT INTO users (keyword, response)
Values ('company info','company info')


----- JOB POSTING KEYWORDS

INSERT INTO users (keyword, response)
Values ('posting','job postings')
INSERT INTO users (keyword, response)
Values ('listing','job postings')
INSERT INTO users (keyword, response)
Values ('position','job postings')
INSERT INTO users (keyword, response)
Values ('job opening','job postings')
INSERT INTO users (keyword, response)
Values ('job posting','job postings')
INSERT INTO users (keyword, response)
Values ('job listing','job postings')
INSERT INTO users (keyword, response)
Values ('open position','job postings')
INSERT INTO users (keyword, response)
Values ('job opening','job postings')
INSERT INTO users (keyword, response)
Values ('opening','job postings')
INSERT INTO users (keyword, response)
Values ('hiring', 'job postings')


----- INSPIRATIONAL QUOTE KEYWORDS
INSERT INTO users (keyword, response)
Values ('quote','quote')
INSERT INTO users (keyword, response)
Values ('inspirational quote','quote')
INSERT INTO users (keyword, response)
Values ('inspire me','quote')
INSERT INTO users (keyword, response)
Values ('inspire','quote')
INSERT INTO users (keyword, response)
Values ('inspirational','quote')

----- Event Keywords
INSERT INTO users (keyword, response)
Values ('upcoming events','events')
INSERT INTO users (keyword, response)
Values ('pathway events','events')
INSERT INTO users (keyword, response)
Values ('upcoming meetups','events')
INSERT INTO users (keyword, response)
Values ('events','events')
INSERT INTO users (keyword, response)
Values ('meetup','events')
INSERT INTO users (keyword, response)
Values ('pathway meetings','events')
INSERT INTO users (keyword, response)
Values ('company meetup','events')
INSERT INTO users (keyword, response)
Values ('calen','events')
INSERT INTO users (keyword, response)
Values ('SCHEDULE','events')
INSERT INTO users (keyword, response)
Values ('SCEDULE','events')



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
Values ('New project MS SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>">Click here to learn about that!</a>')

INSERT INTO users (keyword, response)
Values ('sql commands','Check out this link for <a href="https://www.codecademy.com/articles/sql-commands">SQL commands</a>')

INSERT INTO users (keyword, response)
Values ('create project SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">Click here for more info!</a>')

INSERT INTO users (keyword, response)
Values ('create new project SQL microsoft','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">Here is a link to help with that!</a>')

INSERT INTO users (keyword, response)
Values ('tutorial SQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL!</a>')

INSERT INTO users (keyword, response)
Values ('tutorial mySQL','Here is my favorite tutorial on <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">SQL!</a>')

-----
--LEARNING C#

INSERT INTO users (keyword, response)
Values ( 'c#','C# (C-Sharp) is a programming language developed by Microsoft that runs on the . NET Framework. C# is used to develop web apps, desktop apps, mobile apps, games and much more. <a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'c#','C# (C-Sharp) is a programming language developed by Microsoft that runs on the . NET Framework. C# is used to develop web apps, desktop apps, mobile apps, games and much more. <a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ('C# TUTORIAL','Here is a good video to get started: <a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'help c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')





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
Values ('Can you describe a time when your work was criticized? ')

INSERT INTO interview_questions (question)
Values ('What is the most difficult decision you have made in the last two years and how did you come to that decision?')

INSERT INTO interview_questions (question)
Values ('Who do you consider leaders and why?')

INSERT INTO interview_questions (question)
Values ('How would you feel about working for someone who knows less than you? ')

INSERT INTO interview_questions (question)
Values ('What are you most proud of? ')

INSERT INTO interview_questions (question)
Values ('How would you handle conflict with another employee?')

INSERT INTO tech_questions (question)
Values ('Why do you want to become a programmer? ')


--TECHNICAL QUESTIONS 

INSERT INTO tech_questions (question)
Values (' Where and when do you use an Assert.AreEqual statement?')

INSERT INTO tech_questions (question)
Values ('What’s the difference between a base class and an interface? ')

INSERT INTO tech_questions (question)
Values ('When is it beneficial to use an IoC Container ')

INSERT INTO tech_questions (question)
Values ('When and how do you use an interface? ')

INSERT INTO tech_questions (question)
Values (' What is object oriented programming? ')

INSERT INTO tech_questions (question)
Values (' What is unit testing? ')

INSERT INTO tech_questions (question)
Values (' What is abstraction? ')

INSERT INTO tech_questions (question)
Values (' What is polymorphism? ')

INSERT INTO tech_questions (question)
Values ('Name three different types of loops. ')

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
Values ('In CSS, what is an element? ')

INSERT INTO tech_questions (question)
Values ('What is the DOM? ')

INSERT INTO tech_questions (question)
Values ('What is a cookie? ')

INSERT INTO tech_questions (question)
Values ('Explain Json and XML? When do would you either one (Json or XML)? ')

INSERT INTO tech_questions (question)
Values ('What is the difference between authentication and authorization? ')

INSERT INTO tech_questions (question)
Values ('Explain dependency injection.')

INSERT INTO tech_questions (question)
Values ('What is a CORS vulnerability?')

INSERT INTO tech_questions (question)
Values ('What is the difference between ExecuteScalar, ExecuteReader and ExecuteNonQuery? (Hint one takes in a single value, one takes in multiple rows/columns ')

INSERT INTO tech_questions (question)
Values ('What is a ''just in time'' compiler? ')

INSERT INTO tech_questions (question)
Values ('What is a hashset?')

INSERT INTO tech_questions (question)
Values ('How open a link in a new tab within an anchor tag?')

INSERT INTO tech_questions (question)
Values ('What is managed and unmanaged code? ')

INSERT INTO tech_questions (question)
Values ('Explain the 3 layers present in a webpage. How CSS plays its role in it? ')

INSERT INTO tech_questions (question)
Values ('W3C stands for World Wide Web Consortium. What can you tell me about it? ')

INSERT INTO tech_questions (question)
Values ('As a developer what can you do to optiize load time?')

INSERT INTO tech_questions (question)
Values ('How will you declare a 3-dimensional array in Javascript? Use syntax. ')

INSERT INTO tech_questions (question)
Values ('Explain the CSS box model? ')

INSERT INTO tech_questions (question)
Values ('Explain the difference between waterfall and agile? ')

INSERT INTO tech_questions (question)
Values ('When would you not use Agile? (Explain a general example of a project)')

INSERT INTO tech_questions (question)
Values (' What is Git? ')

INSERT INTO tech_questions (question)
Values ('In Git, how can you fix a broken commit? ')

INSERT INTO tech_questions (question)
Values ('What is a repository in Git? ')

INSERT INTO tech_questions (question)
Values ('What is the difference between git pull and git fetch?')

INSERT INTO tech_questions (question)
Values ('What is the difference between ‘git remote’ and ‘git clone’? ')

INSERT INTO tech_questions (question)
Values ('What is Data Integrity?  ')

INSERT INTO tech_questions (question)
Values ('What is a Subquery? What are its types? ')

INSERT INTO tech_questions (question)
Values ('What is big O notation?')

--- GREETINGS AND NATURAL LANGUAGE UNDERSTANDING 
INSERT INTO users (keyword, response)
Values ('How are you', 'I''m great, thanks!')

INSERT INTO users (keyword, response)
Values ('HELP', 'I would be happy to help, just let me know what you need. You can use the shortcuts below the chat if you need more help finding the right answer')

INSERT INTO users (keyword, response)
Values ('Hi', 'Hi there! How can I help?')

INSERT INTO users (keyword, response)
Values ('Question', 'Ask away, how can I help you?')

INSERT INTO users (keyword, response)
Values ('Hey there',  'Howdy, how can I help you?')

INSERT INTO users (keyword, response)
Values ('Goodmorning', 'Good morning! How can I help you?')

INSERT INTO users (keyword, response)
Values ('Good afternoon','Good afternoon! How can I help you?')

INSERT INTO users (keyword, response)
Values ('Goodafternoon','Good afternoon! How can I help you?')

INSERT INTO users (keyword, response)
Values ('Good evening','Good evening! How can I help you?')

INSERT INTO users (keyword, response)
Values ('Goodevening','Good evening! How can I help you?')

INSERT INTO users (keyword, response)
Values ('Hola','Hola mi amigo! How can I help you?')

INSERT INTO users (keyword, response)
Values ('SUP','Hollar! How can I help you?')

INSERT INTO users (keyword, response)
Values ('Thank you','You are welcome. Let me know if you have any more questions')

INSERT INTO users (keyword, response)
Values ('YOU ARE SO','Ohhh Thank you!')

INSERT INTO users (keyword, response)
Values ('Who are you?','I am a Tech Elevator chatbot! I can help you with many things')

INSERT INTO users (keyword, response)
Values ('Siri','Very funny! I think you may have me confused with someone else.')

INSERT INTO users (keyword, response)
Values ('Alexa','Cute!That is not my name though')

INSERT INTO users (keyword, response)
Values ('Yo','Yoyoyo, How can I help?')

INSERT INTO users (keyword, response)
Values ('Ciao','Ciao, thank you for visiting our site?')

INSERT INTO users (keyword, response)
Values ('Can you help me?','I sure can! Let us get started. What would you like to ask?')

INSERT INTO users (keyword, response)
Values ('Who are you?','I am your tech elevator chatbot!')

INSERT INTO users (keyword, response)
Values ('John Fulton','He is awesome, we all know that!')

INSERT INTO users (keyword, response)
Values ('OH','IO')

INSERT INTO users (keyword, response)
Values ('GO BUCKS','BUT OF COURSE! ')

INSERT INTO users (keyword, response)
Values ('Program details','Here is the link <a href=https://www.techelevator.com/program-details>">Click me to learn more!</a>')

INSERT INTO users (keyword, response)
Values ('FAQ tech elevator','Here is the link <a href=https://www.techelevator.com/faqs">Click me to learn more about Tech Elevator FAQ!</a>')


INSERT INTO users (keyword, response)
Values ('tech elevator','Best coding bootcamp in the Midwest! It will help you elevate your career in 14 weeks')

INSERT INTO users (keyword, response)
Values ('about you','I was born at Rev1 in December of 2019! Created by the super awesome trio from Cohort 9: Hala Shiblaq, Kael OMalley, and Basal Ali')

INSERT INTO users (keyword, response)
Values ('created Chatbot','I was born at Rev1 in December of 2019! Created by the super awesome trio from Cohort 9: Hala Shiblaq, Kael OMalley, and Basal Ali')

INSERT INTO users (keyword, response)
Values ('unknown','Sorry, I don''t understand what you''re asking. Try rewording your request. You can look at a list of keywords below the chat.')




COMMIT TRANSACTION;



















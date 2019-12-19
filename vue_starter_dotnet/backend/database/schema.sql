

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





----- PATHWAY RELATED QUESTIONS

INSERT INTO users (keyword, response)
Values ('Cover letter','You might or might not need one. It really depends on the company. <br><a href="https://zety.com/blog/how-to-write-a-cover-letter">Here is some advice on how to write a cover letter</a>')

INSERT INTO users (keyword, response)
Values ('Resume', 'Oh, getting your resume in shape is so important! <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a good template</a>')

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


---- COMPANY INFO KEYWORDS
INSERT INTO users (keyword, response)
Values ('company','company info')

INSERT INTO users (keyword, response)
Values ('company info','company info')

INSERT INTO users (keyword, response)
Values ('accenture','company info')

INSERT INTO users (keyword, response)
Values ('pillar','company info')

INSERT INTO users (keyword, response)
Values ('chase','company info')

INSERT INTO users (keyword, response)
Values ('JPMorgan','company info')

INSERT INTO users (keyword, response)
Values ('JPMorgan','company info')

INSERT INTO users (keyword, response)
Values ('Willow Tree','company info')

INSERT INTO users (keyword, response)
Values ('WillowTree','company info')

INSERT INTO users (keyword, response)
Values ('nationwide','company info')

INSERT INTO users (keyword, response)
Values ('olive','company info')

INSERT INTO users (keyword, response)
Values ('safelite','company info')

INSERT INTO users (keyword, response)
Values ('t-cetra','company info')

INSERT INTO users (keyword, response)
Values ('fcdc','company info')

INSERT INTO users (keyword, response)
Values ('franklin','company info')

INSERT INTO users (keyword, response)
Values ('oclc','company info')

INSERT INTO users (keyword, response)
Values ('brands','company info')

INSERT INTO users (keyword, response)
Values ('huntington','company info')

INSERT INTO users (keyword, response)
Values ('script drop','company info')


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



--GENERAL USER QUESTIONS

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

INSERT INTO users (keyword, response)
Values ( 'c#','C# (C-Sharp) is a programming language developed by Microsoft that runs on the . NET Framework. C# is used to develop web apps, desktop apps, mobile apps, games and much more. <a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'c#','C# (C-Sharp) is a programming language developed by Microsoft that runs on the . NET Framework. C# is used to develop web apps, desktop apps, mobile apps, games and much more. <a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ('C# TUTORIAL','Here is a good video to get started: <a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ( 'help c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">Click here to learn more about that!</a>')

INSERT INTO users (keyword, response)
Values ('array','An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type. For a single dimensional array, a good analogy is to think of it as a row of boxes. Each box can store a single value but each value must be of the same type. Hope that helps!')

INSERT INTO users (keyword, response)
Values ('mvc','MVC stands for Model (Business logic), View (Presenatation logic), and Controller (Interacts with model to get data for View). MVC is a popular way of organizing your code. Each section of your code has a purpose, and those purposes are different. Here is a more detailed link: <a href="https://www.codecademy.com/articles/mvc">Click me!</a>')

INSERT INTO users (keyword, response)
Values ('shell','A shell is a character-based interface to the operating system. The shell is also known as the "terminal", or the "command line". You tell the operating system what to do by typing commands inside the shell. &&& The most popular shell is named bash. It is available on the OS X, Windows, and Linux operating systems, and is the shell we use at Tech Elevator.')

INSERT INTO users (keyword, response)
Values ('version control','Version control is software often used to help track the changes over time to a codebase. Version control systems are a category of software tools that help teams manage changes to source code over time. <a href=https://vimeo.com/41027679>Here''s a good video overview</a>')

INSERT INTO users (keyword, response)
Values ('git','Git is a version control system for tracking changes in computer files and coordinating work on those files among multiple people. It is primarily used for source code management in software development, but it can be used to keep track of changes in any set of files.')

INSERT INTO users (keyword, response)
Values ('github','GitHub and BitBucket offer remote repository hosting. As a developer you would update the remote repository with your code by pushing your changes to it. On the flip side, you can download new code from a remote repository, code that a teammate wrote, by pulling the changes onto your computer. &&& You''ll find that GitHub tends to be more prevalent amongst open source developer communities while BitBucket may be used more often in corporate settings. They both offer the same capability but usually have differences in pricing and how they manage public & private repositories.')

INSERT INTO users (keyword, response)
Values ('install git','FOR WINDOWS: <br> 1. Visit the Git Website and download the Git Bash for Windows client. <br> 2. Run the Git Bash for Windows installer. Leave all of the default settings as they currently are.<br> 3. Once the installation is complete, a new program called Git Bash will be installed. &&& FOR OS X: <br> 1.From a Mac OS X terminal type the command git.')

INSERT INTO users (keyword, response)
Values ('installing git','FOR WINDOWS: <br> 1. Visit the Git Website and download the Git Bash for Windows client. <br> 2. Run the Git Bash for Windows installer. Leave all of the default settings as they currently are.<br> 3. Once the installation is complete, a new program called Git Bash will be installed. &&& FOR OS X: <br> 1.From a Mac OS X terminal type the command git.')

INSERT INTO users (keyword, response)
Values ('git install','FOR WINDOWS: <br> 1. Visit the Git Website and download the Git Bash for Windows client. <br> 2. Run the Git Bash for Windows installer. Leave all of the default settings as they currently are.<br> 3. Once the installation is complete, a new program called Git Bash will be installed. &&& FOR OS X: <br> 1.From a Mac OS X terminal type the command git.')

INSERT INTO users (keyword, response)
Values ('clone','In order to begin working with an existing repository, a developer needs the remote URL so that the repository can be cloned to the computer as a local repository. A remote URL is git''s way of identifying "a place where code is stored". This URL may reference a location on GitHub, BitBucket, or another server. &&& With this URL, a new command git clone is run in the command line to download a copy of the repository.')

INSERT INTO users (keyword, response)
Values ('git procedures','GIT PUSH PROCEDURES: <br><br>1. Check for modified files: git status <br>2. Stage all files: git add -A <br>3.Commit files: commit -m"commit message goes here"<br>4.Pull: git pull origin master<br>5.Push: push origin master')

INSERT INTO users (keyword, response)
Values ('primative','In C# and Java there are two different classifications of data types: primitive(java)/value(C#) data type and reference data type. A primitive data type stores a simple value (e.g. 42, true, or ''a'') that consumes a fixed amount of memory. A reference type allows complex unknown structures of data to be created by the program.')

INSERT INTO users (keyword, response)
Values ('reference data','In C# and Java there are two different classifications of data types: primitive(java)/value(C#) data type and reference data type. A primitive data type stores a simple value (e.g. 42, true, or ''a'') that consumes a fixed amount of memory. A reference type allows complex unknown structures of data to be created by the program.')

INSERT INTO users (keyword, response)
Values ('reference type','In C# and Java there are two different classifications of data types: primitive(java)/value(C#) data type and reference data type. A primitive data type stores a simple value (e.g. 42, true, or ''a'') that consumes a fixed amount of memory. A reference type allows complex unknown structures of data to be created by the program.')

INSERT INTO users (keyword, response)
Values ('variable naming','While variable naming is an art, when it comes to creating names, there are some best practices: <br><br> -Follow camel-casing conventions: first word is lowercase, subsequent words have the first letter capitalized <br>-Use pronounceable names for variables<br>-Prefer names over single characters<br>-Use names that describe WHAT the variable does not HOW it does it<br>-Avoid creating multiple variables that are variations of the same name, this creates confusion with booleans use names that start with is, has, was, etc. and avoid using a double negative')

INSERT INTO users (keyword, response)
Values ('variable name','While variable naming is an art, when it comes to creating names, there are some best practices: <br><br> -Follow camel-casing conventions: first word is lowercase, subsequent words have the first letter capitalized <br>-Use pronounceable names for variables<br>-Prefer names over single characters<br>-Use names that describe WHAT the variable does not HOW it does it<br>-Avoid creating multiple variables that are variations of the same name, this creates confusion with booleans use names that start with is, has, was, etc. and avoid using a double negative')

INSERT INTO users (keyword, response)
Values ('expression','Expressions are statements that get evaluated and produce a single result which can then be used in another statement.')

INSERT INTO users (keyword, response)
Values ('comparison','COMPARISON OPERATORS<br><br>==	     Equal To<br>!=	     Not Equal To<br>>        	 Greater Than<br><	         Less Than<br>>=	     Greater Than or Equal To<br><=	Less Than or Equal To')

INSERT INTO users (keyword, response)
Values ('comparison operators','COMPARISON OPERATORS<br><br>==	     Equal To<br>!=	     Not Equal To<br>>        	 Greater Than<br><	         Less Than<br>>=	     Greater Than or Equal To<br><=	Less Than or Equal To')

INSERT INTO users (keyword, response)
Values ('logical operators','The comparison operators are limited in their ability to compare values between two different types. When a boolean expression needs to take two or more considerations into account to evaluate a boolean value (e.g. is the number negative AND is it even) then the logical operators are used. &&&The logical operators are: AND (&&), OR (||), XOR (^), and NOT (!). These operators work with one or more boolean operands to evaluate a boolean expression and yield true or false.')

INSERT INTO users (keyword, response)
Values ('block','Each of the sections of code that follow an if or an else statement are called blocks. Blocks use a pair of braces {..} to enclose single or multiple lines of code. While they may seem to make life hard for us early on they actually are very useful by enhancing code readability and dealing with something called variable scope.')

INSERT INTO users (keyword, response)
Values ('method','In programming, methods are used to break programs up into small repeatable units of code. They allow programmers to create blocks of code that perform a single action or calculation where the answer only changes based on the inputs provided to it.')

INSERT INTO users (keyword, response)
Values ('loops','KINDS OF LOOPS<br>For loop - used when we want code to repeat a defined number of times (e.g. one time for each element in an array)<br>While loop - used when we want to continually execute a block of code as long as a condition remains true<br>Do-while loop - used when we want to execute a block of code at least once and repeat it as long as a condition remains true')

INSERT INTO users (keyword, response)
Values ('kinds of loops','KINDS OF LOOPS<br>For loop - used when we want code to repeat a defined number of times (e.g. one time for each element in an array)<br>While loop - used when we want to continually execute a block of code as long as a condition remains true<br>Do-while loop - used when we want to execute a block of code at least once and repeat it as long as a condition remains true')

INSERT INTO users (keyword, response)
Values ('loop types','KINDS OF LOOPS<br>For loop - used when we want code to repeat a defined number of times (e.g. one time for each element in an array)<br>While loop - used when we want to continually execute a block of code as long as a condition remains true<br>Do-while loop - used when we want to execute a block of code at least once and repeat it as long as a condition remains true')

INSERT INTO users (keyword, response)
Values ('object','Object-Oriented Programming is about organizing your problem-solving into objects. An object is an in-memory data structure that combines state and behavior into a usable and useful abstraction. In other words, objects are a collection of variables and methods that make your job easier.&&&Objects make your job easier in several ways: &&&They''re modular<br>Breaking your programming into objects allows you to section off your code into pieces. You can treat these pieces as a mini-program that you can test and write separately from other parts of your application. This makes it easier to think about and plan each part of the whole.&&&They hide information<br>Most people frown upon hidden information, but in programming, it''s a good thing. Objects are used through their methods and other parts of the program that use the object don''t know, or want to know, how the object''s methods are actually coded. It doesn''t matter how getLargestNumber() is implemented; what matters is that it produces the largest number. In fact, you might find a much faster algorithm to solve getLargestNumber() and can replace all the code in it whenever you want. As long as it takes an int[] and returns a int, you can change the code within that method all day long. &&&They make it easy to reuse code<br>If you build your code using objects, reusing that code becomes easy - simply create another object. Because objects are build to be modular and handle just one small function of your application, that makes them very useful for many different purposes.&&&They are pluggable and testable<br>Because the objects are accessible via very defined methods, testing the object is just a matter of calling those methods and making sure they''re doing what you expect them to do. It is also easier to swap out one object for another in your application. To do so, write another object that has the same method signatures. Then, you have a drop-in replacement for what was already there.')

INSERT INTO users (keyword, response)
Values ('class','A class is a grouping of variables and methods in a source code file that generates objects. It''s important to know what a class is before you begin writing classes and using objects. A class is to an object like a blueprint is to a house. A class defines what an object will be like once the object is created.')

INSERT INTO users (keyword, response)
Values ('stack','When an application runs, there is a memory space set up for it called the Stack. The Stack is a set amount of memory that stores some of the basic values. When you create a new int, the system knows to reserve exactly 4 bytes (32 bits) of space for it.')

INSERT INTO users (keyword, response)
Values ('heap','The Heap is the memory space where arrays and objects go. How do you know it if an item is stored in the Heap? Because of the "new" operator. That''s the operator that reserves a new hunk of memory on the Heap. <br><br>So, an array is created on the Heap and then the memory address of it is stored in the variable numbers on the Stack. When you use the variable numbers in your code, it holds a memory address only. Then, you have to tell it to go over to the array in the Heap using either the dot operator (.) or brackets ([]).<br><br>So all variables live on the Stack, but their values might not.')

INSERT INTO users (keyword, response)
Values ('stack vs heap','Data types that keep their values on the Stack, like int and double, are called primitives or value types. <br><br>Data types that keep their values on the Heap, like arrays and objects, are called reference types.')

INSERT INTO users (keyword, response)
Values ('stack versus heap','Data types that keep their values on the Stack, like int and double, are called primitives or value types. <br><br>Data types that keep their values on the Heap, like arrays and objects, are called reference types.')

INSERT INTO users (keyword, response)
Values ('heap vs stack','Data types that keep their values on the Stack, like int and double, are called primitives or value types. <br><br>Data types that keep their values on the Heap, like arrays and objects, are called reference types.')

INSERT INTO users (keyword, response)
Values ('heap versus stack','Data types that keep their values on the Stack, like int and double, are called primitives or value types. <br><br>Data types that keep their values on the Heap, like arrays and objects, are called reference types.')

INSERT INTO users (keyword, response)
Values ('lists','The list is by far the most popular collection type used in the C# language. Like an array, a list serves as a general purpose type-safe collection, which allows it to manage any data type. Also, like an array, the values are accessed by index. What differentiates lists from arrays is the methods provided to manipulate the state of the collection.')

INSERT INTO users (keyword, response)
Values ('stack','Stacks are last-in, first-out data structures (LIFO). The idea with stacks is that you can push items onto a stack and pop them off from the top first. It might be easy to visualize a stack of pancakes. You can pile them as high as you want, but you always eat the last pancake added to the stack on the top. &&&Stacks are most often used when applications need to implement an undo feature. All of the actions the user performs are added to a stack. When the user decides to undo an operation, the most recent action is popped off the top of the stack.')

INSERT INTO users (keyword, response)
Values ('queue','Queues follow a First-In First-Out(FIFO). Each customer to the deli counter receives a number that indicates the order their request was received. As a request is processed, the employee calls for the next customer.&&&Queues are used when there''s a need for a system that manages a group of objects in the order requests are received.<br><br>1. A print queue prints documents in the order requests are made.<br>2.A Call Center phone system uses a queue to hold customers in the order they call. Service representatives take the call of the person on hold the longest.')

INSERT INTO users (keyword, response)
Values ('big o','As a programmer, your goal is to write code generically without hard-coding it to fixed collection sizes. Sometimes your solution takes 1s to execute with 1 item; sometimes it takes 10s to run with 100 items. You may not mean to, but the code you write can inadvertently create a new problem that causes the algorithm time to go up by a factor of n, n², or 2ⁿ.This is important so that you can identify a worst-case scenario when looking at your program''s algorithms.<br><br>This way of measuring algorithm complexity is called Big-O Notation.')

INSERT INTO users (keyword, response)
Values ('big-o','As a programmer, your goal is to write code generically without hard-coding it to fixed collection sizes. Sometimes your solution takes 1s to execute with 1 item; sometimes it takes 10s to run with 100 items. You may not mean to, but the code you write can inadvertently create a new problem that causes the algorithm time to go up by a factor of n, n², or 2ⁿ.This is important so that you can identify a worst-case scenario when looking at your program''s algorithms.<br><br>This way of measuring algorithm complexity is called Big-O Notation.')

INSERT INTO users (keyword, response)
Values ('algorithmic complexity','As a programmer, your goal is to write code generically without hard-coding it to fixed collection sizes. Sometimes your solution takes 1s to execute with 1 item; sometimes it takes 10s to run with 100 items. You may not mean to, but the code you write can inadvertently create a new problem that causes the algorithm time to go up by a factor of n, n², or 2ⁿ.This is important so that you can identify a worst-case scenario when looking at your program''s algorithms.<br><br>This way of measuring algorithm complexity is called Big-O Notation.')

INSERT INTO users (keyword, response)
Values ('dictionary','Arrays are fast for reading data. If you know your index, the time it takes to access the value is O(1). Linked lists are fast for inserting and removing data.<br><br>Neither are suitable when you need to quickly search for data. Because we don''t know what index holds the item we seek, we need to traverse the entire collection in a worst-case scenario.<br><br>The dictionary offers a distinct advantage over arrays and lists. Dictionaries are comprised of key/value pairs, similar to the way that arrays use indexes to locate a value. With arrays you are not allowed to defined your index and dictionaries provide you the ability to create a key of any type.')

INSERT INTO users (keyword, response)
Values ('dictionaries','Arrays are fast for reading data. If you know your index, the time it takes to access the value is O(1). Linked lists are fast for inserting and removing data.<br><br>Neither are suitable when you need to quickly search for data. Because we don''t know what index holds the item we seek, we need to traverse the entire collection in a worst-case scenario.<br><br>The dictionary offers a distinct advantage over arrays and lists. Dictionaries are comprised of key/value pairs, similar to the way that arrays use indexes to locate a value. With arrays you are not allowed to defined your index and dictionaries provide you the ability to create a key of any type.')

INSERT INTO users (keyword, response)
Values ('sets','A set is a collection that holds unique values, similar to a list, but in a way that allows you to easily and quickly determine if the object already exists in the set. In C#, it is called a hash set. <br><br>Sets don''t use indexes to store values. Instead, they hold hashcodes, which are numbers computed from the values you want to store.')

INSERT INTO users (keyword, response)
Values ('hash set','A set is a collection that holds unique values, similar to a list, but in a way that allows you to easily and quickly determine if the object already exists in the set. In C#, it is called a hash set. <br><br>Sets don''t use indexes to store values. Instead, they hold hashcodes, which are numbers computed from the values you want to store.')

INSERT INTO users (keyword, response)
Values ('constructor','A constructor is a special method of a class that initializes an object of that type. It is pretty easy to spot a constructor. All constructors have the same name as the class that they are in.')

INSERT INTO users (keyword, response)
Values ('access modifier','Access modifiers are used to control visbility to methods and properties to the rest of our program.The keywords public and private are two of the most common access modifiers in the C# language.')

INSERT INTO users (keyword, response)
Values ('overload','If we want to provide users of our class different options when they instantiate new objects or invoke our methods we can create an overloaded method or overloaded constructor.<br><br>As a programmer when you overload a method or constructor, you add flexibility to your class so that users can leverage different inputs when interacting with it.')

INSERT INTO users (keyword, response)
Values ('OOP','OBJECT ORIENTED PROGRAMMING PRINCIPALS:&&&ENCAPSULATION:<br>Breaking your programming into objects allows you to section off your code into pieces. You can treat these pieces as a mini-program that you can test and write separately from other parts of your application. This makes it easier to think about and plan each part of the whole.It also makes these pieces easier to reuse.&&&INHERITANCE<br>Another of our OOP principles is Inheritance, the act of having one class adopt the properties and methods of another class. This prevents code duplication and allows us to share code across classes while having the source code live in only one class file.&&&POLYMORPHISM<br>The word polymorphism, derived from the Greek language, means "the ability to have multiple forms".<br><br>In object-oriented programming, polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as.<br><br>This specifically allows variables and objects to take on more than one form.')

INSERT INTO users (keyword, response)
Values ('OOP principals','OBJECT ORIENTED PROGRAMMING PRINCIPALS:&&&ENCAPSULATION:<br>Breaking your programming into objects allows you to section off your code into pieces. You can treat these pieces as a mini-program that you can test and write separately from other parts of your application. This makes it easier to think about and plan each part of the whole.It also makes these pieces easier to reuse.&&&INHERITANCE<br>Another of our OOP principles is Inheritance, the act of having one class adopt the properties and methods of another class. This prevents code duplication and allows us to share code across classes while having the source code live in only one class file.&&&POLYMORPHISM<br>The word polymorphism, derived from the Greek language, means "the ability to have multiple forms".<br><br>In object-oriented programming, polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as.<br><br>This specifically allows variables and objects to take on more than one form.')

INSERT INTO users (keyword, response)
Values ('object oriented programming','OBJECT ORIENTED PROGRAMMING PRINCIPALS:&&&ENCAPSULATION:<br>Breaking your programming into objects allows you to section off your code into pieces. You can treat these pieces as a mini-program that you can test and write separately from other parts of your application. This makes it easier to think about and plan each part of the whole.It also makes these pieces easier to reuse.&&&INHERITANCE<br>Another of our OOP principles is Inheritance, the act of having one class adopt the properties and methods of another class. This prevents code duplication and allows us to share code across classes while having the source code live in only one class file.&&&POLYMORPHISM<br>The word polymorphism, derived from the Greek language, means "the ability to have multiple forms".<br><br>In object-oriented programming, polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as.<br><br>This specifically allows variables and objects to take on more than one form.')

INSERT INTO users (keyword, response)
Values ('principals','OBJECT ORIENTED PROGRAMMING PRINCIPALS:&&&ENCAPSULATION:<br>Breaking your programming into objects allows you to section off your code into pieces. You can treat these pieces as a mini-program that you can test and write separately from other parts of your application. This makes it easier to think about and plan each part of the whole.It also makes these pieces easier to reuse.&&&INHERITANCE<br>Another of our OOP principles is Inheritance, the act of having one class adopt the properties and methods of another class. This prevents code duplication and allows us to share code across classes while having the source code live in only one class file.&&&POLYMORPHISM<br>The word polymorphism, derived from the Greek language, means "the ability to have multiple forms".<br><br>In object-oriented programming, polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as.<br><br>This specifically allows variables and objects to take on more than one form.')

INSERT INTO users (keyword, response)
Values ('unit test','UNIT TESTING is a level of software testing where individual units/components of a software are tested. The purpose is to validate that each unit of the software performs as designed. A unit is the smallest testable part of any software. It usually has one or a few inputs and usually a single output')

INSERT INTO users (keyword, response)
Values ('manual test','Manual testing uses the application like a regular user would. Types data into input boxes, clicks on the buttons, etc.')

INSERT INTO users (keyword, response)
Values ('automated test','Automated tests write and run scripts using a tool that mimics what a user would do. It’s much faster than manual testing, especially for regression testing.')

INSERT INTO users (keyword, response)
Values ('exploratory test','Doesn''t follow any kind of script. Just tries things. Looks for missing features or room for improvement. Allows for creativity.')

INSERT INTO users (keyword, response)
Values ('regression','Regression testing validates that existing functionality still works. Can be automated or manual.')

INSERT INTO users (keyword, response)
Values ('integration testing','This is a test in the code. It tests that one piece of code returns data as expected to another piece of code (more on this in a later chapter).')

INSERT INTO users (keyword, response)
Values ('cookie','Cookies are data, stored in small text files, on your computer. When a web server has sent a web page to a browser, the connection is shut down, and the server forgets everything about the user.<br><br>Cookies were invented to solve the problem "how to remember information about the user". When a user visits a web page, his/her name can be stored in a cookie. Next time the user visits the page, the cookie "remembers" his/her name')

INSERT INTO users (keyword, response)
Values ('json','JSON is short for JavaScript Object Notation, and is a way to store information in an organized, easy-to-access manner. In a nutshell, it gives us a human-readable collection of data that we can access in a really logical manner.')

INSERT INTO users (keyword, response)
Values ('xml','XML stands for eXtensible Markup Language. XML plays an important role in many different IT systems. XML is often used for distributing data over the Internet. It is important for all web developers to have a good understanding of XML')

INSERT INTO users (keyword, response)
Values ('dom','The Document Object Model (DOM) is an internal data structure that browsers use to represent the structure and content of a web page. When the browser loads an HTML document, it needs to translate that into something that it can use to draw a graphical representation of the page.')


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
Values ('Hello', 'Howdy! How can I help?')

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



















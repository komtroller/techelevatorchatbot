

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

 
--- QUOTES
INSERT INTO motivationalquotes (quote)
Values ('"Nothing is impossible, the word itself says I''m possible!" &&& - Audrey Hepburn')

INSERT INTO motivationalquotes (quote)
Values ('"The journey of a thousand miles begins with a single step." &&& - Lao Tzu')

INSERT INTO motivationalquotes (quote)
Values ('"Do not follow where the path may lead. &&& Go instead where there is no path and leave a trail." &&& - Ralph Waldo Emerson')

INSERT INTO motivationalquotes (quote)
Values ('"Bite off more than you can chew, then chew it." &&& - Ella Williams')

INSERT INTO motivationalquotes (quote)
Values ('"Life is 10% what happens to you &&& and 90% how you react to it." &&& - Charles R. Swindoll')

INSERT INTO motivationalquotes (quote)
Values ('"The secret of getting ahead is getting started." &&& - Mark Twain')

INSERT INTO motivationalquotes (quote)
Values ('"Do not let your difficulties fill you with anxiety, &&& after all, it is only in the darkest nights that &&& the stars shine more brilliantly." &&& - Ali Bin Abitaleb')

INSERT INTO motivationalquotes (quote)
Values ('"Look up at the stars and not down at your feet. &&& Try to make sense of what you see, &&& and wonder about what makes the universe exist. &&& Be curious." &&& - Stephen Hawking')

INSERT INTO motivationalquotes (quote)
Values ('"If you can dream it, you can do it." &&& - Walt Disney')

INSERT INTO motivationalquotes (quote)
Values ('"If you''re walking down the right path &&& and you''re willing to keep walking, &&& eventually you''ll make progress." &&& - Barak H. Obama')



--Hi there. Welcome to our site. Is there anything I can help you with

--- GREETINGS AND NATURAL LANGUAGE UNDERSTANDING 
INSERT INTO users (keyword, response)
Values ('How are you', 'I am good thank you! How can I help you?')

INSERT INTO users (keyword, response)
Values ('HELP', 'I can help you. Please insert a question or a topic of interest.')

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
Values ('Alexa','Cute! That is not my name though')

INSERT INTO users (keyword, response)
Values ('Yo','Yoyoyo, How can I help?')

INSERT INTO users (keyword, response)
Values ('Ciao','Ciao, Thank you for visiting our site?')

INSERT INTO users (keyword, response)
Values ('Can you help me?','I sure can! Let us getting started. What would you like to ask?')

INSERT INTO users (keyword, response)
Values ('Answer me','I am just a chatbot! I can display answers but you know I can not actually talk!')

INSERT INTO users (keyword, response)
Values ('Who are you?','I am a chatbot!')

INSERT INTO users (keyword, response)
Values ('John Fulton','He is awesome, we all know that!')

INSERT INTO users (keyword, response)
Values ('about you','Best coding bootcamp in the Midwest!')

INSERT INTO users (keyword, response)
Values ('tech elevator','I was born at Rev1 in December of 2019!')

INSERT INTO users (keyword, response)
Values ('unknown','Sorry, I don''t understand. &&& Try wording your question differently.')

INSERT INTO users (keyword, response)
Values ('quote','Inspirational quote should be here...but it isnt!')


--- PATHWAY COMMANDS

INSERT INTO users (keyword, response)
Values ('Cover letter','You might or might not need one. It really depends on the industyr culture. Please, find the link below <a href="https://zety.com/blog/how-to-write-a-cover-letter">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Resume', 'Please, find the link below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('CV', 'Please, find the link below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Curriculum Vitae', 'Please, find the link below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Job', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Jobs', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('how get job', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('work', 'If you are looking for a job. Here is a link that might help <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Hired', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Hiring', 'You need help getting hired. Here is a link that might help <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Interview Questions', 'Sample Questions include Tell us about yourself? Accomplishments? Strengths? Weaknesses? Find more in this link <a href="https://www.monster.com/career-advice/article/100-potential-interview-questions">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Interview sample', 'Sample Questions include Tell us about yourself? Accomplishments? Strengths? Weaknesses? Find more in this link <a href="https://www.monster.com/career-advice/article/100-potential-interview-questions">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Networking', 'I would advise you to join a meetup group related to your field and interests, and also netowork on LinkedIn">Netowrk Tips</a>')

INSERT INTO users (keyword, response)
Values ('Network', 'I would advise you to join a meetup group related to your field and interests, and also netowork on LinkedIn">Network Tips</a>')

INSERT INTO users (keyword, response)
Values ('Recruiter', 'There are many way to contact a recruiter,I would advise you to go to join a meetup related to your field, and also netowork on LinkedIn. I strongly advise you to add a note with every request to connect with someone on LinkedIn">Network Tips</a>')

INSERT INTO users (keyword, response)
Values ('Recruiters', 'There are many way to contact recruiters,I would advise you to go to join a meetup related to your field, and also netowork on LinkedIn. I strongly advise you to add a note with every request to connect with someone on LinkedIn">Network Tips</a>')

INSERT INTO users (keyword, response)
Values ('Wear', 'Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Outfit', 'It depends on the organization. Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('dresscode', 'Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Interview fashion', 'Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Casual', 'If the company has a casual dresscode, you still you want to wear professional, or business, attire for the interview, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Salary expectations', 'I would use websites such as glassdoor, Payscale or linkedIn to give you a better idea of industry standards based on your experiance, hope that helps!')

INSERT INTO users (keyword, response)
Values ('Starmethod', 'The STAR interview response is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('STAR', 'The STAR interview response techniquean is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('Open opportunities','You can search based for job opennings based on your field in LinkedIn.com or Indeed.com. Use the different filters such as location or industry type for more accurate results.')

INSERT INTO users (keyword, response)
Values ('Open job opportunities', 'You can search based for job opennings based on your field in LinkedIn.com or Indeed.com. Use the different filters such as location or industry type for more accurate results.')

INSERT INTO users (keyword, response)
Values ('job opportunity', 'You can search based for job opennings based on your field in LinkedIn.com or Indeed.com. Use the different filters such as location or industry type for more accurate results.')

INSERT INTO users (keyword, response)
Values ('advice prepare job', 'Research the company and the indivuals. LinkedIn should help with that. Have a few hard copies of your resume or portfolio. Get ready ahead of time,get to the location 30 minutes earlier,get to the office 10m minutes before your meeting. Stay calm, be humble and confident. Regardless of the outcome, send a follow up thank you email within 24hrs. Remember: What is yours is yours!')

INSERT INTO users (keyword, response)
Values ('applying jobs','Check out these tips from Glassdoor before you apply to any job <a href="https://www.glassdoor.com/blog/5-applying-job/">https://www.glassdoor.com/blog/5-applying-job/</a>')

INSERT INTO users (keyword, response)
Values ('arrays','An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.For a single dimensional array, an analogy I have used before is to think of it as a row of boxes. Each box can store a single value but each value must be of the same type. Hope that helps!')

INSERT INTO users (keyword, response)
Values ('mvc','MVC stands for Model (Business logic), View (Presenatation logic), and Controller (Interacts with model to get data for View). MVC is a popular way of organizing your code. Each section of your code has a purpose, and those purposes are different.Here is a more detailed link <a href="https://www.codecademy.com/articles/mvc">https://www.codecademy.com/articles/mvc </a>')

INSERT INTO users (keyword, response)
Values ('job posting', '?')

INSERT INTO users (keyword, response)
Values ('listing', '?')

INSERT INTO users (keyword, response)
Values ('posting', '?')

INSERT INTO users (keyword, response)
Values ('job listing', '?')

INSERT INTO users (keyword, response)
Values ('job position', '?')

INSERT INTO users (keyword, response)
Values ('job opening', '?')

INSERT INTO users (keyword, response)
Values ('position', '?')





--learning sql

INSERT INTO users (keyword, response)
Values ('New project MSSQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('project MSSQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('create new project SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('create project SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('create new project SQL microsoft','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('tutorial SQL','Here is my favorite tutorial on SQL <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud</a>')

INSERT INTO users (keyword, response)
Values (' tutorial mySQL','Here is my favorite tutorial on SQL <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud</a>')

INSERT INTO users (keyword, response)
Values ('Beginners SQL','Here is my favorite tutorial on SQL <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud</a>')

INSERT INTO users (keyword, response)
Values ('sql','SQL is a standard language for storing, manipulating and retrieving data in databases.Check this link out for more information <a href="https://www.w3schools.com/sql/default.asp">https://www.w3schools.com/sql/default.asp</a>')

INSERT INTO users (keyword, response)
Values ('sql commands','Check out this link for SQL commands<a href="https://www.codecademy.com/articles/sql-commands">https://www.codecademy.com/articles/sql-commands</a>')

INSERT INTO users (keyword, response)
Values ('what sql commands','Check out this link for SQL commands<a href="https://www.codecademy.com/articles/sql-commands">https://www.codecademy.com/articles/sql-commands</a>')


INSERT INTO users (keyword, response)
Values ('mssql commands','Check out this link for SQL commands<a href="https://www.codecademy.com/articles/sql-commands">https://www.codecademy.com/articles/sql-commands</a>')


--how to start new projets VISUAL STUDIO OR VISUAL STUDIO CODE 

INSERT INTO users (keyword, response)
Values ('New project','I can help you.Can you specificy what program will you be using for your project. Ex (new project in visual studio,new project in Javascript')

INSERT INTO users (keyword, response)
Values ('New project in Visual Studio','<a href="https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019">https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019</a>')

INSERT INTO users (keyword, response)
Values ('New project Visual Studio Microsoft','<a href="https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019">https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019</a>')

INSERT INTO users (keyword, response)
Values ('New project Visual Studio Code Microsoft','<a href="https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>">https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>')

INSERT INTO users (keyword, response)
Values ('New project Visual Studio Code','<a href="https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>">https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>')

--LEARNING C#

INSERT INTO users (keyword, response)
Values ( 'c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ( 'c# introduction','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ('C# TUTORIAL','<a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">https://www.youtube.com/watch?v=gfkTfcpWqAY</a>')

INSERT INTO users (keyword, response)
Values ( 'help c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ( 'c# explain','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ('C# study','<a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">https://www.youtube.com/watch?v=gfkTfcpWqAY</a>')


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


--- QUOTES
INSERT INTO motivationalquotes (quote)
Values ('"Nothing is impossible, &&& the word itself says Im possible!" &&& - Audrey Hepburn')

INSERT INTO motivationalquotes (quote)
Values ('"The journey of a thousand miles &&& begins with a single step." &&& - Lao Tzu')

INSERT INTO motivationalquotes (quote)
Values ('"Do not follow where the path may lead. &&& Go instead where there is no path and leave a trail." &&& - Ralph Waldo Emerson')

INSERT INTO motivationalquotes (quote)
Values ('"Bite off more than you can chew, then chew it." &&& - Ella Williams')

INSERT INTO motivationalquotes (quote)
Values ('"Life is 10% what happens to you and 90% how you react to it." &&& - Charles R. Swindoll')

INSERT INTO motivationalquotes (quote)
Values ('"The secret of getting ahead is getting started." &&& - Mark Twain')

INSERT INTO motivationalquotes (quote)
Values ('"Do not let your difficulties fill you with anxiety, &&& after all, it is only in the darkest nights &&& that the stars shine more brilliantly." &&& - Ali Bin Abitaleb ')

INSERT INTO motivationalquotes (quote)
Values ('"Look up at the stars and not down at your feet. &&& Try to make sense of what you see, &&& and wonder about what makes the universe exist. &&& Be curious." &&& - Stephen Hawking ')

INSERT INTO motivationalquotes (quote)
Values ('"If you can dream it, you can do it." &&& - Walt Disney ')

INSERT INTO motivationalquotes (quote)
Values ('"If you''re walking down the right path &&& and you''re willing to keep walking, &&& eventually you''ll make progress." - Barak H. Obama ')

--Hi there. Welcome to our site. Is there anything I can help you with

--- GREETINGS AND NATURAL LANGUAGE UNDERSTANDING 
INSERT INTO users (keyword, response)
Values ('How are you', 'I am good thank you! How can I help you?')

INSERT INTO users (keyword, response)
Values ('HELP', 'I can help you. Please insert a question or a topic of interest.')

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
Values ('Can you help me?','I sure can!Let us getting started. What would you like to ask?')

INSERT INTO users (keyword, response)
Values ('Answer me','I am just a chatbot!I can display answers but you know I can not actually talk!')

INSERT INTO users (keyword, response)
Values ('Who are you?','I am a chatbot!')

INSERT INTO users (keyword, response)
Values ('John Fulton','He is awesome, we all know that!')

INSERT INTO users (keyword, response)
Values ('about you','Best coding bootcamp in the Midwest!')

INSERT INTO users (keyword, response)
Values ('tech elevator','I was born at Rev1 in December of 2019!')



--- PATHWAY COMMANDS

INSERT INTO users (keyword, response)
Values ('Cover letter','You might or might not need one. It really depends on the industyr culture. Please, find the link below <a href="https://zety.com/blog/how-to-write-a-cover-letter">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Resume', 'Please, find the link below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('CV', 'Please, find the link below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Curriculum Vitae', 'Please, find the link below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Job', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Jobs', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('how get job', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('work', 'If you are looking for a job. Here is a link that might help <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Hired', 'Please, find the link below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Hiring', 'You need help getting hired. Here is a link that might help <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Interview Questions', 'Sample Questions include Tell us about yourself? Accomplishments? Strengths? Weaknesses? Find more in this link <a href="https://www.monster.com/career-advice/article/100-potential-interview-questions">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Interview sample', 'Sample Questions include Tell us about yourself? Accomplishments? Strengths? Weaknesses? Find more in this link <a href="https://www.monster.com/career-advice/article/100-potential-interview-questions">Here is a link to that!</a>')

INSERT INTO users (keyword, response)
Values ('Networking', 'I would advise you to join a meetup group related to your field and interests, and also netowork on LinkedIn">Netowrk Tips</a>')

INSERT INTO users (keyword, response)
Values ('Network', 'I would advise you to join a meetup group related to your field and interests, and also netowork on LinkedIn">Network Tips</a>')

INSERT INTO users (keyword, response)
Values ('Recruiter', 'There are many way to contact a recruiter,I would advise you to go to join a meetup related to your field, and also netowork on LinkedIn. I strongly advise you to add a note with every request to connect with someone on LinkedIn">Network Tips</a>')

INSERT INTO users (keyword, response)
Values ('Recruiters', 'There are many way to contact recruiters,I would advise you to go to join a meetup related to your field, and also netowork on LinkedIn. I strongly advise you to add a note with every request to connect with someone on LinkedIn">Network Tips</a>')

INSERT INTO users (keyword, response)
Values ('Wear', 'Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Outfit', 'It depends on the organization. Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('dresscode', 'Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Interview fashion', 'Generally, you want to wear professional, or business, attire, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Casual', 'If the company has a casual dresscode, you still you want to wear professional, or business, attire for the interview, here is more information <a href="https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364">https://www.thebalancecareers.com/best-interview-attire-for-every-type-of-interview-2061364</a>')

INSERT INTO users (keyword, response)
Values ('Salary expectations', 'I would use websites such as glassdoor, Payscale or linkedIn to give you a better idea of industry standards based on your experiance, hope that helps!')

INSERT INTO users (keyword, response)
Values ('Starmethod', 'The STAR interview response is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('STAR', 'The STAR interview response techniquean is an interview behavioral question. Using this method of answering interview questions allows you to provide concrete examples or proof that you possess the experience and skills for the job at hand. STAR stands for Situation, Task, Action, Result') 

INSERT INTO users (keyword, response)
Values ('Open opportunities','You can search based for job opennings based on your field in LinkedIn.com or Indeed.com. Use the different filters such as location or industry type for more accurate results.')

INSERT INTO users (keyword, response)
Values ('Open job opportunities', 'You can search based for job opennings based on your field in LinkedIn.com or Indeed.com. Use the different filters such as location or industry type for more accurate results.')

INSERT INTO users (keyword, response)
Values ('job opportunity', 'You can search based for job opennings based on your field in LinkedIn.com or Indeed.com. Use the different filters such as location or industry type for more accurate results.')

INSERT INTO users (keyword, response)
Values ('advice prepare job', 'Research the company and the indivuals. LinkedIn should help with that. Have a few hard copies of your resume or portfolio. Get ready ahead of time,get to the location 30 minutes earlier,get to the office 10m minutes before your meeting. Stay calm, be humble and confident. Regardless of the outcome, send a follow up thank you email within 24hrs. Remember: What is yours is yours!')

INSERT INTO users (keyword, response)
Values ('applying jobs','Check out these tips from Glassdoor before you apply to any job <a href="https://www.glassdoor.com/blog/5-applying-job/">https://www.glassdoor.com/blog/5-applying-job/</a>')

INSERT INTO users (keyword, response)
Values ('arrays','An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.For a single dimensional array, an analogy I have used before is to think of it as a row of boxes. Each box can store a single value but each value must be of the same type. Hope that helps!')

INSERT INTO users (keyword, response)
Values ('mvc','MVC stands for Model (Business logic), View (Presenatation logic), and Controller (Interacts with model to get data for View). MVC is a popular way of organizing your code. Each section of your code has a purpose, and those purposes are different.Here is a more detailed link <a href="https://www.codecademy.com/articles/mvc">https://www.codecademy.com/articles/mvc </a>')

--learning sql

INSERT INTO users (keyword, response)
Values ('New project MSSQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('project MSSQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('create new project SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('create project SQL','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('create new project SQL microsoft','<a href="https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15">https://docs.microsoft.com/en-us/sql/ssms/solution/create-a-project?view=sql-server-ver15</a>')

INSERT INTO users (keyword, response)
Values ('tutorial SQL','Here is my favorite tutorial on SQL <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud</a>')

INSERT INTO users (keyword, response)
Values (' tutorial mySQL','Here is my favorite tutorial on SQL <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud</a>')

INSERT INTO users (keyword, response)
Values ('Beginners SQL','Here is my favorite tutorial on SQL <a href="https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud">https://www.youtube.com/watch?v=7S_tz1z_5bA&list=PLTjRvDozrdlynYXGUfyyMZdrQ0Sz27aud</a>')

INSERT INTO users (keyword, response)
Values ('sql','SQL is a standard language for storing, manipulating and retrieving data in databases.Check this link out for more information <a href="https://www.w3schools.com/sql/default.asp">https://www.w3schools.com/sql/default.asp</a>')

INSERT INTO users (keyword, response)
Values ('sql commands','Check out this link for SQL commands<a href="https://www.codecademy.com/articles/sql-commands">https://www.codecademy.com/articles/sql-commands</a>')

INSERT INTO users (keyword, response)
Values ('what sql commands','Check out this link for SQL commands<a href="https://www.codecademy.com/articles/sql-commands">https://www.codecademy.com/articles/sql-commands</a>')


INSERT INTO users (keyword, response)
Values ('mssql commands','Check out this link for SQL commands<a href="https://www.codecademy.com/articles/sql-commands">https://www.codecademy.com/articles/sql-commands</a>')


--how to start new projets VISUAL STUDIO OR VISUAL STUDIO CODE 

INSERT INTO users (keyword, response)
Values ('New project','I can help you.Can you specificy what program will you be using for your project. Ex (new project in visual studio,new project in Javascript')

INSERT INTO users (keyword, response)
Values ('New project in Visual Studio','<a href="https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019">https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019</a>')

INSERT INTO users (keyword, response)
Values ('New project Visual Studio Microsoft','<a href="https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019">https://docs.microsoft.com/en-us/visualstudio/ide/create-new-project?view=vs-2019</a>')

INSERT INTO users (keyword, response)
Values ('New project Visual Studio Code Microsoft','<a href="https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>">https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>')

INSERT INTO users (keyword, response)
Values ('New project Visual Studio Code','<a href="https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>">https://docs.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code</a>')

--LEARNING C#

INSERT INTO users (keyword, response)
Values ( 'c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ( 'c# introduction','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ('C# TUTORIAL','<a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">https://www.youtube.com/watch?v=gfkTfcpWqAY</a>')

INSERT INTO users (keyword, response)
Values ( 'help c#','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ( 'c# explain','<a href="https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>">https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/</a>')

INSERT INTO users (keyword, response)
Values ('C# study','<a href="https://www.youtube.com/watch?v=gfkTfcpWqAY</a>">https://www.youtube.com/watch?v=gfkTfcpWqAY</a>')




COMMIT TRANSACTION;










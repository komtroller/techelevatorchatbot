
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





INSERT INTO users (keyword, response)
Values ('How are you', 'I am good thank you! How can I help you?')


INSERT INTO users (keyword, response)
Values ('HELP', 'I can help you. Please insert a question or a topic of interest.')

--- PATHWAY COMMANDS

INSERT INTO users (keyword, response)
Values ('Cover letter', 'Please, find the links below <a href="https://zety.com/blog/how-to-write-a-cover-letter">https://zety.com/blog/how-to-write-a-cover-letter</a>')

INSERT INTO users (keyword, response)
Values ('Resume', 'Please, find the links below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">https://www.thebalancecareers.com/entry-level-resume-template-2063602</a>')

INSERT INTO users (keyword, response)
Values ('CV', 'Please, find the links below <a href="https://www.thebalancecareers.com/entry-level-resume-template-2063602">https://www.thebalancecareers.com/entry-level-resume-template-2063602</a>')

INSERT INTO users (keyword, response)
Values ('Job', 'Please, find the links below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">https://www.glassdoor.com/blog/guide/how-to-get-a-job/</a>')

INSERT INTO users (keyword, response)
Values ('Hired', 'Please, find the links below <a href="https://www.glassdoor.com/blog/guide/how-to-get-a-job/">https://www.glassdoor.com/blog/guide/how-to-get-a-job/</a>')



INSERT INTO users (keyword, response)
Values ('Interview Questions', 'Sample Questions: Tell us about yourself? Accomplishments? Strengths? Weaknesses? Find more in this link <a href="https://www.monster.com/career-advice/article/100-potential-interview-questions">https://www.monster.com/career-advice/article/100-potential-interview-questions</a>')
INSERT INTO users (keyword, response)
Values ('Unknown', 'Im sorry. I dont understand what youre asking. Type help to get a list of clear commands')

COMMIT TRANSACTION;






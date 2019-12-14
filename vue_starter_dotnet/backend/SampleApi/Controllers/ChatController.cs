using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SampleApi.DAL;

namespace SampleApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ChatController : ControllerBase
    {
        IChatbotDAO chatDAO;
        public ChatController(IChatbotDAO chatDAO)
        {
            this.chatDAO = chatDAO;
        }

        [HttpGet("{userInput}", Name = "Get")]
        public string Index(string userInput)
        {
            string botResponse = "";
            if (userInput.Contains("$"))
            {
                userInput = userInput.Replace("$", "#");
            }
            if (userInput.Contains("~"))
            {
                userInput = userInput.Replace("~", "/");
            }

            string keyword = chatDAO.GetKeyword(userInput);
            //to get more quotes
            if (keyword == "quote")
            {
                botResponse = chatDAO.GetQuote();
                botResponse += ". Enter qo to get a new quote.";
            }
            //to get more interview questions
            else if (keyword == "interview questions" || keyword == "int")
            {
                botResponse = chatDAO.GetInterviewQuestion();
                botResponse += ". Enter int to get another question";
            }
            //job is based on a list of a series of values related to job in DB called mykeywords
            else if (keyword=="job")
            {
                string jobDisplay = chatDAO.GetJobTitle(userInput);
                string[] jobArray = jobDisplay.Split(" ");
                string jobTitle = String.Join("+",jobArray);
                //target to open a new tab
                string jobPostingURL = $"https://www.indeed.com/jobs?q={jobTitle}&l=Columbus,+OH";
                botResponse = $"Here's a link to some <a href=\"{jobPostingURL}\" target=\"_blank\">{jobDisplay} job postings</a> in Columbus";
            }
            //event is based on a list of a series of values related to events in DB called mykeywords
            else if (keyword=="event") 
            {
                botResponse = chatDAO.GetEvents();
            }
            else if (keyword.Contains("company"))
            {
                
                string companyInfoURL = $"https://www.glassdoor.com/Reviews/index.htm";
                //target to open a new tab
                botResponse = $"Here's a link to glassdoor that may help <a href=\"{companyInfoURL}\" target=\"_blank\">Glassdoor link</a>";
            }
            else
            {
                botResponse = chatDAO.GetBotResponse(userInput);
            }
            return botResponse;
        }
    }
}
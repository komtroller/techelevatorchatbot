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
            if (keyword.Contains("quote") || keyword.Contains("inspir"))
            {
                botResponse = chatDAO.GetQuote();
                botResponse += "&&& You can enter 'quote' to get another quote if you'd like";
            }
            //to get more interview questions
            else if (keyword == "interview question" || keyword == "sample question" || keyword == "iq")
            {
                botResponse = chatDAO.GetInterviewQuestion();
                botResponse += "Enter 'IQ' to get another interview question";
            }
            else if (keyword.Contains("technical") || keyword=="tq" || keyword == "technical questions" || keyword == "technical question")
            {
                botResponse = chatDAO.GetTechnicalInterviewQuestion();
                botResponse += "Enter 'TQ' to get another technical interview question";
            }
            else if (keyword.Contains("posting")|| keyword.Contains("listing") || keyword.Contains("opening") || keyword.Contains("position"))
            {
                string jobDisplay = chatDAO.GetJobTitle(userInput);
                string[] jobArray = jobDisplay.Split(" ");
                string jobTitle = String.Join("+",jobArray);
                //target to open a new tab
                string jobPostingURL = $"https://www.indeed.com/jobs?q={jobTitle}&l=Columbus,+OH";
                botResponse = $"Here's a link to some <a href=\"{jobPostingURL}\" target=\"_blank\">{jobDisplay} job postings</a> in Columbus";
            }
            //event is based on a list of a series of values related to events in DB called mykeywords
            else if (keyword.Contains("event") || keyword.Contains("meetup") || keyword == "pathway meetings" || keyword == "pathway events") 
            {
                botResponse = "Here is a list of upcoming events during the next 7 days: ";
                botResponse += chatDAO.GetEvents();
            }
            else if (keyword.Contains("company"))
            {
                botResponse = chatDAO.GetCompanyInfo(userInput);
            }
            else
            {
                botResponse = chatDAO.GetBotResponse(keyword);
            }
            return botResponse;
        }
    }
}
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
            string response = chatDAO.GetBotResponse(keyword);
            //to get more quotes
            if (response == "quote")
            {
                botResponse = "Here's your inspirational quote: &&&";
                botResponse += chatDAO.GetQuote();
                botResponse += "&&& You can enter 'quote' to get another quote if you'd like";
            }
            //to get more interview questions
            else if (response == "interview question")
            {
                botResponse = "Here's your interview question: &&&";
                botResponse += chatDAO.GetInterviewQuestion();
                botResponse += "&&& You can enter 'IQ' to get another interview question";
            }
            else if (response == "technical question")
            {
                botResponse = "Here's your technical interview question: &&&";
                botResponse += chatDAO.GetTechnicalInterviewQuestion();
                botResponse += " &&& You can enter 'TQ' to get another technical interview question";
            }
            else if (response == "job postings")
            {
                string jobDisplay = chatDAO.GetJobTitle(userInput);
                string[] jobArray = jobDisplay.Split(" ");
                string jobTitle = String.Join("+",jobArray);
                //target to open a new tab
                string jobPostingURL = $"https://www.indeed.com/jobs?q={jobTitle}&l=Columbus,+OH";
                botResponse = $"Here's a link to some <a href=\"{jobPostingURL}\" target=\"_blank\">{jobDisplay} job postings</a> in Columbus";
            }
            //event is based on a list of a series of values related to events in DB called mykeywords
            else if (response == "events")
            {
                botResponse = "Here is a list of upcoming events during the next 7 days: &&&";
                botResponse += chatDAO.GetEvents();
            }
            else if (response == "company info")
            {
                botResponse = chatDAO.GetCompanyInfo(userInput);
            }
            else
            {
                botResponse = response;
            }
            return botResponse;
        }
    }
}
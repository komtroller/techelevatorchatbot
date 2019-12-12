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
            if (keyword == "quote")
            {
                botResponse = chatDAO.GetQuote();
            }
            else if (keyword == "interview questions")
            {
                botResponse = chatDAO.GetInterviewQuestion();
            }
            else if (keyword.Contains("position")|| keyword.Contains("listing") || keyword.Contains("posting") || keyword.Contains("opening"))
            {
                string jobDisplay = chatDAO.GetJobTitle(userInput);
                string[] jobArray = jobDisplay.Split(" ");
                string jobTitle = String.Join("+",jobArray);
                string jobPostingURL = $"https://www.indeed.com/jobs?q={jobTitle}&l=Columbus,+OH";
                botResponse = $"Here's a link to some <a href={jobPostingURL} target=_blank>{jobDisplay} job postings</a> in Columbus";
            }
            else if (keyword.Contains("event") || keyword.Contains("meetup")) 
            {
                botResponse = chatDAO.GetEvents();
            }
            else
            {
                botResponse = chatDAO.GetBotResponse(keyword);
            }
            return botResponse;
        }
    }
}
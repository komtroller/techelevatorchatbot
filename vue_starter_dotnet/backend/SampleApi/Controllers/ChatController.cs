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
            string botResponse = "The quote functionality is currently in progress.";
            string keyword = chatDAO.GetKeyword(userInput);
            if (keyword == "quote")
            {
                botResponse = chatDAO.GetQuote();
            }
            else if (keyword == "interview questions")
            {
                botResponse = chatDAO.GetInterviewQuestion();
            }
            else
            {
                botResponse = chatDAO.GetBotResponse(keyword);
            }
            return botResponse;
        }
    }
}
using SampleApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SampleApi.DAL
{
    public interface IChatbotDAO { 

        string GetKeyword(string userInput); 

        string GetBotResponse(string keyword);

        string GetQuote();

        string GetInterviewQuestion();
    }
}

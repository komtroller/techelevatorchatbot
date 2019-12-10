using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;

namespace WebApplication.Web.Controllers
{
    [Route("api/chat")]
    [ApiController]
    public class ChatController : HomeController
    {
        IChatbotDAO chatDAO;
        public ChatController(IChatbotDAO chatDAO)
        {
            this.chatDAO = chatDAO;
        }

        [HttpGet("{keyword}", Name = "Get")]
        public ActionResult<Input> Index(string keyword)
        {
            Input input = chatDAO.GetMessage(keyword);
            if (input != null)
            {
                return input;
            }

            return NotFound();
        }
    }
}
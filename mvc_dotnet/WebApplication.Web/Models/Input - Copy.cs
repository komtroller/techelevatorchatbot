using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class Input
    {
        internal string Author;

        public int Id { get; set; }
        public string Keyword { get; set; }
        public string Response { get; set; }
        public string Quote { get; internal set; }
    }
}

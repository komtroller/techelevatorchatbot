using SampleApi.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace SampleApi.DAL
{
    ///<Summary>
    /// Gets the answer
    ///</Summary>
    public class ChatbotDAO : IChatbotDAO
    {
        public string connectionString;

        public ChatbotDAO(string connectionString)
        {

            this.connectionString = connectionString;
        }

        public string GetKeyword(string userInput)
        {
            string userInputToLower = userInput.ToLower();
            string matchingKeyword = "unknown";
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    //look through records with the table mykeywords 
                    SqlCommand cmd = new SqlCommand("Select keywords, keyword from mykeywords", conn);
                    
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string keywords = Convert.ToString(reader["keywords"]).ToLower();
                        //Concatnate and ADD leading and trailing space to match a full word
                        if (keywords.Contains(" " + userInputToLower +" "))
                        {
                            matchingKeyword = Convert.ToString(reader["keyword"]);
                            break;
                        }
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }
            return matchingKeyword;
        }

        public string GetBotResponse(string keyword)
        {
            string response = "";
            string unknownResponse = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {

             
                    conn.Open();

                    //get all and filter by keyword
                    SqlCommand cmd = new SqlCommand("Select keyword, response from users", conn);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string keywordTemp = Convert.ToString(reader["keyword"]).ToLower();

                        if(keywordTemp == "unknown")
                        {
                            unknownResponse = Convert.ToString(reader["response"]);
                        }
                        //
                        if (keyword.Contains(keywordTemp))
                        {
                            response = Convert.ToString(reader["response"]);
                            break;
                        }
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }
            //if keyword was not found ..response so empty therefore - return unknown otherwise return response
            return string.IsNullOrEmpty(response) ? unknownResponse : response;
        }

        public string GetQuote()
        {
            string randomQuote = "This quote is inspirational.";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT TOP 1 quote FROM motivationalquotes ORDER BY NEWID()", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        randomQuote = Convert.ToString(reader["quote"]);
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }

            return randomQuote;

        }

        public string GetInterviewQuestion()
        {
            string randomQuestion = "Oops...looks like we're out of interview questions.";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT TOP 1 question FROM interview_questions ORDER BY NEWID()", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        randomQuestion = Convert.ToString(reader["question"]);
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }

            return randomQuestion;

        }

        public string GetJobTitle(string userInput)
        {
            string matchingJobTitle = "Junior Developer";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("Select position from positions ORDER BY len(position) desc", conn);
                    //cmd.Parameters.AddWithValue("@keyword", userInput);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string position = Convert.ToString(reader["position"]).ToLower();
                        if (userInput.ToLower().Contains(position))
                        {
                            matchingJobTitle = position;
                            break;

                        }
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }

            return matchingJobTitle;

        }

        public string GetEvents()
        {
            List<string> Events = new List<string>();
            string today = DateTime.Today.ToShortDateString();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {


                    conn.Open();


                    SqlCommand cmd = new SqlCommand($"SELECT eventDescription FROM upcomingevents Where DATEDIFF(dayofyear, '{today}', dateOfEvent) < 8 AND DATEDIFF(dayofyear, '{today}', dateOfEvent) > 0", conn);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string eventListing = Convert.ToString(reader["eventDescription"]);
                        Events.Add(eventListing);
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }

            string events = String.Join(" &&& ", Events);


            return events;
        }
    }
}


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

        //GetKeyword checks the user's input to see if it contains any keywords from the DB. 
        //If it does, it returns that keyword, otherwise it returns "unknown"
        public string GetKeyword(string userInput)
        {
            string userInputToLower = userInput.ToLower();
            string matchingKeyword = "unknown";
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    //SQL is sorted by length, so that longer keywords are checked first, as they are more specific
                    SqlCommand cmd = new SqlCommand("Select keyword from users ORDER BY len(keyword) desc", conn);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string keyword = Convert.ToString(reader["keyword"]).ToLower();
                        if (userInput.ToLower().Contains(keyword))
                        {
                            matchingKeyword = keyword;
                            break;
                        }
                    }
                }
            }

            catch (SqlException ex)
            {

            }
            return matchingKeyword;
        }

        //GetBotResponse takes in a keyword and returns the response associated with that keyword
        public string GetBotResponse(string keyword)
        {
            string response = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {


                    conn.Open();


                    SqlCommand cmd = new SqlCommand("Select * from users where keyword = @keyword; ", conn);
                    cmd.Parameters.AddWithValue("@keyword", keyword);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        response = Convert.ToString(reader["response"]);
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.Write(ex.Message);
            }

            return response;
        }

        //GetQuote pulls a randome quote from the db. 
        public string GetQuote()
        {
            string randomQuote = "This quote is inspirational.";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    //ORDER BY NEWID() selects a random entry
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

        //GetInterviewQuestion randomly selects one entry from the interview_question table
        public string GetInterviewQuestion()
        {
            string randomQuestion = "Oops...looks like we're out of interview questions.";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    //ORDER BY NEWID() selects a random entry
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

        //GetTechnicalInterviewQuestion selects one random entry for the tech_questions table
        public string GetTechnicalInterviewQuestion()
        {
            string randomQuestion = "Oops...looks like we're out of interview questions.";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    //ORDER BY NEWID() selects a random entry
                    SqlCommand cmd = new SqlCommand("SELECT TOP 1 question FROM tech_questions ORDER BY NEWID()", conn);
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

        //GetJobTitle checks to see if the user input contains any of the job titles included in the position DB.
        //If it doesn't, the default value (Junior Developer) is returned
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

        //GetEvents returns a string containing all the events listed in 
        //the upcomingevents table that occur within 7 days from now
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

        //Checks to see if the user input contains any of the companies listed in the co_information db, then pulls the associated info for that company;
        //If no company is found, it returns "I'm sorry, I don't have any information for that company."
        public string GetCompanyInfo(string userInput)
        {
            string userInputToLower = userInput.ToLower();
            string companyInfo = "I'm sorry, I don't have any information for that company.";
            List<string> companyInfoList = new List<string>();
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM co_information", conn);
                    //cmd.Parameters.AddWithValue("@keyword", userInput);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string companyName = Convert.ToString(reader["company"]).ToLower();
                        if (userInput.ToLower().Contains(companyName))
                        {
                            companyName = "Company: " + Convert.ToString(reader["company"]);
                            string companyLocation = "Location: " + Convert.ToString(reader["location"]);
                            string teGradsPlaced = "Tech Elevator Grads Placed: " + Convert.ToString(reader["grads_placed"]);
                            string teGradNames = "LinkedIn Profiles of Grads Placed: <a href=" + Convert.ToString(reader["linkedin"])+ "> Click Here </a>";
                            string numberOfEmployees = "Number of Total Employees: " + Convert.ToString(reader["employee_no"]);
                            string GlassDoorRating = "Glassdoor Rating: " + Convert.ToString(reader["rating"]);
                            companyInfoList.Add(companyName);
                            companyInfoList.Add(companyLocation);
                            companyInfoList.Add(teGradsPlaced);
                            companyInfoList.Add(teGradNames);
                            companyInfoList.Add(numberOfEmployees);
                            companyInfoList.Add(GlassDoorRating);
                            companyInfo = String.Join(" &&& ", companyInfoList);
                            break;
                        }
                    }
                }
            }

            catch (SqlException ex)
            {

            }
            return companyInfo;
        }
    }
}


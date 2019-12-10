using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public class ChatbotDAO : IChatbotDAO
    {
        public string connectionString;

        public ChatbotDAO(string connectionString)
        {

            this.connectionString = connectionString;
        }

        public Input GetMessage(string keyword)
        {
            Input inputs = new Input();

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
                        inputs.Keyword = Convert.ToString(reader["keyword"]);
                        inputs.Response = Convert.ToString(reader["response"]);
                    }
                }
            }

            catch (SqlException ex)
            {
                inputs = new Input();              

            }

            return inputs;

        }

    }
}

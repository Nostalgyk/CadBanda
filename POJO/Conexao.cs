using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POJO
{
    public class Conexao
    {
        private static string strCon = "server=127.0.0.1;user=root;password='';database=csharp";

        public static MySqlConnection ConectarDB()
        {
            MySqlConnection c = new MySqlConnection(strCon);
            c.Open();
            return c;
        }

    }
}

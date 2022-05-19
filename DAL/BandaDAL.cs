using MySqlConnector;
using POJO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class BandaDAL : ICadastro<Banda>
    {
        public bool Alterar(Banda banda)
        {
            return false;
        }

        public bool Excluir(Banda banda)
        {
            return false;
        }

        public bool Inserir(Banda banda)
        {
            MySqlCommand comando = new MySqlCommand("INSERT INTO Banda(Descricao, Cidade, Uf, Vocalista) " +
                                                    "VALUES (@Descricao, @Cidade, @Uf, @Vocalista)", Conexao.ConectarDB());

            comando.Parameters.AddWithValue("@Descricao", banda.Descricao);
            comando.Parameters.AddWithValue("@Cidade", banda.Cidade);
            comando.Parameters.AddWithValue("@Uf", banda.UF);
            comando.Parameters.AddWithValue("@Vocalista", banda.Vocalista);

            MySqlDataReader dr = comando.ExecuteReader();


            return false;
        }

        public List<Banda> Listar()
        {
            return null;
        }
    }
}

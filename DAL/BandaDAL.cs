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
            MySqlCommand comando = new MySqlCommand("UPDATE Banda SET Descricao = @Descricao, Cidade = @Cidade, " +
                                                    "Uf = @Uf, Vocalista = @Vocalista", Conexao.ConectarDB());

            comando.Parameters.AddWithValue("@Descricao", banda.Descricao);
            comando.Parameters.AddWithValue("@Cidade", banda.Cidade);
            comando.Parameters.AddWithValue("@Uf", banda.UF);
            comando.Parameters.AddWithValue("@Vocalista", banda.Vocalista);

            MySqlDataReader dr = comando.ExecuteReader();
            return dr.RecordsAffected > 0;
        }

        public bool Excluir(Banda banda)
        {
            MySqlCommand comando = new MySqlCommand("DELETE FROM Banda WHERE CodBanda = @CodBanda", Conexao.ConectarDB());

            comando.Parameters.AddWithValue("@CodBanda", banda.CodBanda);

            MySqlDataReader dr = comando.ExecuteReader();
            return dr.RecordsAffected > 0;
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
            return dr.RecordsAffected > 0;
        }

        public List<Banda> Listar()
        {
            return null;
        }
    }
}

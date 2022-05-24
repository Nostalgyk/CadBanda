using DAL;
using POJO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BandaBll : ICadastro<Banda>
    {
        public bool Alterar(Banda banda)
        {
            BandaDAL bdl = new BandaDAL();
            return bdl.Alterar(banda);
        }

        public bool Excluir(Banda banda)
        {
            BandaDAL bdl = new BandaDAL();
            return bdl.Excluir(banda);
        }

        public bool Inserir(Banda banda)
        {
            BandaDAL bdl = new BandaDAL();
            return bdl.Inserir(banda);
        }

        public List<Banda> Listar()
        {
            BandaDAL bdl = new BandaDAL();
            return bdl.Listar();
        }
    }
}

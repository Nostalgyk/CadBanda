using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POJO
{
    public interface ICadastro<T>
    {
        bool Inserir(T banda);
        bool Alterar(T banda);
        bool Excluir(T banda);
        List<T> Listar();
    }
}

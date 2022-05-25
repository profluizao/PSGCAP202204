using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public abstract class CampoPadronizado02 : CampoPadronizado01 
    {
        protected string descricao;

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }

        public CampoPadronizado02(int codigo, string descricao) : base(codigo)
        {
            this.descricao = descricao;
        }
    }
}

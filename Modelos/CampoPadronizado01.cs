using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public abstract class CampoPadronizado01
    {
        protected int codigo;

        public int Codigo
        { 
            get { return codigo; }
            set { codigo = value; }
        }

        public CampoPadronizado01(int cod)
        { 
            this.Codigo = cod;
        }
    }
}

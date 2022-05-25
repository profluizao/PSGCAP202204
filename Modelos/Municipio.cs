using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public class Municipio : CampoPadronizado02
    {
		private int codigoUF;
		private string siglaUF;
		private int codigoMesoregiao;
		private int codigoMicroregiao;
		private int codigoIBGE6;
		private int codigoIBGE7;
		private long populacaoMunicipio;
        private string porteMunicipio;
		private long cep;

        public int CodigoUF { get => codigoUF; set => codigoUF = value; }

        public string SiglaUF { get => siglaUF; set => siglaUF = value; }

        public int CodigoMesoregiao { get => codigoMesoregiao; set => codigoMesoregiao = value; }

        public int CodigoMicroregiao { get => codigoMicroregiao; set => codigoMicroregiao = value; }

        public int CodigoIBGE6 { get => codigoIBGE6; set => codigoIBGE6 = value; }

        public int CodigoIBGE7 { get => codigoIBGE7; set => codigoIBGE7 = value; }

        public long PopulacaoMunicipio { get => populacaoMunicipio; set => populacaoMunicipio = value; }

        public long Cep { get => cep; set => cep = value; }

        public string PorteMunicipio { get => porteMunicipio; set => porteMunicipio = value; }

        public Municipio(int codigo, string descricao, int codigoUF, string siglaUF, 
            int codigoMesoregiao, int codigoMicroregiao, int codigoIBGE6, int codigoIBGE7, 
            long populacaoMunicipio, string porte, long cep) 
            : base(codigo, descricao)
        {
            this.codigoUF = codigoUF;
            this.siglaUF = siglaUF;
            this.codigoMesoregiao = codigoMesoregiao;
            this.codigoMicroregiao = codigoMicroregiao;
            this.codigoIBGE6 = codigoIBGE6;
            this.codigoIBGE7 = codigoIBGE7;
            this.populacaoMunicipio = populacaoMunicipio;
            this.porteMunicipio = porte;
            this.cep = cep;
        }
    }
}

using FakeDB.IBGE;
using Modelos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapWinApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void HelloWorldBtn_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Oi pessoal!!!");

        }

        private void CarregarEstadosBtn_Click(object sender, EventArgs e)
        {
            EstadosLbx.Items.Clear();
            foreach (Estado est in EstadoFakeFB.Estados)
            {
                EstadosLbx.Items.Add(new object[] 
                { 
                    est.Codigo,
                    est.Descricao,
                    est.SiglaUF,
                    est.RegiaoBrasil
                });
            }
        }
    }
}

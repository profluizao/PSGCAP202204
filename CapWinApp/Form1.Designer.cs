namespace CapWinApp
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.HelloWorldBtn = new System.Windows.Forms.Button();
            this.EstadosLbx = new System.Windows.Forms.ListBox();
            this.CarregarEstadosBtn = new System.Windows.Forms.Button();
            this.EstadosLvw = new System.Windows.Forms.ListView();
            this.SuspendLayout();
            // 
            // HelloWorldBtn
            // 
            this.HelloWorldBtn.Location = new System.Drawing.Point(13, 13);
            this.HelloWorldBtn.Name = "HelloWorldBtn";
            this.HelloWorldBtn.Size = new System.Drawing.Size(75, 23);
            this.HelloWorldBtn.TabIndex = 0;
            this.HelloWorldBtn.Text = "Clique aqui";
            this.HelloWorldBtn.UseVisualStyleBackColor = true;
            this.HelloWorldBtn.Click += new System.EventHandler(this.HelloWorldBtn_Click);
            // 
            // EstadosLbx
            // 
            this.EstadosLbx.FormattingEnabled = true;
            this.EstadosLbx.Location = new System.Drawing.Point(12, 72);
            this.EstadosLbx.Name = "EstadosLbx";
            this.EstadosLbx.Size = new System.Drawing.Size(775, 95);
            this.EstadosLbx.TabIndex = 1;
            // 
            // CarregarEstadosBtn
            // 
            this.CarregarEstadosBtn.Location = new System.Drawing.Point(12, 43);
            this.CarregarEstadosBtn.Name = "CarregarEstadosBtn";
            this.CarregarEstadosBtn.Size = new System.Drawing.Size(120, 23);
            this.CarregarEstadosBtn.TabIndex = 2;
            this.CarregarEstadosBtn.Text = "Carregar Estados";
            this.CarregarEstadosBtn.UseVisualStyleBackColor = true;
            this.CarregarEstadosBtn.Click += new System.EventHandler(this.CarregarEstadosBtn_Click);
            // 
            // EstadosLvw
            // 
            this.EstadosLvw.HideSelection = false;
            this.EstadosLvw.Location = new System.Drawing.Point(12, 174);
            this.EstadosLvw.Name = "EstadosLvw";
            this.EstadosLvw.Size = new System.Drawing.Size(775, 97);
            this.EstadosLvw.TabIndex = 3;
            this.EstadosLvw.UseCompatibleStateImageBehavior = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.EstadosLvw);
            this.Controls.Add(this.CarregarEstadosBtn);
            this.Controls.Add(this.EstadosLbx);
            this.Controls.Add(this.HelloWorldBtn);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button HelloWorldBtn;
        private System.Windows.Forms.ListBox EstadosLbx;
        private System.Windows.Forms.Button CarregarEstadosBtn;
        private System.Windows.Forms.ListView EstadosLvw;
    }
}


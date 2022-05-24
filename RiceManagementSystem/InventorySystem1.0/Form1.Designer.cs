namespace RiceManagementSystem._0
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.ts_stocks = new System.Windows.Forms.ToolStripButton();
            this.ts_ManageUsers = new System.Windows.Forms.ToolStripButton();
            this.ts_settings = new System.Windows.Forms.ToolStripButton();
            this.ts_Login = new System.Windows.Forms.ToolStripButton();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // statusStrip1
            // 
            this.statusStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.statusStrip1.Location = new System.Drawing.Point(0, 833);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Padding = new System.Windows.Forms.Padding(2, 0, 21, 0);
            this.statusStrip1.Size = new System.Drawing.Size(1482, 22);
            this.statusStrip1.TabIndex = 1;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStrip1
            // 
            this.toolStrip1.BackColor = System.Drawing.Color.DarkCyan;
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(50, 35);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ts_stocks,
            this.ts_ManageUsers,
            this.ts_settings,
            this.ts_Login});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Padding = new System.Windows.Forms.Padding(0, 0, 3, 0);
            this.toolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.toolStrip1.Size = new System.Drawing.Size(1482, 75);
            this.toolStrip1.TabIndex = 0;
            this.toolStrip1.Text = "toolStrip1";
            this.toolStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.toolStrip1_ItemClicked);
            // 
            // ts_stocks
            // 
            this.ts_stocks.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ts_stocks.Image = ((System.Drawing.Image)(resources.GetObject("ts_stocks.Image")));
            this.ts_stocks.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ts_stocks.Name = "ts_stocks";
            this.ts_stocks.Size = new System.Drawing.Size(70, 70);
            this.ts_stocks.Text = "Sales";
            this.ts_stocks.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.ts_stocks.Click += new System.EventHandler(this.ts_stocks_Click);
            // 
            // ts_ManageUsers
            // 
            this.ts_ManageUsers.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ts_ManageUsers.Image = ((System.Drawing.Image)(resources.GetObject("ts_ManageUsers.Image")));
            this.ts_ManageUsers.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ts_ManageUsers.Name = "ts_ManageUsers";
            this.ts_ManageUsers.Size = new System.Drawing.Size(164, 70);
            this.ts_ManageUsers.Text = "Manage Users";
            this.ts_ManageUsers.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.ts_ManageUsers.Click += new System.EventHandler(this.ts_ManageUsers_Click);
            // 
            // ts_settings
            // 
            this.ts_settings.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ts_settings.Image = ((System.Drawing.Image)(resources.GetObject("ts_settings.Image")));
            this.ts_settings.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ts_settings.Name = "ts_settings";
            this.ts_settings.Size = new System.Drawing.Size(101, 70);
            this.ts_settings.Text = "Settings";
            this.ts_settings.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.ts_settings.Click += new System.EventHandler(this.ts_settings_Click);
            // 
            // ts_Login
            // 
            this.ts_Login.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ts_Login.Image = global::RiceManagementSystem._0.Properties.Resources.login;
            this.ts_Login.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ts_Login.Name = "ts_Login";
            this.ts_Login.Size = new System.Drawing.Size(75, 70);
            this.ts_Login.Text = "Login";
            this.ts_Login.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.ts_Login.Click += new System.EventHandler(this.ts_Login_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::RiceManagementSystem._0.Properties.Resources.background;
            this.ClientSize = new System.Drawing.Size(1482, 855);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.toolStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.IsMdiContainer = true;
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Rice Management System";
            this.TransparencyKey = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton ts_stocks;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripButton ts_ManageUsers;
        private System.Windows.Forms.ToolStripButton ts_Login;
        private System.Windows.Forms.ToolStripButton ts_settings;
    }
}


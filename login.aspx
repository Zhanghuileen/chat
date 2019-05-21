<%@ Page Language="c#"%>
<script type="text/javascript" runat="server">
    protected void btnLogin_Click(object sender, EventArgs e){
        bool IsChonfu = false;
        if (this.txtUsername.Text.Trim().Length < 1){
            lblTs.Visible = true;
        }else{
            string UserIp = Request.UserHostAddress.ToString();
            Session["User"] = this.txtUsername.Text.Trim();
            string UserInfo = this.txtUsername.Text.Trim();
            ArrayList UserList;
           
            if (Application["UserList"] == null){
                UserList = new ArrayList();
                UserList.Add(UserInfo);
                Application["UserList"] = UserList;
                Response.Redirect("frame.aspx");
            }else{          
                UserList = (ArrayList)Application["UserList"];
                
                for (int i = 0; i <UserList.Count; i++){
                    if (UserInfo==UserList[i].ToString()){
                        IsChonfu = true;
                    }else{
                        IsChonfu = false;
                    }
                }
                if (IsChonfu==false){
                    UserList.Add(UserInfo);
                }
                Application["UserList"] = UserList;
                Response.Redirect("frame.aspx");
            }
        }
    }
</script>
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
         <div style="text-align:center">
            <br />
            <center>登录</center>
            <br/>
            <br />
            昵称：<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>&nbsp;
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登 录" Width="69px" />
            <asp:Label ID="lblTs" runat="server" ForeColor="Red" Height="13px" Text="昵称太短" Visible="false" Width="112px"></asp:Label>
            <br />
        </div>
 
    </form>
</body>

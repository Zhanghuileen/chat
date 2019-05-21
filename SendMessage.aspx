<%@ Page Language="c#"%>
<script type="text/javascript" runat="server">
 protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("login.aspx");
        }
 
    }
    protected void btnSend_Click1(object sender, EventArgs e)
    {
        ArrayList MessageList = new ArrayList();
        string SendUser = Session["User"].ToString();
        string SendMessage = this.txtMessage.Text;
        string SendTime = DateTime.Now.ToString();
        String str = dropDownList.SelectedItem.Text;
        string Message = SendUser + str + "说：" + SendMessage + "&nbsp;&nbsp;&nbsp;[" +SendTime + "]<br><br>";
        if (Application["MessageList"] == null)
        {
            MessageList.Add(Message);
            Application["MessageList"] = MessageList;
        }
        else
        {
            MessageList = (ArrayList)Application["MessageList"];
            MessageList.Add(Message);
            Application["MessageList"] = MessageList;
        }
        this.txtMessage.Text = "";
        this.txtMessage.Focus();
    }

</script>
<html>
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
           <div align="center">
                <asp:DropDownList ID="dropDownList" runat="server">
                <asp:ListItem>开心地</asp:ListItem>
                <asp:ListItem>快乐地</asp:ListItem>
                <asp:ListItem>悲伤地</asp:ListItem>
                <asp:ListItem>高兴地</asp:ListItem>
                <asp:ListItem>叹口气</asp:ListItem>  
                </asp:DropDownList>
                <asp:TextBox ID="txtMessage" runat="server" Height="25px" Width="596px"></asp:TextBox>
                <asp:Button ID="btnSend" runat="server" Height="25px" Text="立 即 发 送" Width="97px" OnClick="btnSend_Click1" />
                <br />
            </div>
    </form>
</body>
</html>
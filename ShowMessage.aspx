<%@ Page Language="c#"%>
<script type="text/javascript" runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

</script>
<head runat="server">

</head>
<body>
    <script>setTimeout("location.href='ShowMessage.aspx'",2000)</script>
    <form id="form1" runat="server">
        <div>
                    <%
                ArrayList MessageList = new ArrayList();
                if(Application["MessageList"]==null)
                {
                    Response.Write("暂无聊天信息");
                }
                else
                {
                    MessageList = (ArrayList)Application["MessageList"];
                    for(int i=0;i<MessageList.Count; i++)
                    {
                        Response.Write(MessageList[i]);
                    }
                }
                    %>
        </div>
     </form>
</body>

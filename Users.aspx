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
<html>
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><span>用户列表</center><br/>
                <br/>
                <%  
                    ArrayList UserList = new ArrayList();
                    if(Application["UserList"]==null)
                    {
                        Response.Write("暂无用户");
                    }
                    else
                    {
                        UserList = (ArrayList)Application["UserList"];
                        for(int i = 0; i < UserList.Count; i++)
                        {
                            Response.Write(UserList[i] + "<br><br>");
                        }
                    }
                    %>
            </span>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
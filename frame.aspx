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
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>聊天室主页</title>
<style type="text/css">
#iframe1{
    left:0px;
    width:990px;
    height:500px;
}
#iframe2{
    right:0px;
    height:500px;
}
#iframe3{
    bottom:0px;
    width:1300px;
    height:100px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div1">
            <iframe id="iframe1" src="ShowMessage.aspx"></iframe> 
            <iframe id="iframe2" src="Users.aspx"></iframe>
            <iframe id="iframe3" src="SendMessage.aspx"></iframe>
        </div>
    </form>
</body>
</html>

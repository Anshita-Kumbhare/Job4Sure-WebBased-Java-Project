<%
    response.addHeader("Pragma","no-Cache");
    response.addHeader("Cache-Control","no-Store");
    response.setHeader("Pragma","no-Cache");
    response.setHeader("Cache-Control","no-Store");
    String value=(String)session.getAttribute("session1");
    if(value==null)
    {
        response.sendRedirect("home.jsp");
    }
    if(session==null)
    {
        response.sendRedirect("home.jsp");
    }
%>
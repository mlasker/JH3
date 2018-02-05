<%@page import="java.util.ArrayList"%>
<%@page import="Utils.LinerUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    ServletContext sc = getServletContext();
    String path = sc.getRealPath("/WEB-INF");
    path += System.getProperty("file.separator") + "lines.txt";
    LinerUtility lu = new LinerUtility(path);
      

    ArrayList<String> oneLiners = new ArrayList();
    int linerCounter = 0;
    
    oneLiners = lu.getLines();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <form method="POST" action="oneLiners.jsp">
        
        <%= oneLiners.get(linerCounter++) %></br>
        <input type="submit" value="Next Line">
    </form>
</html>

<%@page import="Utils.MortgageUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%  
    String w = request.getParameter("interest");
    String x = request.getParameter("payment");
    String y = request.getParameter("principal");
    String z = request.getParameter("term");
    
    MortgageUtility mu = new MortgageUtility(w, x, y, z); 
    
    String test = mu.doIt();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%=  test %>
    </body>
</html>

<%
    int logout=0;
    if(request.getParameter("logout")!=null){
        logout=Integer.parseInt(request.getParameter("logout"));
    }
    if(session != null && session.getAttribute("adminName") != null && logout==1){
        session.invalidate();
    }
%>
<%@ include file="connection.jsp" %>  
<%
    String adminUsername=request.getParameter("adminUsername");
    String adminPassword=request.getParameter("adminPassword");

    String adminName=null;
    int adminId=0;
    String errors="";
    try{
        String sql;
        Statement st=con.createStatement();
        sql="SELECT * FROM admin where username='"+adminUsername+"' and password='"+adminPassword+"'";
        ResultSet rs=st.executeQuery(sql);
        if(rs.first()){
            adminId=rs.getInt("id");
            adminName=rs.getString("name"); 
        }else{
            errors+="Wrong username or password entered<br>";
        }
        st.close(); 
        con.close();
    }catch(Exception e){
        errors+="Error during fetching data<br>"+e+"<br>";
    }
    if(!errors.equals("")){
        out.println("<br><div style='color:red;border-radius:10px; border:1px solid red; padding:20px; margin:10px; text-align: center;'>"+errors+"</div><br>");
        request.getRequestDispatcher("adminLogin.jsp").include(request, response);  
        return;
    }else{
        session.setAttribute("adminName",adminName);
        session.setAttribute("adminId",adminId);
        request.getRequestDispatcher("adminPage.jsp").include(request, response);
    }

%>
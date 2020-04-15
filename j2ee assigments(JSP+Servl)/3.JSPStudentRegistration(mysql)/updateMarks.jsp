<%
    //checking for unauthorized access
    if(session == null || session.getAttribute("adminName") == null ){
        request.getRequestDispatcher("index.jsp").include(request, response); 
    }
    int id=0;
    int paper1=0;
    int paper2=0;
    int paper3=0;
    int paper4=0;
    int paper5=0;
%>
<%@ include file="connection.jsp" %>
<% 
    id=Integer.parseInt(request.getParameter("id"));
    paper1=Integer.parseInt(request.getParameter("paper1"));
    paper2=Integer.parseInt(request.getParameter("paper2"));
    paper3=Integer.parseInt(request.getParameter("paper3"));
    paper4=Integer.parseInt(request.getParameter("paper4"));
    paper5=Integer.parseInt(request.getParameter("paper5"));
    String sql=null;
    String errors="";
    try{
        sql="update marks set paper1="+paper1+",paper2="+paper2+",paper3="+paper3+",paper4="+paper4+",paper5="+paper5+" where stud_id="+id+"";
        Statement st=con.createStatement();  
        int i=st.executeUpdate(sql);
        if(i==1){
            out.println("<div style='color:green; border:1px solid green; border-radius:10px; padding:20px; margin:20px; text-align:center;'>");
            out.println("<p>Marks Edited Successfully</p></div>");
            out.println("<br><br><a style='font-size: 20px;' href='editMarks.jsp'>Go Back</a>");
        }else{
            errors+="Not added some error occured! try again!";
        }
        st.close();
        con.close();
    }catch(Exception e){
        errors+="Not added some error occured! try again!";
    }
    if(!errors.equals("")){
        out.println("<div style='color:red; border:1px solid red; border-radius:10px; padding:20px; margin:20px; text-align:center;'>");
        out.println("<p>"+errors+"</p></div>");
        out.println("<br><br><a style='font-size: 20px;' href='editMarks.jsp'>Go Back</a>");
    }
%>

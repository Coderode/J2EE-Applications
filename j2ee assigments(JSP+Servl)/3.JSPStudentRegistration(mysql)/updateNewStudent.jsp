<%
    //checking for unauthorized access
    if(session == null || session.getAttribute("adminName") == null ){
        request.getRequestDispatcher("index.jsp").include(request, response); 
    }
    int id=0;
    String name="";
    String email="";
    String phone="";
    String address="";
    int paper1=0;
    int paper2=0;
    int paper3=0;
    int paper4=0;
    int paper5=0;
    
%>
<%@ include file="connection.jsp" %>
<% 
    id=Integer.parseInt(request.getParameter("id"));
    name=request.getParameter("name");
    email=String.valueOf(request.getParameter("email"));
    phone=String.valueOf(request.getParameter("phone"));
    address=request.getParameter("address");
    paper1=Integer.parseInt(request.getParameter("paper1"));
    paper2=Integer.parseInt(request.getParameter("paper2"));
    paper3=Integer.parseInt(request.getParameter("paper3"));
    paper4=Integer.parseInt(request.getParameter("paper4"));
    paper5=Integer.parseInt(request.getParameter("paper5"));
    String sql=null;
    String errors="";
    try{
        //checking for aleardy exist or not
        Statement st=con.createStatement();
        sql="select * from student where id='"+id+"'";
        ResultSet rs = st.executeQuery(sql);
        if(rs.first()){
            errors+="already exist try another<br>";
        }else{
            st.close();

            sql="insert into student values(?,?,?,?,?)";
            PreparedStatement pst=con.prepareStatement(sql);  
            pst.setInt(1,id);
            pst.setString(2,name);
            pst.setString(3,email);
            pst.setString(4,phone);
            pst.setString(5,address);
            int i1=pst.executeUpdate();  
            sql="insert into marks values(?,?,?,?,?,?)";
            PreparedStatement pst2=con.prepareStatement(sql);
            pst2.setInt(1,id);
            pst2.setInt(2,paper1);
            pst2.setInt(3,paper2);
            pst2.setInt(4,paper3);
            pst2.setInt(5,paper4);
            pst2.setInt(6,paper5);
            int i2=pst2.executeUpdate();

            pst.close();
            pst2.close();
            con.close();
            if(i1==1 && i2==1){
                out.println("<div style='color:green; border:1px solid green; border-radius:10px; padding:20px; margin:20px; text-align:center;'>");
                out.println("<p>New Student added Successfully to database</p></div>");
                out.println("<br><br><a style='font-size: 20px;' href='addNewStudent.jsp'>Go Back</a>");
            }else{
                errors+="Not added some error occured! try again!";
            }
        }
    }catch(Exception e){
        errors+="Not added some error occured! try again!";
    }
    if(!errors.equals("")){
        out.println("<div style='color:red; border:1px solid red; border-radius:10px; padding:20px; margin:20px; text-align:center;'>");
        out.println("<p>"+errors+"</p></div>");
        out.println("<br><br><a style='font-size: 20px;' href='addNewStudent.jsp'>Go Back</a>");
    }
%>
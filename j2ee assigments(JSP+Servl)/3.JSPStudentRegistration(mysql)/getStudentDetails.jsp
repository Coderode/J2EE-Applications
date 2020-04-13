<% 
    int studentId=Integer.parseInt(request.getParameter("studentId"));
    String studentName=request.getParameter("studentName");
    String email=null;
    String phone=null;
    String address=null;
    int marks[]=new int[5];
    int total=0;
    String result="Pass";
    boolean found=true;
    String error="";
    
    try{
        String sql;
        Statement st=con.createStatement();

        sql="SELECT * FROM student where id='"+studentId+"' and name='"+studentName+"'";
        ResultSet rs1=st.executeQuery(sql);
        if(rs1.first()){
            email=rs1.getString("email");
            phone=rs1.getString("phone");
            address=rs1.getString("address");
            sql = "SELECT * FROM marks where stud_id='"+studentId+"'";
            ResultSet rs2 = st.executeQuery(sql);
            if(rs2.first()){
                marks[0]=rs2.getInt("paper1");
                marks[1]=rs2.getInt("paper2");
                marks[2]=rs2.getInt("paper3");
                marks[3]=rs2.getInt("paper4");
                marks[4]=rs2.getInt("paper5");
            }else{
                error+="error during fetching marks<br>";
                found=false;
            }
        }else{
            error+="Wrong details entered<br>";
            found=false;
        }
        st.close(); 
        con.close();
    }catch(Exception e){
        error+="Error in data fetching<br>";
        found=false;
    }
    if(!found){
        out.println("<br><div style='color:red;border-radius:10px; border:1px solid red; padding:20px; margin:10px; text-align: center;'>"+error+"</div><br>");
        request.getRequestDispatcher("student.jsp").include(request, response);  
        return;
    }
    for(int i=0; i<5; i++){
        total+=marks[i];
    }
    if(total<150){
        result="Fail";
    }
    
%>
<% 
    int registrationNumber=Integer.parseInt(request.getParameter("regNumber"));
    
    String name=null;
    int marks[]=new int[5];
    try{
        String sql;
        Statement st=con.createStatement();
		sql = "SELECT * FROM marks where regid='"+registrationNumber+"'";
        ResultSet rs = st.executeQuery(sql);
        if(rs.first()){
            name=rs.getString("name");
            marks[0]=rs.getInt("sub1");
            marks[1]=rs.getInt("sub2");
            marks[2]=rs.getInt("sub3");
            marks[3]=rs.getInt("sub4");
            marks[4]=rs.getInt("sub5");
        }else{
            out.println("error during fetching data");
        }
        st.close(); 
        con.close();
    }catch(Exception e){
        out.println("process catch");
        out.println(e);
    }
    
%>
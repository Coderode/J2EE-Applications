<html>
    <head>
        <title>count page access</title>
    </head>
    <body>
		<%
			int count=1;
			Cookie c[]=request.getCookies();
			if(c!=null){
				for(int i=0; i<c.length; i++){
					if(c[i].getName().equals("userPageCounter")){
						count=Integer.parseInt(c[i].getValue());
						count++;
						break;
					}
				}
			}
			Cookie c1=new Cookie("userPageCounter",String.valueOf(count));
			c1.setMaxAge(60*60*24);  //for one day
			response.addCookie(c1);
		%>
		<p>User Page Hit: <%= count%></p>
    </body>
</html>


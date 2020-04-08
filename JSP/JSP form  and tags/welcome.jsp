<html>  
<body>
<!-- tags in jsp -->  

	<!-- scriptlet tag (source code) 
	The jsp scriptlet tag can only declare variables not methods.	
	The declaration of scriptlet tag is placed inside the _jspService() method.
	-->
	<p>scriptlet tag</p>
	<%  
	String name=request.getParameter("username");  
	out.print("welcome "+name);  
	%> 
	
	
	<!-- expression  tag (whatever you write inside out.print to print directly the result code)  -->
	<p>expression tag</p>
	<%= "welcom" %>
	Current Time: <%= java.util.Calendar.getInstance().getTime() %> 
	<%= "Welcome "+request.getParameter("username") %>  
	
	
	
	<p>declaration tag</p>
	<!-- declaration tag to declare fields and methods.
	The jsp declaration tag can declare variables as well as methods.
    The declaration of jsp declaration tag is placed outside the _jspService() method.
	-->
	<%! int data=50; %>  
	<%= "Value of the variable is:"+data %>  
	<%!   
	int cube(int n){  
	return n*n*n;  
	}  
	%>  
	<%= "Cube of 3 is:"+cube(3) %>  
</form>  
</body>  
</html>  
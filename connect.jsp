<%@ page import="java.sql.*"%>
<%
String fname=request.getParameter("first");
String lname=request.getParameter("last");
String em=request.getParameter("email");
String pa=request.getParameter("pass");

try{
    Class.forName("com.mysql.jdbs.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Parkview@2020");
     PreparedStatement ps = conn.prepareStatement("insert into login(fname, lname, email, pass) values(?,?,?,?);");
    ps.setString(1,fname);
    ps.setString(2,lname);
    ps.setString(3,em);
    ps.setString(4,pa);
    int x = ps.executeUpdate();
    if(x>0){
        out.println("Registration done successfully.........");
    }
    else{
        out.println("Failed.......");
    }

}catch(Exception e)
{
    out.println(e);
}
%>

package com.cydeo.day1;

import java.sql.*;

public class LoopingBackward {

    // print all Employees Employee_ID and First_name Backward
    // SELECT * FROM EMPLOYEES (do not sort this)


    public static void main(String[] args) throws SQLException {

        String url = "jdbc:oracle:thin:@54.226.233.106:1521:XE";
        String username = "hr" ;
        String password = "hr" ;

        Connection conn = DriverManager.getConnection(url , username , password) ;
        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs   = stmt.executeQuery("SELECT * FROM EMPLOYEES") ;

        // use afterlast() method to go to afterlast location
        // use previous() method to move backward and check weather we have valid previous row or not.
        // stop if there is no more valid row


        rs.afterLast();
        while ( rs.previous()){

            System.out.println(rs.getString("EMPLOYEE_ID") + " " + rs.getString("FIRST_NAME"));

        }

    }
}

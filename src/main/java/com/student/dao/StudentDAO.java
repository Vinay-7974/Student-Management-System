package com.student.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.student.model.Student;
import com.student.util.DBConnection;

public class StudentDAO {

	public boolean saveStudent(Student student) {

	    Connection con = DBConnection.getConnection();

	    String sql = "INSERT INTO student(name,email,course,mobile) VALUES(?,?,?,?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, student.getName());
	        ps.setString(2, student.getEmail());
	        ps.setString(3, student.getCourse());
	        ps.setString(4, student.getMobile());

	        int rows = ps.executeUpdate();

	        if (rows > 0) {
	            return true;
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}

	public List<Student> getAllStudents() {

	    List<Student> list = new ArrayList<>();

	    Connection con = DBConnection.getConnection();

	    String sql = "SELECT * FROM student";
	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Student student = new Student();

	            student.setId(rs.getInt("id"));
	            student.setName(rs.getString("name"));
	            student.setEmail(rs.getString("email"));
	            student.setCourse(rs.getString("course"));
	            student.setMobile(rs.getString("mobile"));

	            list.add(student);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	public Student getStudentById(int id) {

	    Student student = null;

	    Connection con = DBConnection.getConnection();

	    String sql = "SELECT * FROM student WHERE id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, id);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	            student = new Student();

	            student.setId(rs.getInt("id"));
	            student.setName(rs.getString("name"));
	            student.setEmail(rs.getString("email"));
	            student.setCourse(rs.getString("course"));
	            student.setMobile(rs.getString("mobile"));
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return student;
	}
	public boolean updateStudent(Student student) {

	    Connection con = DBConnection.getConnection();

	    String sql = "UPDATE student SET name=?,email=?,course=?,mobile=? WHERE id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, student.getName());
	        ps.setString(2, student.getEmail());
	        ps.setString(3, student.getCourse());
	        ps.setString(4, student.getMobile());
	        ps.setInt(5, student.getId());

	        int rows = ps.executeUpdate();

	        if (rows > 0) {
	            return true;
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}
	
	public boolean deleteStudent(int id) {

	    Connection con = DBConnection.getConnection();

	    String sql = "DELETE FROM student WHERE id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, id);

	        int rows = ps.executeUpdate();

	        if (rows > 0) {
	            return true;
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}

}

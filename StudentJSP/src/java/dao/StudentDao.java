package dao;

import java.sql.*;
import java.util.*;
import entity.Student;
import util.DbUtil;

public class StudentDao {


    public static List<Student> getAllStudents() {
        List<Student> list = new ArrayList<>();

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM student"
            );

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setCourse(rs.getString("course"));
                list.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public static Student getStudentById(int id) {
        Student s = null;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM student WHERE id=?"
            );
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setCourse(rs.getString("course"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }


    public static int save(Student s) {
        int status = 0;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO student(name, email, course) VALUES (?, ?, ?)"
            );

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }


    public static int update(Student s) {
        int status = 0;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "UPDATE student SET name=?, email=?, course=? WHERE id=?"
            );

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());
            ps.setInt(4, s.getId());

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }


    public static int delete(int id) {
        int status = 0;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM student WHERE id=?"
            );

            ps.setInt(1, id);

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
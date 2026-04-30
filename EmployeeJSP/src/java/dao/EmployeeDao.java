package dao;

import java.sql.*;
import java.util.*;
import entity.Employee;
import util.DbUtil;

public class EmployeeDao {

    // =========================
    // SAVE EMPLOYEE
    // =========================
    public static int save(Employee e) {
        int status = 0;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO emp(name, email, department, salary) VALUES (?,?,?,?)"
            );

            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getDepartment());
            ps.setDouble(4, e.getSalary());

            status = ps.executeUpdate();
            ps.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    // =========================
    // GET ALL EMPLOYEES
    // =========================
    public static List<Employee> getAll() {

        List<Employee> list = new ArrayList<>();

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement("SELECT * FROM emp");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setEmail(rs.getString("email"));
                e.setDepartment(rs.getString("department"));
                e.setSalary(rs.getDouble("salary"));

                list.add(e);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return list;
    }

    // =========================
    // GET EMPLOYEE BY ID
    // =========================
    public static Employee getById(int id) {

        Employee e = null;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM emp WHERE id=?"
            );

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                e = new Employee();
                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setEmail(rs.getString("email"));
                e.setDepartment(rs.getString("department"));
                e.setSalary(rs.getDouble("salary"));
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return e;
    }

    // =========================
    // UPDATE EMPLOYEE
    // =========================
    public static int update(Employee e) {

        int status = 0;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "UPDATE emp SET name=?, email=?, department=?, salary=? WHERE id=?"
            );

            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getDepartment());
            ps.setDouble(4, e.getSalary());
            ps.setInt(5, e.getId());

            status = ps.executeUpdate();
            ps.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    // =========================
    // DELETE EMPLOYEE
    // =========================
    public static int delete(int id) {

        int status = 0;

        try (Connection con = DbUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM emp WHERE id=?"
            );

            ps.setInt(1, id);

            status = ps.executeUpdate();
            ps.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
}
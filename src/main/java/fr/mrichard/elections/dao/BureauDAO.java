package fr.mrichard.elections.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fr.mrichard.elections.entity.Bureau;


public class BureauDAO {


    private Connection connection;

    private static String JTABLE_SELECT_ALL = "SELECT idbureau, codebureau, adressebureau, lieubureau, inscrits, idarrondissement, idcirconscription FROM bureau";
    private static String JTABLE_INSERT_ALL = "INSERT INTO bureau (codebureau, lieubureau, adressebureau, inscrits, idarrondissement, idcirconscription)  VALUES(?, ?, ?, ?, ?, ?)";
    private static String JTABLE_DELETE_ALL = "DELETE FROM bureau WHERE idbureau=?";
    private static String JTABLE_UPDATE_ALL = "UPDATE bureau SET codebureau=?, lieubureau=?, adressebureau=?, inscrits=?, idarrondissement=?, idcirconscription=? WHERE idbureau=?";


    public BureauDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Bureau> jTableSelectAll() {

        List<Bureau> list = new ArrayList<Bureau>();
        PreparedStatement prepSt8;
        ResultSet resultSet;
        String query = JTABLE_SELECT_ALL;

        try {
            prepSt8 = connection.prepareStatement(query);
            resultSet = prepSt8.executeQuery();

            while (resultSet.next()) {
                Bureau object = new Bureau();
                object.setIdbureau(resultSet.getInt("idbureau"));
                object.setCodebureau(resultSet.getString("codebureau"));
                object.setAdressebureau(resultSet.getString("adressebureau"));
                object.setLieubureau(resultSet.getString("lieubureau"));
                object.setInscrits(resultSet.getInt("inscrits"));
                object.setIdarrondissement(resultSet.getInt("idarrondissement"));
                object.setIdcirconscription((resultSet.getInt("idcirconscription")));
                object.setFlag("");
                list.add(object);
            } /// while

            resultSet.close();
            prepSt8.close();
        } catch (SQLException e) {
            Bureau object = new Bureau();
            object.setIdbureau(0);
            object.setCodebureau(e.getMessage());
            list.add(object);
            System.out.println(e.getMessage());
        }

        return list;
    }

    public int jTableInsertAll(List<Bureau> listeBureaux) {

        PreparedStatement prepSt8 = null;
        String query;
        int res = -1;
        try {

            for (Bureau b : listeBureaux) {
                switch (b.getFlag()) {
                    case "+":
                        query = JTABLE_INSERT_ALL;
                        prepSt8 = connection.prepareStatement(query);
                        prepSt8.setString(1, b.getCodebureau());
                        prepSt8.setString(2, b.getLieubureau());
                        prepSt8.setString(3, b.getAdressebureau());
                        prepSt8.setInt(4, b.getInscrits());
                        prepSt8.setInt(5, b.getIdarrondissement());
                        prepSt8.setInt(6, b.getIdcirconscription());
                        res = prepSt8.executeUpdate();

                    case "-":
                        query = JTABLE_DELETE_ALL;
                        prepSt8 = connection.prepareStatement(query);
                        prepSt8.setInt(1, b.getIdbureau());
                        res = prepSt8.executeUpdate();

                    case "m":
                        query = JTABLE_UPDATE_ALL;
                        prepSt8 = connection.prepareStatement(query);
                        prepSt8.setString(1, b.getCodebureau());
                        prepSt8.setString(2, b.getLieubureau());
                        prepSt8.setString(3, b.getAdressebureau());
                        prepSt8.setInt(4, b.getInscrits());
                        prepSt8.setInt(5, b.getIdarrondissement());
                        prepSt8.setInt(6, b.getIdcirconscription());
                        prepSt8.setInt(7, b.getIdbureau());
                        res = prepSt8.executeUpdate();
                }
            }
            prepSt8.close();
            connection.commit();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return res;
    }
}

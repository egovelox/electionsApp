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

    private static String JTABLE_SELECT_ALL = "SELECT idbureau, codebureau, adressebureau, lieubureau, inscrits, idarrondissement FROM bureau";


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

}

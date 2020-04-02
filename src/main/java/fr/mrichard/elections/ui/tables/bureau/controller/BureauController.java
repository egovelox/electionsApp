package fr.mrichard.elections.ui.tables.bureau.controller;

import fr.mrichard.elections.dao.AccessBase;
import fr.mrichard.elections.dao.BureauDAO;
import fr.mrichard.elections.entity.Bureau;
import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;
import fr.mrichard.elections.ui.tables.bureau.view.BureauTableBtnPanel;
import fr.mrichard.elections.ui.tables.bureau.view.BureauTableFrame;
import fr.mrichard.elections.ui.shared.controller.AbstractFrameController;
import fr.mrichard.elections.ui.tables.bureau.view.BureauTablePanel;

import javax.swing.*;
import java.awt.*;
import java.sql.Connection;
import java.util.List;

public class BureauController extends AbstractFrameController{

    private BureauTableFrame bureauTableFrame;
    private BureauTableModel bureauTableModel;
    private Connection connection;
    private BureauDAO bureauDAO;
    List<Bureau> listeBureaux;

    public BureauController(){
        connection = AccessBase.getInstance("javaelections.properties");
        bureauDAO = new BureauDAO(connection);
        bureauTableModel = new BureauTableModel();
        // fill the model with data
        loadBureaux();
        // pass the model to the corresponding frame
        bureauTableFrame = new BureauTableFrame(bureauTableModel);
    }

    @Override
    public JInternalFrame prepareAndReturnFrame() {
        prepareListeners();
        showBureauFrame();
        return bureauTableFrame;
    }

    private void prepareListeners(){
        BureauTableBtnPanel tableBtnPanel = bureauTableFrame.getTableBtnPanel();
        registerAction(tableBtnPanel.getAddBtn(), (e) -> addBureau());
        registerAction(tableBtnPanel.getRemoveBtn(), (e) -> removeBureau());
        registerAction(tableBtnPanel.getCancelBtn(), (e) -> resetTable());
        registerAction(tableBtnPanel.getValidateBtn(), (e) -> validateTable());
    }

    private void showBureauFrame(){bureauTableFrame.setVisible(true);}

    private void resetTable(){
        bureauTableModel.clear();
        loadBureaux();
    }

    private void addBureau(){
        Bureau bureau = new Bureau("+");
        bureauTableModel.addEntity(bureau);
        JTable bureauTable = bureauTableFrame.getTablePanel().getBureauTable();
        bureauTable.scrollRectToVisible(
                new Rectangle(bureauTable.getCellRect(bureauTable.getRowCount()-1, 0, true)));
    }

    private void removeBureau(){
        JTable bureauTable = bureauTableFrame.getTablePanel().getBureauTable();
        int selectedRow = bureauTable.getSelectedRow();
        if (selectedRow >= 0){ bureauTableModel.removeEntity(selectedRow);}
        else {System.out.println("sélectionnez une ligne");}
    }

    private void validateTable(){
        listeBureaux = bureauTableModel.getEntities();
        int res = bureauDAO.jTableInsertAll(listeBureaux);
        System.out.println(res);
        bureauTableModel.clear();
        loadBureaux();
    }

    private void loadBureaux(){
        listeBureaux = bureauDAO.jTableSelectAll();
        bureauTableModel.addEntities(listeBureaux);
    }

    @Override
    public void prepareAndOpenFrame() {

    }
}

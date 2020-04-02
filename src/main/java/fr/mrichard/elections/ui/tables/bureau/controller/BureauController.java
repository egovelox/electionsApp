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
        loadBureaux();
        // on passe le model à la frame qui le passera à la JTable
        bureauTableFrame = new BureauTableFrame(bureauTableModel);
    }

    private void prepareListeners(){
        BureauTableBtnPanel tableBtnPanel = bureauTableFrame.getTableBtnPanel();
        registerAction(tableBtnPanel.getAddBtn(), (e) -> addBureau());
        registerAction(tableBtnPanel.getRemoveBtn(), (e) -> removeBureau());
        registerAction(tableBtnPanel.getCancelBtn(), (e) -> resetTable());
        registerAction(tableBtnPanel.getValidateBtn(), (e) -> validateTable());

        /*registerTableAction(bureauTableModel, (e) -> {
            System.out.println(e);
            //modifyBureau();
        });*/
    }

    private void validateTable(){
        listeBureaux = bureauTableModel.getEntities();
        int res = bureauDAO.jTableInsertAll(listeBureaux);
        System.out.println(res);
        bureauTableModel.clear();
        loadBureaux();
    }

    @Override
    public JInternalFrame prepareAndReturnFrame() {
        //loadBureaux();
        prepareListeners();
        showBureauFrame();
        return bureauTableFrame;
    }

    private void loadBureaux(){
        listeBureaux = bureauDAO.jTableSelectAll();
        bureauTableModel.addEntities(listeBureaux);
    }

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
        //System.out.println(bureauTableModel.getEntities());
    }

    private void removeBureau(){
        JTable bureauTable = bureauTableFrame.getTablePanel().getBureauTable();
        int selectedRow = bureauTable.getSelectedRow();
        if (selectedRow >= 0){ bureauTableModel.removeEntity(selectedRow);}
        else {System.out.println("sélectionnez une ligne");}
    }

    private void showBureauFrame(){bureauTableFrame.setVisible(true);}

    @Override
    public void prepareAndOpenFrame() {

    }
}

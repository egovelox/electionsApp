package fr.mrichard.elections.ui.tables.bureau.controller;

import fr.mrichard.elections.dao.AccessBase;
import fr.mrichard.elections.dao.BureauDAO;
import fr.mrichard.elections.entity.Bureau;
import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;
import fr.mrichard.elections.ui.tables.bureau.view.BureauTableBtnPanel;
import fr.mrichard.elections.ui.tables.bureau.view.BureauTableFrame;
import fr.mrichard.elections.ui.shared.controller.AbstractFrameController;

import javax.swing.*;
import java.sql.Connection;
import java.util.List;

public class BureauController extends AbstractFrameController{

    private BureauTableFrame bureauTableFrame;
    private BureauTableModel bureauTableModel;
    private Connection connection;
    private BureauDAO bureauDAO;


    public BureauController(){
        bureauTableModel = new BureauTableModel();
        // on passe le model à la frame qui le passera au tablePanel
        bureauTableFrame = new BureauTableFrame(bureauTableModel);
        connection = AccessBase.getInstance("");
        bureauDAO = new BureauDAO(connection);
    }

    private void prepareListeners(){
        BureauTableBtnPanel tableBtnPanel = bureauTableFrame.getTableBtnPanel();
        registerAction(tableBtnPanel.getAddBtn(), (e) -> addBureau());
        registerAction(tableBtnPanel.getRemoveBtn(), (e) -> addBureau());
        registerAction(tableBtnPanel.getModBtn(), (e) -> addBureau());
        registerAction(tableBtnPanel.getCancelBtn(), (e) -> addBureau());
        registerAction(tableBtnPanel.getValidateBtn(), (e) -> addBureau());



    }
    @Override
    public JInternalFrame prepareAndReturnFrame() {
        loadBureaux();
        showBureauFrame();
        return bureauTableFrame;
    }

    public void loadBureaux(){
        List<Bureau> listeBureaux = bureauDAO.jTableSelectAll();
        bureauTableModel.addEntities(listeBureaux);
    }
    public void addBureau(){
        Bureau bureau = new Bureau("+");
        bureauTableModel.addEntity(bureau);
    }

    public void showBureauFrame(){bureauTableFrame.setVisible(true);}

    @Override
    public void prepareAndOpenFrame() {

    }
}

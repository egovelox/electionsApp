package fr.mrichard.elections.ui.tables.bureau.view;

import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;

import javax.swing.*;

public class BureauTableFrame extends JInternalFrame {

    private BureauTablePanel tablePanel;
    private BureauTableBtnPanel tableBtnPanel;

    public BureauTableFrame(BureauTableModel tableModel){
        tablePanel = new BureauTablePanel(tableModel);
        tableBtnPanel = new BureauTableBtnPanel();
    }

    public BureauTablePanel getTablePanel() {
        return tablePanel;
    }

    public BureauTableBtnPanel getTableBtnPanel() {
        return tableBtnPanel;
    }
}

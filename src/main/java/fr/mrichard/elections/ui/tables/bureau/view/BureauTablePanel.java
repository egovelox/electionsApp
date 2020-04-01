package fr.mrichard.elections.ui.tables.bureau.view;

import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;

import javax.swing.*;
import java.awt.*;

public class BureauTablePanel extends JPanel{

    private BureauTableModel tableModel;

    private JTable table;

    public BureauTablePanel(BureauTableModel tableModel){
        this.tableModel = tableModel;
        setPanelUp();
        initComponents();
    }

    private void initComponents() {
        table = new JTable(tableModel);
        table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    }

    private void setPanelUp() {
        setLayout(new BorderLayout());
    }
}
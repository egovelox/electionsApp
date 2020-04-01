package fr.mrichard.elections.ui.tables.bureau.view;

import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;

import javax.swing.*;
import java.awt.*;

public class BureauTablePanel extends JPanel{

    private BureauTableModel tableModel;

    private JTable bureauTable;

    public BureauTablePanel(BureauTableModel tableModel){
        this.tableModel = tableModel;
        setPanelUp();
        initComponents();
    }

    private void initComponents() {
        bureauTable = new JTable(tableModel);
        bureauTable.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

        JScrollPane paneWithTable = new JScrollPane(bureauTable);
        add(paneWithTable, BorderLayout.CENTER);
    }

    private void setPanelUp() {
        setLayout(new BorderLayout());
    }
}
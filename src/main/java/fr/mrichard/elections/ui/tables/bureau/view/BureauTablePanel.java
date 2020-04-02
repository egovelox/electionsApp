package fr.mrichard.elections.ui.tables.bureau.view;

import fr.mrichard.elections.entity.Bureau;
import fr.mrichard.elections.ui.shared.model.DefaultTableModel;
import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;

import javax.swing.*;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;
import java.awt.*;

public class BureauTablePanel extends JPanel
        //implements TableModelListener
{

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
        //tableModel.addTableModelListener(this);

        JScrollPane paneWithTable = new JScrollPane(bureauTable);
        add(paneWithTable, BorderLayout.CENTER);
    }

    private void setPanelUp() {
        setLayout(new BorderLayout());
    }

    public JTable getBureauTable() {
        return bureauTable;
    }

    /*@Override
    public void tableChanged(TableModelEvent e) {
        tableModel = (BureauTableModel) e.getSource();
        int column = e.getColumn();
        int row = e.getFirstRow();
        int rowLast = e.getLastRow();
        //tableModel.setValueAt("ajout", row, 0);

        System.out.println("Inside tableChanged()");
        System.out.println("row : " + row + ", rowLast : " + rowLast);
        System.out.println("col : " + column);
        System.out.println("value of cell : " + tableModel.getValueAt(row, column));
        if(tableModel.getValueAt(row, column) != ""){
            tableModel.modifyEntity(row);
        }


    }*/
}
package fr.mrichard.elections.ui.tables.bureau.model;

import fr.mrichard.elections.entity.Bureau;
import fr.mrichard.elections.ui.shared.model.DefaultTableModel;
import fr.mrichard.elections.util.ConstMessagesEN;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import java.util.List;

public class BureauTableModel extends DefaultTableModel<Bureau> implements TableModelListener {

    // refer to DefaultTableModel for the other properties.
    private boolean[] canEdit = new boolean[]
            // set flag and ID columns uneditable via this.isCellEditable()
            {false, false, true, true, true, true, true, true};

    // constructor has to add a listener.
    public BureauTableModel(){
        addTableModelListener(this);
    }

    @Override
    public String[] getColumnLabels() {
        return new String[]{
                ConstMessagesEN.Labels.FLAG,
                ConstMessagesEN.Labels.ID,
                ConstMessagesEN.Labels.BUREAU_CODE,
                ConstMessagesEN.Labels.BUREAU_LOCATION,
                ConstMessagesEN.Labels.BUREAU_ADDRESS,
                ConstMessagesEN.Labels.BUREAU_INSCRITS,
                ConstMessagesEN.Labels.BUREAU_ID_ARRONDISSEMENT,
                ConstMessagesEN.Labels.BUREAU_ID_CIRCONSCRIPTION,

        };
    }

    @Override
    public void removeEntity(int selectedRow) {
        // the row was added by the user, so just remove it.
        if(entities.get(selectedRow).getFlag().compareTo("+") == 0){ entities.remove(selectedRow); }
        // the row was NOT added by the user, so just tag it with "-".
        else setValueAt("-", selectedRow, 0);
        fireTableDataChanged();
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Bureau bureau = entities.get(rowIndex);

        switch (columnIndex) {
            case 0:
                return bureau.getFlag();
            case 1:
                if (bureau.getIdbureau() == 0) {
                    return "auto";
                } else return bureau.getIdbureau();
            case 2:
                return bureau.getCodebureau();
            case 3:
                return bureau.getLieubureau();
            case 4:
                return bureau.getAdressebureau();
            case 5:
                return bureau.getInscrits();
            case 6:
                return bureau.getIdarrondissement();
            case 7:
                return bureau.getIdcirconscription();
            default:
                return "";
        }
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return canEdit[columnIndex];
    }

    @Override
    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {

        // The user has edited a cell, let's flag it here with "m"
        // via the event handler tableChanged() below.
        fireTableCellUpdated(rowIndex, columnIndex);

        // And ONLY THEN we save in entities.
        Bureau bureau = entities.get(rowIndex);
        switch (columnIndex) {
            case 0:
                bureau.setFlag((String) aValue);
                break;
            case 2:
                bureau.setCodebureau((String) aValue);
                break;
            case 3:
                bureau.setLieubureau((String) aValue);
                break;
            case 4:
                bureau.setAdressebureau((String) aValue);
                break;
            case 5:
                bureau.setInscrits(Integer.parseInt((String) aValue));
                break;
            case 6:
                bureau.setIdarrondissement(Integer.parseInt((String) aValue));
                break;
            case 7:
                bureau.setIdcirconscription(Integer.parseInt((String) aValue));
        }
    }

    @Override
    // this method handles all sorts of fired TableModelEvents
    public void tableChanged(TableModelEvent e) {
        int row = e.getLastRow();
        // the row is NOT one of those added by the user.
        if (row < initialTableSize - 1){
            entities.get(row).setFlag("m");
        }
    }

    public List<Bureau> getEntities(){
        return entities;
    }
}

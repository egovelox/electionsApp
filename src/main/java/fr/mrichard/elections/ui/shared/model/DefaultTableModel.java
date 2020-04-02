package fr.mrichard.elections.ui.shared.model;

import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;
import java.util.List;

public abstract class DefaultTableModel<T> extends AbstractTableModel {

    protected List<T> entities = new ArrayList<T>();
    protected int initialTableSize;
    public abstract String[] getColumnLabels();
    public abstract void removeEntity(int selectedRow);

    @Override
    public String getColumnName(int column) {
        return getColumnLabels()[column];
    }

    public int getRowCount() {
        return entities.size();
    }

    public int getColumnCount() {
        return getColumnLabels().length;
    }

    public void addEntity(T entity) {
        entities.add(entity);
        fireTableRowsInserted(entities.size() -1, entities.size() -1);
        //No need for now: to display and update entities, but bug to focus.
    }

    public void addEntities(List<T> entities) {
        this.entities.addAll(entities);
        initialTableSize = entities.size();
        fireTableRowsInserted(0, initialTableSize - 1);
    }

    public T getEntityByRow(int rowIndex) {
        return entities.get(rowIndex);
    }

    public void removeRow(int row) {
        entities.remove(row);
        fireTableDataChanged();
    }

    public void clear() {
        entities.clear();
    }

    public List<T> getEntities(){
        return entities;
    }

}

package fr.mrichard.elections.ui.shared.model;

import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;
import java.util.List;

public abstract class DefaultTableModel<T> extends AbstractTableModel {

    protected List<T> entities = new ArrayList<T>();
    public abstract String[] getColumnLabels();

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
        fireTableDataChanged();
    }

    public void addEntities(List<T> entities) {
        this.entities.addAll(entities);
        fireTableDataChanged();
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

}

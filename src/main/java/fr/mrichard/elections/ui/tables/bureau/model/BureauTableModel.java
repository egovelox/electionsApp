package fr.mrichard.elections.ui.tables.bureau.model;

import fr.mrichard.elections.entity.Bureau;

import fr.mrichard.elections.ui.shared.model.DefaultTableModel;
import fr.mrichard.elections.util.ConstMessagesEN;

public class BureauTableModel extends DefaultTableModel<Bureau> {
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
        };
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Bureau bureau = entities.get(rowIndex);

        switch (columnIndex) {
            case 0:
                return bureau.getFlag();
            case 1:
                return bureau.getIdbureau();
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
            default:
                return "";
        }
    }
}

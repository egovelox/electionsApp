package fr.mrichard.elections.ui.tables.bureau.view;

import fr.mrichard.elections.ui.tables.bureau.model.BureauTableModel;
import fr.mrichard.elections.util.ConstMessagesEN;
import javax.swing.*;
import java.awt.*;

public class BureauTableFrame extends JInternalFrame {

    private static final int DEFAULT_WIDTH = 900;
    private static final int DEFAULT_HEIGHT = 700;

    private BureauTablePanel tablePanel;
    private BureauTableBtnPanel tableBtnPanel;

    public BureauTableFrame(BureauTableModel tableModel){
        tablePanel = new BureauTablePanel(tableModel);
        tableBtnPanel = new BureauTableBtnPanel();
        setFrameUp();
        initComponents();
    }

    private void setFrameUp() {
        setTitle(ConstMessagesEN.Labels.BUREAU_FRAME);
        setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        setSize(DEFAULT_WIDTH, DEFAULT_HEIGHT);
        setResizable(true);
    }

    private void initComponents(){
        add(tablePanel, BorderLayout.CENTER);
        add(tableBtnPanel, BorderLayout.SOUTH);
    }

    public BureauTablePanel getTablePanel() {
        return tablePanel;
    }

    public BureauTableBtnPanel getTableBtnPanel() {
        return tableBtnPanel;
    }
}

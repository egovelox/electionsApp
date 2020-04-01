package fr.mrichard.elections.ui.tables.bureau.view;

import fr.mrichard.elections.util.ConstMessagesEN;

import javax.swing.*;

public class BureauTableBtnPanel extends JPanel {

    private JButton addBtn;
    private JButton removeBtn;
    private JButton modBtn;
    private JButton cancelBtn;
    private JButton validateBtn;

    public BureauTableBtnPanel() {
        initComponents();
    }

    private void initComponents() {
        addBtn = new JButton(ConstMessagesEN.Labels.ADD_BTN);
        add(addBtn);

        removeBtn = new JButton(ConstMessagesEN.Labels.REMOVE_BTN);
        add(removeBtn);

        modBtn = new JButton(ConstMessagesEN.Labels.MODIFY_BTN);
        add(modBtn);

        cancelBtn = new JButton(ConstMessagesEN.Labels.CANCEL_BTN);
        add(cancelBtn);

        validateBtn = new JButton(ConstMessagesEN.Labels.VALIDATE_BTN);
        add(cancelBtn);
    }

    public JButton getAddBtn() {
        return addBtn;
    }

    public JButton getRemoveBtn() {
        return removeBtn;
    }

    public JButton getModBtn() {
        return modBtn;
    }

    public JButton getCancelBtn() {
        return cancelBtn;
    }

    public JButton getValidateBtn() {
        return validateBtn;
    }
}

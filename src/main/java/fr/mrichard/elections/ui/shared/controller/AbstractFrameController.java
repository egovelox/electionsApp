package fr.mrichard.elections.ui.shared.controller;

import javax.swing.*;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;
import java.awt.event.ActionListener;

public abstract class AbstractFrameController {

    public abstract void prepareAndOpenFrame();

    public abstract JInternalFrame prepareAndReturnFrame();

    protected void registerAction(AbstractButton button, ActionListener listener) {
        button.addActionListener(listener);
    }
    protected void registerTableAction(TableModel model, TableModelListener listener){
        model.addTableModelListener(listener);
    };
}

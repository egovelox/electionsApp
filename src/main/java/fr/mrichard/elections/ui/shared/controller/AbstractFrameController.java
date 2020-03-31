package fr.mrichard.elections.ui.shared.controller;

import javax.swing.*;
import java.awt.event.ActionListener;

public abstract class AbstractFrameController {

    public abstract void prepareAndOpenFrame();

    public abstract JInternalFrame prepareAndReturnFrame();

    protected void registerAction(AbstractButton button, ActionListener listener) {
        button.addActionListener(listener);
    }
}

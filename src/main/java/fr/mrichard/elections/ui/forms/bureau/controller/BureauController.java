package fr.mrichard.elections.ui.forms.bureau.controller;

import fr.mrichard.elections.ui.forms.bureau.view.BureauTableFrame;
import fr.mrichard.elections.ui.shared.controller.AbstractFrameController;

import javax.swing.*;

public class BureauController extends AbstractFrameController{

    BureauTableFrame bureauTableFrame;


    @Override
    public JInternalFrame prepareAndReturnFrame() {
        bureauTableFrame.setVisible(true);
        return bureauTableFrame;
    }

    @Override
    public void prepareAndOpenFrame() {

    }
}

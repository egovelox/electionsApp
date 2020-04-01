package fr.mrichard.elections.ui.main_window.controller;

import fr.mrichard.elections.ui.tables.bureau.controller.BureauController;
import fr.mrichard.elections.ui.main_window.view.MainWindowFrame;
import fr.mrichard.elections.ui.shared.controller.AbstractFrameController;

import javax.swing.*;

public class MainWindowController extends AbstractFrameController {

    private MainWindowFrame mainWindowFrame;
    private BureauController bureauController;

    public MainWindowController(){
        mainWindowFrame = new MainWindowFrame();
        bureauController = new BureauController();
    }

    @Override
    public void prepareAndOpenFrame() {
        registerAction(mainWindowFrame.getBureauMenu(), (e) -> openBureau());
        mainWindowFrame.setVisible(true);
    }

    public void openBureau(){
        JInternalFrame bureauTableFrame = bureauController.prepareAndReturnFrame();
        mainWindowFrame.addInternalFrame(bureauTableFrame);
    }

    @Override
    public JInternalFrame prepareAndReturnFrame() {
        return null;
    }
}

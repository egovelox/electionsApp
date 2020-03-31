package fr.mrichard.elections;

import fr.mrichard.elections.ui.main_window.controller.MainWindowController;
import fr.mrichard.elections.util.LookAndFeelUtils;

public class Application {

    public static void main(String[] args){

        // Comment to ignore LookAndFeel
        LookAndFeelUtils.setWindowsLookAndFeel();

        MainWindowController mainWindowController = new MainWindowController();
        mainWindowController.prepareAndOpenFrame();
    }
}

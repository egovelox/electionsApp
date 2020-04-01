package fr.mrichard.elections.ui.main_window.view;

import fr.mrichard.elections.util.ConstMessagesEN;
import fr.mrichard.elections.util.LookAndFeelUtils;

import javax.swing.*;
import java.awt.*;

public class MainWindowFrame extends JFrame {

    private JMenuItem bureauMenu;
    private JDesktopPane desktopPane;

    public MainWindowFrame() {
        setFrameUp();
        initComponents();
        pack();
    }

    private void setFrameUp() {
        //getRootPane().setBorder(Borders.createEmptyBorder());
        setTitle(ConstMessagesEN.Labels.MAIN_WINDOW);
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setResizable(true);
        LookAndFeelUtils.setWindowsLookAndFeel();
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        getContentPane().setPreferredSize(screenSize);
    }

    private void initComponents() {

        JMenuBar menuBar = new JMenuBar();
        JMenu menuTables = new JMenu(ConstMessagesEN.Labels.MENU_TABLES);
        bureauMenu = new JMenuItem(ConstMessagesEN.Labels.MENU_ITEM_BUREAU_TABLE);

        menuTables.add(bureauMenu);
        menuBar.add(menuTables);
        setJMenuBar(menuBar);

        desktopPane = new JDesktopPane();
        add(desktopPane);
    }

    public void addInternalFrame(JInternalFrame internalFrame){
        desktopPane.add(internalFrame);
        desktopPane.revalidate();
    }

    public JMenuItem getBureauMenu() {
        return bureauMenu;
    }
}

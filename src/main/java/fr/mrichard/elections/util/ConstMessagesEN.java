package fr.mrichard.elections.util;

public interface ConstMessagesEN {

        interface DialogTitles {

        }

        interface Messages {
            String WINDOWS_STYLE_LOADING_ERROR_MESSAGE = "There was an error while loading windows look an feel: ";
            String ALERT_TILE = "Alert";
            String NON_ROW_SELECTED = "Non row has been selected";
            String INFORMATION_TITLE = "Information";
            String DELETE_ROW_ERROR = "Could not delete a row. Check if there are any connections between tables.";
        }

        interface Labels {
            String MAIN_WINDOW = "Elections";
            String MENU_TABLES = "Tables";
            String BUREAU_TABLE = "Bureaux";

        }

        interface ValidationMessages {
            String REQUIRED_DATA_NOT_FILLED_OR_BAD_DATA = "Not all required fields have been filled or filled data is incorrect";
        }
    }

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
            String MENU_ITEM_BUREAU_TABLE = "Bureaux";
            String BUREAU_FRAME = "Bureaux";
            String FLAG = "statut";
            String ID = "ID";
            String BUREAU_CODE = "Code";
            String BUREAU_LOCATION = "Lieu";
            String BUREAU_ADDRESS = "Adresse";
            String BUREAU_INSCRITS = "Inscrits";
            String BUREAU_ID_ARRONDISSEMENT = "Arrond.";
            String BUREAU_ID_CIRCONSCRIPTION = "Circons.";
            String CANCEL_BTN = "Annuler";
            String ADD_BTN = "Ajouter";
            String REMOVE_BTN = "Enlever";
            String VALIDATE_BTN = "Valider";
        }

        interface ValidationMessages {
            String REQUIRED_DATA_NOT_FILLED_OR_BAD_DATA = "Not all required fields have been filled or filled data is incorrect";
        }
    }

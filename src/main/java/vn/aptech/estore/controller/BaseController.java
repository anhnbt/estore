package vn.aptech.estore.controller;

import java.sql.SQLException;

public abstract class BaseController {

    public abstract void create() throws SQLException;

    public abstract void show() throws SQLException;

    public abstract void edit() throws SQLException;

    public abstract void delete();

    public void displayTitle(String title) {
        System.out.println("=========================================================");
        System.out.printf("\t\t%s\n", title.toUpperCase());
        System.out.println("=========================================================");
    }

    public void showMessage(String title) {
        System.out.println(title);
    }
    
    public abstract void start();
    
    public abstract void printMenuHeader();

}

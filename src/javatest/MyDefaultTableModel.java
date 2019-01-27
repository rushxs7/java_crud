/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javatest;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author rushil
 */
public class MyDefaultTableModel extends DefaultTableModel {
  public MyDefaultTableModel() {
    super();
  }
  @Override
  public boolean isCellEditable(int row, int col) {  // iscelleditable function
    return false;
  }
}

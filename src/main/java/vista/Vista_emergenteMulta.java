/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package vista;

/**
 *
 * @author HP
 */
public class Vista_emergenteMulta extends javax.swing.JFrame {

    /**
     * Creates new form Vista_emergenciaMulta
     */
    public Vista_emergenteMulta() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btnCerrar = new javax.swing.JLabel();
        btnRegresar = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        lblMulta = new javax.swing.JLabel();
        lblIdMultaPrest = new javax.swing.JLabel();
        lblIdPrestamoPrest = new javax.swing.JLabel();
        txtIdMultaPrest = new javax.swing.JTextField();
        txtIdPrestamoPrest = new javax.swing.JTextField();
        btnBuscarIdMulPrest = new javax.swing.JButton();
        btnBuscarIdPrestamoPrest = new javax.swing.JButton();
        btnModificarMultPrest = new javax.swing.JButton();
        btnEliminarMulPrest = new javax.swing.JButton();
        btnLimpiarMulPrest = new javax.swing.JButton();
        btnRegistrarMulPrest = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblMultaPrest = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnCerrar.setFont(new java.awt.Font("Arial Rounded MT Bold", 1, 24)); // NOI18N
        btnCerrar.setForeground(new java.awt.Color(255, 255, 255));
        btnCerrar.setText("X");
        btnCerrar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnCerrarMouseClicked(evt);
            }
        });
        jPanel1.add(btnCerrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(860, 10, -1, -1));

        btnRegresar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-atrás.png"))); // NOI18N
        btnRegresar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnRegresarMouseClicked(evt);
            }
        });
        jPanel1.add(btnRegresar, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 30, 30));

        jPanel2.setBackground(new java.awt.Color(0, 204, 204));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblMulta.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 24)); // NOI18N
        lblMulta.setForeground(new java.awt.Color(255, 255, 255));
        lblMulta.setText("Multa");
        jPanel2.add(lblMulta, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 20, -1, -1));

        lblIdMultaPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        lblIdMultaPrest.setForeground(new java.awt.Color(255, 255, 255));
        lblIdMultaPrest.setText("Id Multa:");
        jPanel2.add(lblIdMultaPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 70, -1, -1));

        lblIdPrestamoPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        lblIdPrestamoPrest.setForeground(new java.awt.Color(255, 255, 255));
        lblIdPrestamoPrest.setText("Id Prestamo:");
        jPanel2.add(lblIdPrestamoPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 100, -1, -1));

        txtIdMultaPrest.setBackground(new java.awt.Color(204, 204, 204));
        txtIdMultaPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        txtIdMultaPrest.setForeground(new java.awt.Color(0, 0, 0));
        txtIdMultaPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.add(txtIdMultaPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 70, 470, 20));

        txtIdPrestamoPrest.setBackground(new java.awt.Color(204, 204, 204));
        txtIdPrestamoPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        txtIdPrestamoPrest.setForeground(new java.awt.Color(0, 0, 0));
        txtIdPrestamoPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.add(txtIdPrestamoPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 100, 470, 20));

        btnBuscarIdMulPrest.setBackground(new java.awt.Color(0, 204, 255));
        btnBuscarIdMulPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnBuscarIdMulPrest.setForeground(new java.awt.Color(255, 255, 255));
        btnBuscarIdMulPrest.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-búsqueda-15.png"))); // NOI18N
        btnBuscarIdMulPrest.setText("Buscar");
        btnBuscarIdMulPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnBuscarIdMulPrest.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel2.add(btnBuscarIdMulPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(670, 70, 90, -1));

        btnBuscarIdPrestamoPrest.setBackground(new java.awt.Color(0, 204, 255));
        btnBuscarIdPrestamoPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnBuscarIdPrestamoPrest.setForeground(new java.awt.Color(255, 255, 255));
        btnBuscarIdPrestamoPrest.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-búsqueda-15.png"))); // NOI18N
        btnBuscarIdPrestamoPrest.setText("Buscar");
        btnBuscarIdPrestamoPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnBuscarIdPrestamoPrest.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel2.add(btnBuscarIdPrestamoPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(670, 100, 90, 20));

        btnModificarMultPrest.setBackground(new java.awt.Color(255, 102, 153));
        btnModificarMultPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnModificarMultPrest.setForeground(new java.awt.Color(255, 255, 255));
        btnModificarMultPrest.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-modificar.png"))); // NOI18N
        btnModificarMultPrest.setText("Modificar");
        btnModificarMultPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnModificarMultPrest.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel2.add(btnModificarMultPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 150, 100, 30));

        btnEliminarMulPrest.setBackground(new java.awt.Color(153, 0, 0));
        btnEliminarMulPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnEliminarMulPrest.setForeground(new java.awt.Color(255, 255, 255));
        btnEliminarMulPrest.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-eliminar-20.png"))); // NOI18N
        btnEliminarMulPrest.setText("Eliminar");
        btnEliminarMulPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnEliminarMulPrest.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel2.add(btnEliminarMulPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 150, 90, 30));

        btnLimpiarMulPrest.setBackground(new java.awt.Color(51, 255, 102));
        btnLimpiarMulPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnLimpiarMulPrest.setForeground(new java.awt.Color(255, 255, 255));
        btnLimpiarMulPrest.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-limpiar-20.png"))); // NOI18N
        btnLimpiarMulPrest.setText("Limpiar");
        btnLimpiarMulPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnLimpiarMulPrest.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel2.add(btnLimpiarMulPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 150, 90, 30));

        btnRegistrarMulPrest.setBackground(new java.awt.Color(153, 153, 255));
        btnRegistrarMulPrest.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnRegistrarMulPrest.setForeground(new java.awt.Color(255, 255, 255));
        btnRegistrarMulPrest.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/icons8-registro-20.png"))); // NOI18N
        btnRegistrarMulPrest.setText("Registrar");
        btnRegistrarMulPrest.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnRegistrarMulPrest.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel2.add(btnRegistrarMulPrest, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 150, 100, 30));

        tblMultaPrest.setBackground(new java.awt.Color(51, 51, 51));
        tblMultaPrest.setForeground(new java.awt.Color(255, 255, 255));
        tblMultaPrest.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Id Multa", "Id Prestamo", "Fecha de Inicio", "Fecha de Final"
            }
        ));
        tblMultaPrest.setSelectionBackground(new java.awt.Color(13, 104, 116));
        jScrollPane1.setViewportView(tblMultaPrest);

        jPanel2.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 230, 730, 200));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 40, 810, 460));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/FondoEmerg.jpeg"))); // NOI18N
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 900, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 894, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnCerrarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCerrarMouseClicked
        System.exit(0);
    }//GEN-LAST:event_btnCerrarMouseClicked

    private void btnRegresarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnRegresarMouseClicked
        Vista_gestionPrestamo vp = new Vista_gestionPrestamo();
        vp.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_btnRegresarMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Vista_emergenteMulta.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Vista_emergenteMulta.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Vista_emergenteMulta.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Vista_emergenteMulta.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Vista_emergenteMulta().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBuscarIdMulPrest;
    private javax.swing.JButton btnBuscarIdPrestamoPrest;
    private javax.swing.JLabel btnCerrar;
    private javax.swing.JButton btnEliminarMulPrest;
    private javax.swing.JButton btnLimpiarMulPrest;
    private javax.swing.JButton btnModificarMultPrest;
    private javax.swing.JButton btnRegistrarMulPrest;
    private javax.swing.JLabel btnRegresar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblIdMultaPrest;
    private javax.swing.JLabel lblIdPrestamoPrest;
    private javax.swing.JLabel lblMulta;
    private javax.swing.JTable tblMultaPrest;
    private javax.swing.JTextField txtIdMultaPrest;
    private javax.swing.JTextField txtIdPrestamoPrest;
    // End of variables declaration//GEN-END:variables
}

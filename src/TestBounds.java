public class TestBounds {
    public static void main(String[] args) {
        home h = new home();
        h.pack();
        System.out.println("Frame bounds: " + h.getBounds());
        java.awt.Component[] comps = h.getContentPane().getComponents();
        for (java.awt.Component c : comps) {
            System.out.println("Content Pane Child: " + c.getClass().getName() + " Bounds: " + c.getBounds());
            if (c instanceof javax.swing.JLabel) {
                javax.swing.JLabel l = (javax.swing.JLabel)c;
                java.awt.Component[] lcomps = l.getComponents();
                for (java.awt.Component lc : lcomps) {
                    System.out.println("  Label Child: " + lc.getClass().getName() + " Bounds: " + lc.getBounds());
                    if (lc instanceof javax.swing.JPanel) {
                         java.awt.Component[] pcomps = ((javax.swing.JPanel)lc).getComponents();
                         for (java.awt.Component pc : pcomps) {
                             System.out.println("    Panel Child: " + pc.getClass().getName() + " Bounds: " + pc.getBounds());
                         }
                    }
                }
            }
        }
        System.exit(0);
    }
}

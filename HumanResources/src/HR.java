import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.BorderLayout;
import javax.swing.JTable;
import javax.swing.JComboBox;
import javax.swing.JScrollPane;
import javax.swing.DefaultComboBoxModel;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;
import java.sql.ResultSet;
import javax.swing.JTextPane;

public class HR {

	private JFrame frmHr;
	private JTable table;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					HR window = new HR();
					window.frmHr.setVisible(true);
				} catch (Exception e) {
					Logger.printToFile(e);
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public HR() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmHr = new JFrame();
		frmHr.setTitle("HR");
		frmHr.setBounds(100, 100, 573, 391);
		frmHr.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmHr.getContentPane().setLayout(new BorderLayout(0, 0));

		final JComboBox comboBox = new JComboBox();
		comboBox.setModel(new DefaultComboBoxModel(ItemType.values()));
		frmHr.getContentPane().add(comboBox, BorderLayout.NORTH);

		final JScrollPane scrollPane = new JScrollPane();
		frmHr.getContentPane().add(scrollPane, BorderLayout.CENTER);

		final JTextPane textPane = new JTextPane();
		textPane.setEditable(false);
		frmHr.getContentPane().add(textPane, BorderLayout.SOUTH);

		comboBox.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
				ResultSet rs = null;
				try {
					rs = State.getInstance().executeQuery(
							((ItemType) comboBox.getSelectedItem()).getQuery());
					textPane.setText(((ItemType) comboBox.getSelectedItem()).getDesc());
					rs.last();
					int numRows = rs.getRow();
					rs.first();
					Object[][] data = new Object[numRows][rs.getMetaData().getColumnCount()];

					Object[] heads = new Object[rs.getMetaData().getColumnCount()];

					for (int j = 0; j <= rs.getMetaData().getColumnCount() - 1; j++) {
						heads[j] = rs.getMetaData().getColumnName(j + 1);
					}

					int k = 0;
					if (numRows > 0)
					do {
						Object[] rowData = new Object[rs.getMetaData()
								.getColumnCount()];
						for (int i = 0; i < rowData.length; ++i) {
							rowData[i] = rs.getObject(i + 1);
						}
						data[k] = rowData;
						k++;
					} while (rs.next());

					table = new JTable(data, heads);
					scrollPane.setViewportView(table);

				} catch (Exception e) {
					// TODO Auto-generated catch block
					Logger.printToFile(e);
					e.printStackTrace();
				}
				;
			}
		});
	}
}

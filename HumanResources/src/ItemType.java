public enum ItemType {
	View_1("SELECT NAME �����, FIRST_NAME �������, MIDDLE_NAME ���, SECOND_NAME �������� FROM V_QUERY_1",
			"������ ������� � �� ����������"), 
	View_2("SELECT NAME �����, GROUPS ���������� FROM V_QUERY_2",
			"���������� ����� � ������ ������"), 
	View_3("SELECT NAME ����� FROM V_QUERY_3",
			"����� � ���������� ����������� �����"), 
	View_4("SELECT NAME �����, COUNT ���������� FROM V_QUERY_4",
			"������ ������� � ���������� � ��� ����������� �� ������ ����� 2 ����"), 
	View_5("SELECT FIRST_NAME �������, MIDDLE_NAME ���, SECOND_NAME ��������, PAYMENT_VALUE ��  FROM V_QUERY_5",
			"������� ����� �������� �� ������� ����������"), 
	View_6("SELECT FIRST_NAME �������, MIDDLE_NAME ���, SECOND_NAME ��������, CAPTION ��������� FROM V_QUERY_6",
			"������� ����������� �� ��������� �� ������� ����������"), 
	View_7("SELECT FIRST_NAME �������, MIDDLE_NAME ���, SECOND_NAME ��������, COUNT ���������� FROM V_QUERY_7",
			"���������� ������� � ���������� �� ������ ����������"), 
	View_8("SELECT FIRST_NAME �������, MIDDLE_NAME ���, SECOND_NAME ��������, COUNT ���������� FROM V_QUERY_8",
			"������ ����������� � ���� � ���������� ����� ��� 8 �������");

	private final String query;
	private final String desc;

	ItemType(String query, String desc) {
		this.query = query;
		this.desc = desc;
	}

	public String getQuery() {
		return query;
	}

	public String getDesc() {
		return desc;
	}
};

public enum ItemType {
	View_1("SELECT NAME Отдел, FIRST_NAME Фамилия, MIDDLE_NAME Имя, SECOND_NAME Отчество FROM V_QUERY_1",
			"Список отделов и их директоров"), 
	View_2("SELECT NAME Отдел, GROUPS Количество FROM V_QUERY_2",
			"Количество групп в каждом отделе"), 
	View_3("SELECT NAME Отдел FROM V_QUERY_3",
			"Отдел с наибольшим количсетвом групп"), 
	View_4("SELECT NAME Отдел, COUNT Количество FROM V_QUERY_4",
			"Список отделов и количество в них сотрудников со стажем более 2 года"), 
	View_5("SELECT FIRST_NAME Фамилия, MIDDLE_NAME Имя, SECOND_NAME Отчество, PAYMENT_VALUE ЗП  FROM V_QUERY_5",
			"Исотрия роста зарплаты по каждому сторуднику"), 
	View_6("SELECT FIRST_NAME Фамилия, MIDDLE_NAME Имя, SECOND_NAME Отчество, CAPTION Должность FROM V_QUERY_6",
			"История продвижения по должности по каждому сотруднику"), 
	View_7("SELECT FIRST_NAME Фамилия, MIDDLE_NAME Имя, SECOND_NAME Отчество, COUNT Количество FROM V_QUERY_7",
			"Количество человек в подчинении по кадому сотруднику"), 
	View_8("SELECT FIRST_NAME Фамилия, MIDDLE_NAME Имя, SECOND_NAME Отчество, COUNT Количество FROM V_QUERY_8",
			"Список сотрудников у кого в подчинении более чем 8 человек");

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

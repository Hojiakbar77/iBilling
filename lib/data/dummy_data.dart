class Users{
  String? number;
  String? fish;
  String? amount;
  String? lastInvoice;
  String? noInvoice;
  String? status;
  String? date;

  Users(this.number, this.fish, this.amount, this.lastInvoice, this.noInvoice, this.status, this.date);
  static List<Users> informations=[
    Users("№ 154","Yo'ldoshboyeva Aziza", "1,200,000 USZ","№ 156","6","Paid","31.01.2021  "),
    Users("№ 153", "Seulke Lee", "1,250,000", "157", "№ 156", "In Process", "31.01.2021  "),
    Users("№ 155", "Ashrapova Nigina", "1,320,000", "№ 151", "5", "Rejected by Payme", "30.01.2021  "),
    Users("№ 155", "Ashrapova Nigina", "1,320,000", "№ 151", "5", "In Process", "30.01.2021  ")

  ];
}



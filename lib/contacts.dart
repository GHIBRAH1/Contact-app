class Contacts {
  final String name;
  final String number;
  final String image;
  final String email;
  final String location;
 
  Contacts(this.name, this.number, this.image, this.email, this.location);
}

List<Contacts> contactlist = [
  Contacts("Hoza Love", "+233 546 7984", "assets/fl5.jpeg", "hoza@gmail.com",
      "Madina"),
  Contacts('Papa Alhaji', "+233 546 7989", "assets/hh.jpg", "papa@gmail.com",
      "Cape Coast"),
  Contacts("Ahmendo", "+233 546 1212", "assets/incar.jpg", "ahmendo@gmail.com",
      "Temale"),
];

List<Contacts> contactlistA = [
  Contacts(
      "Boateng", "+233 0007900", "assets/h.jpg", "bolt@gmail.com", "Canada"),
  Contacts(
      'Ibra', "+233 111 7984", "assets/pic3.jpg", "ib11@gmail.com", "Accra"),
];
List<Contacts> contactlistB = [
  Contacts("Life Style", "+233 546 3484", "assets/fl5.jpeg", "life@gmail.com",
      "Kanda"),
  Contacts(
    "Johna", "+233 546", "assets/pic1.jpg", "jona@gmail.com", "State"),
  Contacts(
    "Prof IB", "+233 546 3333", "assets/hah.jpg", "prof@gmail.com", "Coded"),
];

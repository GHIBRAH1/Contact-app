class Contacts {
  final String name;
  final String number;
  final String image;
  final String email;
  final String location;
 
  Contacts(this.name, this.number, this.image, this.email, this.location);
}

List<Contacts> contactlist = [
  Contacts("Prof  Gah", "+233 546 7984", "assets/fl5.jpeg", "gah@gmail.com",
      "Kasoa"),
  Contacts('Alhaji Ibrahim', "+233 273 7989", "assets/hh.jpg", "ibra@gmail.com",
      "Madina"),
  Contacts("Jonatha", "+233 243 1212", "assets/incar.jpg", "jona@gmail.com",
      "Temale"),
];

List<Contacts> contactlistA = [
  Contacts(
      "Boateng", "+233 0007900", "assets/h.jpg", "bolt@gmail.com", "Canada"),
  Contacts(
      'Jamal', "+233 111 7984", "assets/pic3.jpg", "jam11@gmail.com", "Accra"),
];
List<Contacts> contactlistB = [
  Contacts("Life Style", "+233 546 3484", "assets/fl5.jpeg", "life@gmail.com",
      "Swedru"),
  Contacts(
    "John", "+233 546", "assets/pic1.jpg", "jona@gmail.com", "Bawjiase"),
  Contacts(
    "Prof IB", "+233 546 3333", "assets/hah.jpg", "prof@gmail.com", "Coded"),
];

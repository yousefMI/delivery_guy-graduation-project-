class DataJoe {
  late List imagePath;
  late List orderName;
  late List orderAdress;
  late List orderTime;
  late List mail;
  late List price;
  late List details;

  DataJoe(Map<String, dynamic> Screen) {
    imagePath = [
      "assets/images/pl.jpg",
      'assets/images/20.png',
      'assets/images/10.jpg'
    ];
    orderName = [
      'White-Blouse',
      'Black-Dress',
      'Color-Houdy',
    ];
    orderAdress = [
      '29 cairo. octobar Rd. Santa',
      '2 cairo. Giza cairo uni',
      '15 cairo. Madina Nasr. Korba'
    ];
    orderTime = [
      '08:40 AM',
      '10:40 PM',
      '05:00 PM',
    ];
    mail = [
      "CityStars",
      "MasrMail",
      "ArabMail",
    ];
    price = [
      1500,
      2000,
      800,
    ];
    details = [
      "Moto Order",
      "Car Order",
      "Moto Order",
    ];
  }
}

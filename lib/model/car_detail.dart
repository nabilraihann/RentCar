class CarDetail{
  String nama;
  String transmisi;
  String kapasitas;
  String harga;
  String gambarMobilUtama;
  List<String> gambarMobil;

  CarDetail({
    required this.nama,
    required this.transmisi,
    required this.kapasitas,
    required this.harga,
    required this.gambarMobilUtama,
    required this.gambarMobil,
  });
}
var carDetailList = [
  CarDetail(
    nama: 'Daihatsu Xenia',
    transmisi: 'Matic',
    kapasitas: '7 penumpang',
    harga: 'Rp500.000,00/hari',
    gambarMobilUtama: 'images/xenia.jpg',
    gambarMobil: [
      'images/xenia.jpg',
      'images/interior.jpg',
      'images/xenia2019_2019.jpeg',
      'images/xenia2019_3403.jpeg',
      'images/xenia2019_4608.jpeg',
    ]
  ),
  CarDetail(
    nama: 'Toyota Camry',
    transmisi: 'Manual',
    kapasitas: '4 penumpang',
    harga: 'Rp1.200.000,00/hari',
    gambarMobilUtama: 'images/camry.jpg',
    gambarMobil: [
      'images/camry.jpg',
      'images/camry2.jpg',
      'images/camry3.jpg',
      'images/camry5.jpeg',
    ]
  ),
  CarDetail(
    nama: 'Suzuki Ertiga',
    transmisi: 'Manual',
    kapasitas: '7 penumpang',
    harga: 'Rp600.000,00/hari',
    gambarMobilUtama: 'images/ertiga.jpeg',
    gambarMobil: [
      'images/ertiga.jpeg',
      'images/ertiga2.jpeg',
      'images/ertiga3.jpeg',
      'images/ertiga4.jpg',
      'images/ertiga5.jpg',
    ]
  ),
  CarDetail(
    nama: 'Toyota Raize',
    transmisi: 'Matic',
    kapasitas: '5 penumpang',
    harga: 'Rp7500.000,00/hari',
    gambarMobilUtama: 'images/raize.jpg',
    gambarMobil: [
      'images/raize.jpg',
      'images/raize2.jpg',
      'images/raize3.jpg',
      'images/raize4.jpg',
    ]
  )
];
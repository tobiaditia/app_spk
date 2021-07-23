class LaptopModel {
  int id;
  String nama;
  String merk;
  int harga;
  String baterai;
  String penyimpanan;
  String grafis;
  String ram;
  String deskripsi;
  String foto;
  Map bobot;

  LaptopModel(
    this.id,
    this.nama,
    this.merk,
    this.harga,
    this.baterai,
    this.penyimpanan,
    this.grafis,
    this.ram,
    this.deskripsi,
    this.foto,
    this.bobot,
  );
}

var laptopList = [
  LaptopModel(1,"Acer Chromebook 714", "ACER", 9500000, "5000 Mah", "128 GB SSD", "GPU Intel UHD Graphics 620", "8 Gb",
      "Acer Chromebook 714 adalah laptop bisnis yang terlihat premium dengan sasis aluminium ramping yang akan meningkatkan aura sopan dan profesional Anda saat Anda membawa perangkat yang disempurnakan ini dari satu rapat kantor ke rapat lainnya.", "assets/laptop_acer_chromebook_714.png", {
    "harga": 3,
    "grafis": 3,
    "penyimpanan": 3,
    "baterai": 3,
    "ram": 3,
  }),
  LaptopModel(2,"Dell Inspiron 11 3000", "DELL", 5325000, "3-cell Li-Ion", "32 GB eMMC & 500GB HDD", "Intel® HD Graphics", "4 Gb",
      "Dell Inspiron 11 3000 ini cocok banget buat mereka yang membutuhkan portabilitas lebih untuk melakukan pekerjaan di luar kantor. Portabilitas di sini bukan hanya soal bobot yang enteng dan desain yang cantik serta ergonomis, tapi lebih pada soal daya tahan baterainya.", "assets/laptop_dell_inspiron_11_3000.webp", {
    "harga": 2,
    "grafis": 3,
    "penyimpanan": 3,
    "baterai": 3,
    "ram": 3,
  }),
  LaptopModel(3,"Lenovo Yoga c640 13IML-33ID", "LENOVO", 13132000, "4CELL 60WH", "512 GB SSD", "Intel UHD Graphics.", "16 Gb",
      "Merupakan laptop Generasi terbaru  intel generasi 10 dengan ram 16 GB + SSD 512 GB, dengan layar 13,3\" sudah windows 10 dan office home & student 2019 dengan fitur Fingerprint.", "assets/laptop_lenovo_yoga_C640.webp", {
    "harga": 4,
    "grafis": 3,
    "penyimpanan": 3,
    "baterai": 3,
    "ram": 3,
  }),
];

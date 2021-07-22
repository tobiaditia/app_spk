class LaptopModel {
  int id;
  String nama;
  String merk;
  int harga;
  String baterai;
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
    this.grafis,
    this.ram,
    this.deskripsi,
    this.foto,
    this.bobot,
  );
}

var laptopList = [
  LaptopModel(1,"A442UR", "ASUS", 7000000, "5000 Mah", "Nvidia", "12 Gb",
      "Ini laptop Asus A442Ur", "/assets/union.png", {
    "harga": 3,
    "grafis": 3,
    "penyimpanan": 3,
    "baterai": 3,
    "ram": 3,
  }),
  LaptopModel(2,"A442URX", "ASUS", 8000000, "5000 Mah", "Nvidia", "12 Gb",
      "Ini laptop Asus A442Ur", "/assets/union.png", {
    "harga": 2,
    "grafis": 3,
    "penyimpanan": 3,
    "baterai": 3,
    "ram": 3,
  }),
  LaptopModel(3,"A442URZ", "ASUS", 6000000, "5000 Mah", "Nvidia", "12 Gb",
      "Ini laptop Asus A442Ur", "/assets/union.png", {
    "harga": 4,
    "grafis": 3,
    "penyimpanan": 3,
    "baterai": 3,
    "ram": 3,
  }),
];

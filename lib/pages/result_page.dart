import 'dart:math';

import 'package:app_spk/model/laptop.dart';
import 'package:app_spk/pages/widgets/laptop_result_tile.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final double bobotHarga;
  final double bobotGrafis;
  final double bobotPenyimpanan;
  final double bobotBaterai;
  final double bobotRam;

  ResultPage(this.bobotHarga, this.bobotGrafis, this.bobotPenyimpanan,
      this.bobotBaterai, this.bobotRam);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Map keputusanTernormalisasi = {
    "harga": 0,
    "grafis": 0,
    "penyimpanan": 0,
    "baterai": 0,
    "ram": 0,
  };

  List penentuanKeputusanTernormalisasi = [];

  Map maxValue = {
    "harga": 0,
    "grafis": 0,
    "penyimpanan": 0,
    "baterai": 0,
    "ram": 0,
  };
  Map minValue = {
    "harga": 0,
    "grafis": 0,
    "penyimpanan": 0,
    "baterai": 0,
    "ram": 0,
  };

  List nilaiPreferensi = [];

  List langkah() {
    laptopList.forEach((element) {
      keputusanTernormalisasi['harga'] +=
          pow(element.bobot['harga'], 2); //dipangkatkan 2
      keputusanTernormalisasi['grafis'] +=
          pow(element.bobot['grafis'], 2); //dipangkatkan 2
      keputusanTernormalisasi['penyimpanan'] +=
          pow(element.bobot['penyimpanan'], 2); //dipangkatkan 2
      keputusanTernormalisasi['baterai'] +=
          pow(element.bobot['baterai'], 2); //dipangkatkan 2
      keputusanTernormalisasi['ram'] +=
          pow(element.bobot['ram'], 2); //dipangkatkan 2
    });

    keputusanTernormalisasi = {
      'harga': sqrt(keputusanTernormalisasi['harga']),
      'grafis': sqrt(keputusanTernormalisasi['grafis']),
      'penyimpanan': sqrt(keputusanTernormalisasi['penyimpanan']),
      'baterai': sqrt(keputusanTernormalisasi['baterai']),
      'ram': sqrt(keputusanTernormalisasi['ram']),
    };

    laptopList.forEach((element) {
      penentuanKeputusanTernormalisasi.add({
        'id': element.id,
        'harga': (element.bobot['harga'] / keputusanTernormalisasi['harga']) *
            widget.bobotHarga,
        'grafis':
            (element.bobot['grafis'] / keputusanTernormalisasi['grafis']) *
                widget.bobotGrafis,
        'penyimpanan': (element.bobot['penyimpanan'] /
                keputusanTernormalisasi['penyimpanan']) *
            widget.bobotPenyimpanan,
        'baterai':
            (element.bobot['baterai'] / keputusanTernormalisasi['baterai']) *
                widget.bobotBaterai,
        'ram': (element.bobot['ram'] / keputusanTernormalisasi['ram']) *
            widget.bobotRam,
      });
    });

    if (penentuanKeputusanTernormalisasi != null &&
        penentuanKeputusanTernormalisasi.isNotEmpty) {
      maxValue = {
        'harga': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['harga'])
            .reduce(max),
        'grafis': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['grafis'])
            .reduce(max),
        'penyimpanan': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['penyimpanan'])
            .reduce(max),
        'baterai': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['baterai'])
            .reduce(max),
        'ram': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['ram'])
            .reduce(max),
      };
      minValue = {
        'harga': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['harga'])
            .reduce(min),
        'grafis': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['grafis'])
            .reduce(min),
        'penyimpanan': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['penyimpanan'])
            .reduce(min),
        'baterai': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['baterai'])
            .reduce(min),
        'ram': penentuanKeputusanTernormalisasi
            .map<double>((e) => e['ram'])
            .reduce(min),
      };
    }

    penentuanKeputusanTernormalisasi.forEach((element) {
      //mencari alternatif positif
      double alternatifPositif = sqrt(
          pow(element['harga'] - maxValue['harga'], 2) +
              pow(element['grafis'] - maxValue['grafis'], 2) +
              pow(element['penyimpanan'] - maxValue['penyimpanan'], 2) +
              pow(element['baterai'] - maxValue['baterai'], 2) +
              pow(element['ram'] - maxValue['ram'], 2));
      //mencari alternatif negatif
      double alternatifNegatif = sqrt(
          pow(element['harga'] - minValue['harga'], 2) +
              pow(element['grafis'] - minValue['grafis'], 2) +
              pow(element['penyimpanan'] - minValue['penyimpanan'], 2) +
              pow(element['baterai'] - minValue['baterai'], 2) +
              pow(element['ram'] - minValue['ram'], 2));

      nilaiPreferensi.add({
        'id': element['id'],
        'nilai': alternatifPositif / (alternatifPositif + alternatifNegatif)
      });
    });

    nilaiPreferensi.sort((b, a) => a['nilai'].compareTo(b['nilai']));
    // print(nilaiPreferensi);
    return nilaiPreferensi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor1,
          centerTitle: true,
          title: Text(
            "Hasil",
            style:
                primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
        ),
        backgroundColor: bgColor1,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              child: Column(
                children: langkah().map((e) => LaptopResultTile(e)).toList(),
              ),
            )
          ],
        ));
  }
}

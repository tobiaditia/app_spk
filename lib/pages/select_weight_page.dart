import 'package:app_spk/pages/home/laptop_page.dart';
import 'package:app_spk/pages/home/request_page.dart';
import 'package:app_spk/pages/result_page.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';

class SelectWeightPage extends StatefulWidget {
  @override
  _SelectWeightPageState createState() => _SelectWeightPageState();
}

class _SelectWeightPageState extends State<SelectWeightPage> {
  double _currentSliderValueHarga = 1;
  double _currentSliderValueGrafis = 1;
  double _currentSliderValuePenyimpanan = 1;
  double _currentSliderValueBaterai = 1;
  double _currentSliderValueRam = 1;

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Expanded(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Harga",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Slider(
                    value: _currentSliderValueHarga,
                    divisions: 4,
                    min: 1,
                    max: 5,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValueHarga = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Grafis",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Slider(
                    value: _currentSliderValueGrafis,
                    divisions: 4,
                    min: 1,
                    max: 5,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValueGrafis = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Penyimpanan",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Slider(
                    value: _currentSliderValuePenyimpanan,
                    divisions: 4,
                    min: 1,
                    max: 5,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValuePenyimpanan = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Baterai",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Slider(
                    value: _currentSliderValueBaterai,
                    divisions: 4,
                    min: 1,
                    max: 5,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValueBaterai = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Ram",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Slider(
                    value: _currentSliderValueRam,
                    divisions: 4,
                    min: 1,
                    max: 5,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValueRam = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 44,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 24),
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new ResultPage(
                                    _currentSliderValueHarga,
                                    _currentSliderValueGrafis,
                                    _currentSliderValuePenyimpanan,
                                    _currentSliderValueBaterai,
                                    _currentSliderValueRam)));
                      },
                      child: Text(
                        "Cek",
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              )));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          "Pilih Kriteria",
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      ),
      backgroundColor: bgColor1,
      body: Center(
          child: Column(
        children: [content()],
      )),
    );
  }
}

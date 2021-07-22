import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Kontak Admin",
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_headset.png',
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Hubungi Admin",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Hubungi admin untuk menambahkan data atau lainnya.",
            textAlign: TextAlign.center,
            style: secondaryTextStyle.copyWith(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 44,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Text(
                "Whatssapp",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          )
        ],
      )));
    }

    return Column(
      children: [header(), content()],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:app_spk/theme.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left))
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
        backgroundColor: Color(0xffecedef),
        body: ListView(
          children: [header()],
        ));
  }
}

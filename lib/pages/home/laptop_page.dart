import 'package:app_spk/model/laptop.dart';
import 'package:app_spk/pages/widgets/laptop_tile.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';

class LaptopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Laptop',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'List Laptop',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icon_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget laptop() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(children: laptopList.map((e) => LaptopTile(e)).toList()),
      );
    }

    return ListView(children: [header(), laptop()]);
  }
}

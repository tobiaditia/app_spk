import 'package:app_spk/model/laptop.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class LaptopTile extends StatelessWidget {
  final LaptopModel data;
  LaptopTile(this.data);

  @override
  Widget build(BuildContext context) {
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: data.harga.toDouble());

    MoneyFormatterOutput fo = fmf.output;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin:
            EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, defaultMargin),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Color(0xffecedef),
                child: Image.asset(
                  data.foto,
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.merk,
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  data.nama,
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Rp. "+fo.withoutFractionDigits,
                  style: priceTextStyle.copyWith(fontWeight: medium),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

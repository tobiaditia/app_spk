import 'package:app_spk/model/laptop.dart';
import 'package:app_spk/pages/product_page.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class LaptopResultTile extends StatelessWidget {
  final Map result;
  LaptopResultTile(this.result);

  @override
  Widget build(BuildContext context) {
    LaptopModel data = laptopList[result['id']-1];
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: data.harga.toDouble());

    MoneyFormatterOutput fo = fmf.output;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => new ProductPage(data)));
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
                  data.foto[0],
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
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Poin : " + result['nilai'].toString(),
                  style: priceTextStyle.copyWith(fontWeight: bold),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

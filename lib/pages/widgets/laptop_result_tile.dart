import 'package:app_spk/model/laptop.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class LaptopResultTile extends StatelessWidget {
  final Map data;
  LaptopResultTile(this.data);

  @override
  Widget build(BuildContext context) {
    LaptopModel dataLaptop = laptopList[data['id']-1];
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: dataLaptop.harga.toDouble());

    MoneyFormatterOutput fo = fmf.output;

    return Container(
      margin:
          EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, defaultMargin),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/image_shoes.png",
              width: 120,
              height: 120,
              fit: BoxFit.cover,
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
                dataLaptop.nama,
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
                "Poin : " + data['nilai'].toString(),
                style: priceTextStyle.copyWith(fontWeight: bold),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

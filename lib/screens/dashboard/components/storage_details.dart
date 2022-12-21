import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Store Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),

          StorageInfoCard(
            svgSrc: "assets/images/lazada.png",
            title: "Lazada",
            amountOfData: "1.3K Data",
            numOfRow: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/images/zalora.png",
            title: "Zalora",
            amountOfData: "15.3K Data",
            numOfRow: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/images/Shopee.png",
            title: "Shopee",
            amountOfData: "1.3K Data",
            numOfRow: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/images/qoo10.png",
            title: "Qoo10",
            amountOfData: "1.3K Data",
            numOfRow: 140,
          ),
        ],
      ),
    );
  }
}

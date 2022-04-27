import 'package:events/constants/images.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketItems {
  final String? name;
  final String? shortname;
  final String? price;
  final String? percentage;
  final bool? isdipping;
  final List<Color>? colors;
  final List<FlSpot>? spots;
  final String? imageUrl;

  MarketItems(
      {this.name,
      this.shortname,
      this.price,
      this.percentage,
      this.isdipping,
      this.imageUrl,
      this.colors,
      this.spots});
}

List marketImes = [
  MarketItems(
      colors: const [
        CupertinoColors.activeGreen,
        Colors.green,
        Colors.lightGreen,
        Colors.lightGreenAccent,
      ],
      imageUrl: bch,
      spots: [
        FlSpot(
          1,
          2,
        ),
        FlSpot(
          2,
          1.0,
        ),
        FlSpot(
          3,
          1.8,
        ),
        FlSpot(
          4,
          1.5,
        ),
        FlSpot(
          5,
          1.0,
        ),
        FlSpot(
          6,
          2.2,
        ),
        FlSpot(
          7,
          1.8,
        ),
        FlSpot(
          8,
          1.5,
        )
      ],
      name: 'Bitcoin Cash',
      shortname: 'BCH',
      price: '\$408.38',
      percentage: '+94.6%',
      isdipping: false),
  MarketItems(
      imageUrl: eth,
      colors: const [
        CupertinoColors.activeGreen,
        Colors.green,
        Colors.lightGreen,
        Colors.lightGreenAccent,
      ],
      spots: [
        FlSpot(
          1,
          2,
        ),
        FlSpot(
          2,
          1.0,
        ),
        FlSpot(
          3,
          1.6,
        ),
        FlSpot(
          4,
          1.5,
        ),
        FlSpot(
          5,
          1.4,
        ),
        FlSpot(
          6,
          2.6,
        ),
        FlSpot(
          7,
          1.5,
        ),
        FlSpot(
          8,
          1.0,
        )
      ],
      name: 'Ethereum',
      shortname: 'ETH',
      price: '\$110.20',
      percentage: '+11.15%',
      isdipping: false),
  MarketItems(
      imageUrl: lsk,
      colors: const [
        CupertinoColors.destructiveRed,
        Colors.red,
        Colors.redAccent,
        Colors.redAccent,
      ],
      spots: [
        FlSpot(
          1,
          1,
        ),
        FlSpot(
          2,
          7,
        ),
        FlSpot(
          3,
          1.2,
        ),
        FlSpot(
          4,
          1.5,
        ),
        FlSpot(
          5,
          1.4,
        ),
        FlSpot(
          6,
          2.9,
        ),
        FlSpot(
          7,
          1.0,
        ),
        FlSpot(
          8,
          1.9,
        )
      ],
      name: 'Lisk',
      shortname: 'Lsk',
      price: '\$219.80',
      percentage: '-51.15%',
      isdipping: true),
  MarketItems(
      imageUrl: snt,
      colors: const [
        CupertinoColors.activeGreen,
        Colors.lightGreenAccent,
        Colors.green,
        Colors.lightGreen,
      ],
      spots: [
        FlSpot(
          1,
          1,
        ),
        FlSpot(
          2,
          7,
        ),
        FlSpot(
          3,
          1.2,
        ),
        FlSpot(
          4,
          1.5,
        ),
        FlSpot(
          5,
          1.4,
        ),
        FlSpot(
          6,
          2.9,
        ),
        FlSpot(
          7,
          1.0,
        ),
        FlSpot(
          8,
          1.9,
        )
      ],
      name: 'Status Network Token',
      shortname: 'SNT',
      price: '\$515.90',
      percentage: '+11.15%',
      isdipping: false),
  MarketItems(
      imageUrl: xrp,
      colors: const [
        CupertinoColors.destructiveRed,
        Colors.red,
        Colors.redAccent,
        Colors.redAccent,
      ],
      spots: [
        FlSpot(
          1,
          1,
        ),
        FlSpot(
          2,
          7,
        ),
        FlSpot(
          3,
          1.2,
        ),
        FlSpot(
          4,
          1.5,
        ),
        FlSpot(
          5,
          1.4,
        ),
        FlSpot(
          6,
          2.9,
        ),
        FlSpot(
          7,
          1.0,
        ),
        FlSpot(
          8,
          1.9,
        )
      ],
      name: 'Ripple',
      shortname: 'XRP',
      price: '\$405.10',
      percentage: '+11.15%',
      isdipping: true),
  MarketItems(
      imageUrl: xlm,
      colors: const [
        CupertinoColors.activeGreen,
        Colors.green,
        Colors.lightGreen,
        Colors.lightGreenAccent,
      ],
      spots: [
        FlSpot(
          1,
          2,
        ),
        FlSpot(
          2,
          1.0,
        ),
        FlSpot(
          3,
          1.8,
        ),
        FlSpot(
          4,
          1.5,
        ),
        FlSpot(
          5,
          1.0,
        ),
        FlSpot(
          6,
          2.2,
        ),
        FlSpot(
          7,
          1.8,
        ),
        FlSpot(
          8,
          1.5,
        )
      ],
      name: 'Stellar',
      shortname: 'XLM',
      price: '\$408.38',
      percentage: '+94.6%',
      isdipping: true),
];

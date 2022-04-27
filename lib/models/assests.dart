import 'package:events/constants/images.dart';

class Assets {
  final String? assetName;
  final String? assetType;
  final String? fullname;
  final String? assetImage;
  final String? currrentPrice;
  final String? percentage;
  final bool? isdipping;

  Assets({
    this.assetName,
    this.assetType,
    this.fullname,
    this.assetImage,
    this.currrentPrice,
    this.percentage,
    this.isdipping,
  });
}

List<Assets> assets = [
  Assets(
    assetImage: btc,
    assetName: 'BTC',
    assetType: 'Crypto',
    fullname: 'Bitcoin',
    currrentPrice: '\$5.140',
    percentage: '-1.15%',
    isdipping: true,
  ),
  Assets(
    assetImage: eth,
    assetName: 'ETH',
    assetType: 'Crypto',
    fullname: 'Ethereum',
    currrentPrice: '\$4.00',
    percentage: '11.15%',
    isdipping: false,
  ),
];

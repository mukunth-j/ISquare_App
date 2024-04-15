import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class MySensorCard extends StatelessWidget {
  const MySensorCard(
      {super.key,
      required this.value,
      required this.name,
      required this.assetImage,
      required this.unit,
      required this.trendData,
      required this.linePoint});

  final double value;
  final String name;
  final String unit;
  final List<double> trendData;
  final Color linePoint;
  final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        shadowColor: Colors.white,
        elevation: 24,
        color: kMainBG,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 200,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      width: 60,
                      image: assetImage,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(name, style: kBodyText.copyWith(color: Colors.white)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('$value$unit',
                        style: kHeadline.copyWith(
                            fontSize: 28, color: Colors.white)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
                  child: Sparkline(
                    enableGridLines: true,
                    maxLine: true,
                    data: trendData,
                    lineWidth: 5.0,
                    lineColor: Colors.white,
                    fillMode: FillMode.below,
                    fillColor: chkLimit(value)
                        ? Colors.green.withOpacity(0.6)
                        : Colors.red.withOpacity(0.6),
                    sharpCorners: false,
                    pointsMode: PointsMode.last,
                    pointSize: 20,
                    pointColor: linePoint,
                    useCubicSmoothing: true,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

chkLimit(double value) {
  if (value < 300) {
    return true;
  }
  return false;
}

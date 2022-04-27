import 'package:events/widgets/linechartdata.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LineChartContent extends StatelessWidget {
  const LineChartContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData:
            FlBorderData(border: Border.all(color: Colors.white, width: 0.5)),
        gridData: FlGridData(
          drawHorizontalLine: false,
        ),
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value, dd) => GoogleFonts.balooBhai2(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'Mon';
                case 2:
                  return 'Tues';
                case 3:
                  return 'Wed';
                case 4:
                  return 'Thu';
                case 5:
                  return 'Fri';
                case 6:
                  return 'Sat';
                case 7:
                  return 'Sun';
              }
              return '';
            },
          ),
          leftTitles: SideTitles(
            margin: 30,
            interval: 3,
            showTitles: true,
            getTextStyles: (value, dd) => GoogleFonts.balooBhai2(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return '\$1,000';
                case 2:
                  return '\$2,000';
                case 3:
                  return '\$3,000';
                case 4:
                  return '\$4,000';
                case 5:
                  return '\$5,000';
                case 6:
                  return '\$6,000';
                case 7:
                  return '\$7,000';
                case 8:
                  return '\$8,000';
                case 9:
                  return '\$9,000';
                case 10:
                  return '\$10,000';
                case 11:
                  return '\$11,000';
                case 12:
                  return '\$12,000';
                case 13:
                  return '\$13,000';
                case 14:
                  return '\$14,000';
                case 15:
                  return '\$15,000';
                case 16:
                  return '\$16,000';
              }
              return '';
            },
          ),
        ),
        minX: 1,
        minY: 1,
        maxX: 7,
        maxY: 16,
        lineBarsData: lineChartBarData,
      ),
    );
  }
}

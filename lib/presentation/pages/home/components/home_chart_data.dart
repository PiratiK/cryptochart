import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../domain/model/history_model.dart';
import '../../../../domain/store/coin/coin_store.dart';

class HomeChartData extends StatelessWidget {
  final List<History> history;
  const HomeChartData({
    Key? key,
    required this.history,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CoinStore coinStore = context.watch<CoinStore>();

    Widget bottomTitleWidget(double value, TitleMeta meta) {
      String current;
      switch (value.toInt()) {
        case 2:
          current = Jiffy(coinStore.end!).format('MMM d, h:mm a');
          break;
        case 20:
          current = Jiffy(coinStore.start!).format('MMM d, h:mm a');
          break;
        default:
          current = '';
      }
      return current.text.black.bold.size(14.0).make().pOnly(top: 8.0);
    }

    Widget leftTitleWidget(double value, TitleMeta meta) {
      String current;
      switch (value.toInt()) {
        case 10:
          current = coinStore.hMax.toString();
          break;
        case 6:
          current = coinStore.hMid.toString();
          break;
        case 2:
          current = coinStore.hMin.toString();
          break;
        default:
          current = '';
      }
      return current.text.black.bold.size(10.0).align(TextAlign.left).make();
    }

    List<FlSpot> list() {
      final coff = 12 / (coinStore.hMax! - coinStore.hMin!);
      List<FlSpot> list = [];
      history.forEachIndexed((i, e) {
        var point = coff * (e.rate - coinStore.hMin!);
        list.add(FlSpot(i.toDouble(), point));
      });
      return list;
    }

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          horizontalInterval: 1,
          verticalInterval: 1,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: bottomTitleWidget,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: leftTitleWidget,
              reservedSize: 42,
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: const Color(0xff37434d),
            width: 1,
          ),
        ),
        minX: 0,
        maxX: 24,
        minY: 0,
        maxY: 12,
        lineTouchData: LineTouchData(enabled: false),
        lineBarsData: [
          LineChartBarData(
            spots: list(),
            isCurved: true,
            color: Colors.black,
            barWidth: 2.0,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}

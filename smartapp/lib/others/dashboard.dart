import 'package:flutter/material.dart';
import 'package:smartapp/others/services/update_db.dart';

import 'services/sensorcard.dart';

List<double>? mq9List = [0];
List<double>? mq7List = [0];
List<double>? mq4List = [0];

class MainDash extends StatefulWidget {
  const MainDash({super.key});

  @override
  State<MainDash> createState() => _MainDashState();
}

class _MainDashState extends State<MainDash> {
//====================================================================================================
//====================================================================================================
//=================================== FIREBASE CODE AREA =============================================
//====================================================================================================
//====================================================================================================

  String myvalue = "";
  void updatemq4(String a) => setState(() => mq4List?.add(double.parse(a)));
  void updatemq7(String a) => setState(() => mq7List?.add(double.parse(a)));
  void updatemq9(String a) => setState(() => mq9List?.add(double.parse(a)));

  @override
  void initState() {
    super.initState();
    fbs.sendData(mq9val: "0", mq4val: "0", mq7val: "0");
    fbs.getData("SensorData", "mq4", updatemq4);
    fbs.getData("SensorData", "mq7", updatemq7);
    fbs.getData("SensorData", "mq9", updatemq9);
  }
//====================================================================================================
//================================ END OF FIREBASE CODE AREA =========================================
//====================================================================================================

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Text(
        //   "${mq4List!.length} and ${mq7List!.length} and ${mq9List!.length}",
        //   style: const TextStyle(fontSize: 30, color: Colors.white),
        // ),
        MySensorCard(
          value: mq4List!.last.toDouble(),
          unit: ' PPM',
          name: 'MQ-4 Methane',
          assetImage: const AssetImage(
            'assets/images/mq4.png',
          ),
          trendData: mq4List!,
          linePoint: Colors.pinkAccent,
        ),
        const SizedBox(
          height: 50,
        ),
        MySensorCard(
          value: mq7List!.last.toDouble(),
          unit: ' PPM',
          name: 'MQ-7 Carbon Monoxide',
          assetImage: const AssetImage(
            'assets/images/co.png',
          ),
          trendData: mq7List!,
          linePoint: Colors.yellowAccent,
        ),
        const SizedBox(
          height: 50,
        ),
        MySensorCard(
          value: mq9List!.last.toDouble(),
          unit: ' PPM',
          name: 'MQ-9 LPG',
          assetImage: const AssetImage(
            'assets/images/lpg.png',
          ),
          trendData: mq9List!,
          linePoint: Colors.blueAccent,
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

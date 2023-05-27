import 'dart:async';


import 'package:drop_shadow/drop_shadow.dart';

import 'package:flutter/material.dart';

import 'package:sensors_plus/sensors_plus.dart';

class ParallexCard extends StatefulWidget {
  const ParallexCard({Key? key}) : super(key: key);

  @override
  State<ParallexCard> createState() => _ParallexCardState();
}

class _ParallexCardState extends State<ParallexCard>
    with TickerProviderStateMixin {
  double xAngle = 0;
  double prevXAngle = 0;
  double yAngle = 0;
  double prevYAngle = 0;
  double zAngle = 0;
  double prevZAngle = 0;
 
  final streamsub = <StreamSubscription<dynamic>>[];

  @override
  void initState() {
    super.initState();

    streamsub.add(userAccelerometerEvents.listen((event) {
      setState(() {
        prevXAngle = xAngle;
        xAngle = event.x;
        prevYAngle = yAngle;
        yAngle = double.parse(event.y.toString());
        prevZAngle = zAngle;
        zAngle = double.parse(event.z.toString());
      });
    }));
  }

  @override
  void dispose() {
    super.dispose();
    for (final sub in streamsub) {
      sub.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
          tween: Tween(begin: prevXAngle, end: xAngle),
          duration: const Duration(milliseconds: 500),
          builder: (context, double xValue, _) {
            return TweenAnimationBuilder(
                tween: Tween(begin: prevZAngle, end: zAngle),
                duration: const Duration(milliseconds: 500),
                builder: (context, double zValue, _) {
                  return 
                    
                    Transform(
                        origin: const Offset(150, 150),
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.0015)
                          ..rotateX(-zValue )
                          ..rotateY(xValue ),
                        child: Container(child: DropShadow(child: SizedBox(width: 500,height: 800,child: Image.asset('asset/images/card.png')))))
                  ;
                });
          }),
    );
  }
}

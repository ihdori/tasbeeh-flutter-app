import 'package:flutter/material.dart';

class FrameCustomPainterLonge extends CustomPainter {
  FrameCustomPainterLonge({this.color = Colors.blue});
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.08306983, size.height * 0.9540878);
    path_0.cubicTo(size.width * 0.06614918, size.height * 0.9715398, size.width * 0.05358559, size.height * 0.9205262, size.width * 0.05536226, size.height * 0.8256813);
    path_0.cubicTo(size.width * 0.05410379, size.height * 0.8236676, size.width * 0.05280301, size.height * 0.8209827, size.width * 0.05147051, size.height * 0.8195731);
    path_0.arcToPoint(Offset(size.width * 0.02765469, size.height * 0.7139885), radius: Radius.elliptical(size.width * 0.03237132, size.height * 0.2054638), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.02543386, size.height * 0.6891529, size.width * 0.02342453, size.height * 0.6637804, size.width * 0.02141520, size.height * 0.6380051);
    path_0.cubicTo(size.width * 0.01699468, size.height * 0.5796080, size.width * 0.01110418, size.height * 0.5302725, 0, size.height * 0.4995301);
    path_0.cubicTo(size.width * 0.01318753, size.height * 0.4673782, size.width * 0.01871847, size.height * 0.4022688, size.width * 0.02357258, size.height * 0.3344073);
    path_0.cubicTo(size.width * 0.02981208, size.height * 0.2471473, size.width * 0.03904441, size.height * 0.1849242, size.width * 0.05500270, size.height * 0.1785475);
    path_0.cubicTo(size.width * 0.05448450, size.height * 0.07994362, size.width * 0.06416100, size.height * 0.03195060, size.width * 0.08308040, size.height * 0.04604645);
    path_0.cubicTo(size.width * 0.08466672, size.height * 0.001812324, size.width * 0.08994384, 0, size.width * 0.09623621, 0);
    path_0.cubicTo(size.width * 0.2207722, size.height * 0.0009397235, size.width * 0.7789528, size.height * 0.0009397235, size.width * 0.9035417, 0);
    path_0.cubicTo(size.width * 0.9097600, 0, size.width * 0.9150689, size.height * 0.001610954, size.width * 0.9167292, size.height * 0.04571083);
    path_0.cubicTo(size.width * 0.9368225, size.height * 0.03758894, size.width * 0.9433158, size.height * 0.06812995, size.width * 0.9448281, size.height * 0.1784132);
    path_0.cubicTo(size.width * 0.9609979, size.height * 0.1851255, size.width * 0.9702091, size.height * 0.2489596, size.width * 0.9764591, size.height * 0.3376292);
    path_0.cubicTo(size.width * 0.9811863, size.height * 0.4047523, size.width * 0.9868019, size.height * 0.4678480, size.width, size.height * 0.5002014);
    path_0.cubicTo(size.width * 0.9868653, size.height * 0.5328903, size.width * 0.9812181, size.height * 0.5958518, size.width * 0.9764803, size.height * 0.6625722);
    path_0.cubicTo(size.width * 0.9701985, size.height * 0.7510404, size.width * 0.9611142, size.height * 0.8158142, size.width * 0.9449021, size.height * 0.8220567);
    path_0.cubicTo(size.width * 0.9430514, size.height * 0.9322728, size.width * 0.9359765, size.height * 0.9654987, size.width * 0.9167187, size.height * 0.9544234);
    path_0.cubicTo(size.width * 0.9151324, size.height * 0.9993288, size.width * 0.9097495, size.height * 1.000067, size.width * 0.9035629, size.height);
    path_0.cubicTo(size.width * 0.7789740, size.height * 0.9991274, size.width * 0.2207934, size.height * 0.9991274, size.width * 0.09620449, size.height);
    path_0.cubicTo(size.width * 0.09001787, size.height * 1.000134, size.width * 0.08460326, size.height * 0.9992616, size.width * 0.08306983, size.height * 0.9540878);
    path_0.close();
    path_0.moveTo(size.width * 0.09294726, size.height * 0.9347563);
    path_0.lineTo(size.width * 0.9068095, size.height * 0.9347563);
    path_0.cubicTo(size.width * 0.9079622, size.height * 0.9138811, size.width * 0.9090726, size.height * 0.8936770, size.width * 0.9102677, size.height * 0.8721305);
    path_0.arcToPoint(Offset(size.width * 0.9183790, size.height * 0.8874346), radius: Radius.elliptical(size.width * 0.07230406, size.height * 0.4589207), rotation: 0, largeArc: false, clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.9268393, size.height * 0.8909250), radius: Radius.elliptical(size.width * 0.03024567, size.height * 0.1919721), rotation: 0, largeArc: false, clockwise: false);
    path_0.cubicTo(size.width * 0.9329942, size.height * 0.8864948, size.width * 0.9348766, size.height * 0.8690428, size.width * 0.9340518, size.height * 0.8301114);
    path_0.cubicTo(size.width * 0.9336287, size.height * 0.8099745, size.width * 0.9332269, size.height * 0.7898376, size.width * 0.9327721, size.height * 0.7670828);
    path_0.arcToPoint(Offset(size.width * 0.9387155, size.height * 0.7626527), radius: Radius.elliptical(size.width * 0.05016974, size.height * 0.3184320), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.9532673, size.height * 0.7626527, size.width * 0.9620872, size.height * 0.7149953, size.width * 0.9677450, size.height * 0.6328366);
    path_0.cubicTo(size.width * 0.9709811, size.height * 0.5858504, size.width * 0.9757612, size.height * 0.5432944, size.width * 0.9795577, size.height * 0.5019466);
    path_0.cubicTo(size.width * 0.9746296, size.height * 0.4457645, size.width * 0.9694476, size.height * 0.3887099, size.width * 0.9645618, size.height * 0.3306484);
    path_0.cubicTo(size.width * 0.9599192, size.height * 0.2754732, size.width * 0.9529289, size.height * 0.2451336, size.width * 0.9430514, size.height * 0.2415761);
    path_0.cubicTo(size.width * 0.9396779, size.height * 0.2403678, size.width * 0.9363255, size.height * 0.2364747, size.width * 0.9337133, size.height * 0.2344610);
    path_0.cubicTo(size.width * 0.9311224, size.height * 0.1913680, size.width * 0.9394769, size.height * 0.1359914, size.width * 0.9296947, size.height * 0.1163915);
    path_0.cubicTo(size.width * 0.9238148, size.height * 0.1045778, size.width * 0.9167081, size.height * 0.1175326, size.width * 0.9096649, size.height * 0.1195462);
    path_0.lineTo(size.width * 0.9067461, size.height * 0.06537790);
    path_0.lineTo(size.width * 0.09306359, size.height * 0.06537790);
    path_0.cubicTo(size.width * 0.09187914, size.height * 0.08645456, size.width * 0.09074758, size.height * 0.1067257, size.width * 0.08977464, size.height * 0.1239092);
    path_0.cubicTo(size.width * 0.08398989, size.height * 0.1184723, size.width * 0.07877621, size.height * 0.1094778, size.width * 0.07356254, size.height * 0.1096120);
    path_0.cubicTo(size.width * 0.06712211, size.height * 0.1096120, size.width * 0.06491185, size.height * 0.1306216, size.width * 0.06572616, size.height * 0.1704927);
    path_0.cubicTo(size.width * 0.06613860, size.height * 0.1906296, size.width * 0.06654047, size.height * 0.2107665, size.width * 0.06699521, size.height * 0.2332528);
    path_0.arcToPoint(Offset(size.width * 0.05919056, size.height * 0.2399651), radius: Radius.elliptical(size.width * 0.05858776, size.height * 0.3718620), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.04662697, size.height * 0.2399651, size.width * 0.03874829, size.height * 0.2811116, size.width * 0.03342886, size.height * 0.3508525);
    path_0.cubicTo(size.width * 0.02945251, size.height * 0.4030071, size.width * 0.02450322, size.height * 0.4522084, size.width * 0.02025191, size.height * 0.4997315);
    path_0.cubicTo(size.width * 0.02488393, size.height * 0.5520204, size.width * 0.02994956, size.height * 0.6050477, size.width * 0.03437008, size.height * 0.6602228);
    path_0.cubicTo(size.width * 0.03925591, size.height * 0.7212378, size.width * 0.04643662, size.height * 0.7567459, size.width * 0.05743504, size.height * 0.7593637);
    path_0.arcToPoint(Offset(size.width * 0.06605400, size.height * 0.7664787), radius: Radius.elliptical(size.width * 0.08590404, size.height * 0.5452410), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.06894108, size.height * 0.8061485, size.width * 0.06041731, size.height * 0.8617935, size.width * 0.06959676, size.height * 0.8826688);
    path_0.cubicTo(size.width * 0.07556129, size.height * 0.8960934, size.width * 0.08292177, size.height * 0.8852195, size.width * 0.09038801, size.height * 0.8852195);
    path_0.cubicTo(size.width * 0.09094851, size.height * 0.8956907, size.width * 0.09191087, size.height * 0.9150222, size.width * 0.09294726, size.height * 0.9347563);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

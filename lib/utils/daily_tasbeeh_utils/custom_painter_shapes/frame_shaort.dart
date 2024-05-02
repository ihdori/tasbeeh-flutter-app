import 'package:flutter/material.dart';

class FrameCustomPainterShort extends CustomPainter {
  final Color color;
  FrameCustomPainterShort({super.repaint, this.color = Colors.blue});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1466607, size.height * 0.9540878);
    path_0.cubicTo(size.width * 0.1167871, size.height * 0.9715398, size.width * 0.09460595, size.height * 0.9205262, size.width * 0.09774268, size.height * 0.8256813);
    path_0.cubicTo(size.width * 0.09552083, size.height * 0.8236676, size.width * 0.09322429, size.height * 0.8209827, size.width * 0.09087175, size.height * 0.8195731);
    path_0.arcToPoint(Offset(size.width * 0.04882466, size.height * 0.7139885), radius: Radius.elliptical(size.width * 0.05715193, size.height * 0.2054638), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.04490375, size.height * 0.6891529, size.width * 0.04135626, size.height * 0.6637804, size.width * 0.03780877, size.height * 0.6380051);
    path_0.cubicTo(size.width * 0.03000429, size.height * 0.5796080, size.width * 0.01960455, size.height * 0.5302725, 0, size.height * 0.4995301);
    path_0.cubicTo(size.width * 0.02328273, size.height * 0.4673782, size.width * 0.03304767, size.height * 0.4022688, size.width * 0.04161766, size.height * 0.3344073);
    path_0.cubicTo(size.width * 0.05263354, size.height * 0.2471473, size.width * 0.06893333, size.height * 0.1849242, size.width * 0.09710786, size.height * 0.1785475);
    path_0.cubicTo(size.width * 0.09619298, size.height * 0.07994362, size.width * 0.1132769, size.height * 0.03195060, size.width * 0.1466794, size.height * 0.04604645);
    path_0.cubicTo(size.width * 0.1494800, size.height * 0.001812324, size.width * 0.1587968, 0, size.width * 0.1699061, 0);
    path_0.quadraticBezierTo(size.width * 0.4997479, size.height * 0.001409585, size.width * 0.8297018, 0);
    path_0.cubicTo(size.width * 0.8406804, 0, size.width * 0.8500532, size.height * 0.001610954, size.width * 0.8529846, size.height * 0.04571083);
    path_0.cubicTo(size.width * 0.8884595, size.height * 0.03758894, size.width * 0.8999234, size.height * 0.06812995, size.width * 0.9025934, size.height * 0.1784132);
    path_0.cubicTo(size.width * 0.9311414, size.height * 0.1851255, size.width * 0.9474038, size.height * 0.2489596, size.width * 0.9584384, size.height * 0.3376292);
    path_0.cubicTo(size.width * 0.9667843, size.height * 0.4047523, size.width * 0.9766986, size.height * 0.4678480, size.width, size.height * 0.5002014);
    path_0.cubicTo(size.width * 0.9768106, size.height * 0.5328903, size.width * 0.9668403, size.height * 0.5958518, size.width * 0.9584757, size.height * 0.6625722);
    path_0.cubicTo(size.width * 0.9473851, size.height * 0.7510404, size.width * 0.9313467, size.height * 0.8158142, size.width * 0.9027241, size.height * 0.8220567);
    path_0.cubicTo(size.width * 0.8994567, size.height * 0.9322728, size.width * 0.8869658, size.height * 0.9654987, size.width * 0.8529659, size.height * 0.9544234);
    path_0.cubicTo(size.width * 0.8501652, size.height * 0.9993288, size.width * 0.8406617, size.height * 1.000067, size.width * 0.8297392, size.height);
    path_0.quadraticBezierTo(size.width * 0.4997853, size.height * 0.9987247, size.width * 0.1699061, size.height * 1.000134);
    path_0.cubicTo(size.width * 0.1589275, size.height * 1.000134, size.width * 0.1493680, size.height * 0.9992616, size.width * 0.1466607, size.height * 0.9540878);
    path_0.close();
    path_0.moveTo(size.width * 0.1640994, size.height * 0.9347563);
    path_0.lineTo(size.width * 0.8354712, size.height * 0.9347563);
    path_0.cubicTo(size.width * 0.8375063, size.height * 0.9138811, size.width * 0.8394668, size.height * 0.8936770, size.width * 0.8415766, size.height * 0.8721305);
    path_0.arcToPoint(Offset(size.width * 0.8558972, size.height * 0.8874346), radius: Radius.elliptical(size.width * 0.1276536, size.height * 0.4589207), rotation: 0, largeArc: false, clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8708340, size.height * 0.8909250), radius: Radius.elliptical(size.width * 0.05339906, size.height * 0.1919721), rotation: 0, largeArc: false, clockwise: false);
    path_0.cubicTo(size.width * 0.8817006, size.height * 0.8864948, size.width * 0.8850240, size.height * 0.8690428, size.width * 0.8835677, size.height * 0.8301114);
    path_0.cubicTo(size.width * 0.8828208, size.height * 0.8099745, size.width * 0.8821113, size.height * 0.7898376, size.width * 0.8813085, size.height * 0.7670828);
    path_0.arcToPoint(Offset(size.width * 0.8918016, size.height * 0.7626527), radius: Radius.elliptical(size.width * 0.08857522, size.height * 0.3184320), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.9174929, size.height * 0.7626527, size.width * 0.9330645, size.height * 0.7149953, size.width * 0.9430535, size.height * 0.6328366);
    path_0.cubicTo(size.width * 0.9487668, size.height * 0.5858504, size.width * 0.9572061, size.height * 0.5432944, size.width * 0.9639090, size.height * 0.5019466);
    path_0.cubicTo(size.width * 0.9552083, size.height * 0.4457645, size.width * 0.9460595, size.height * 0.3887099, size.width * 0.9374335, size.height * 0.3306484);
    path_0.cubicTo(size.width * 0.9292369, size.height * 0.2754732, size.width * 0.9168954, size.height * 0.2451336, size.width * 0.8994567, size.height * 0.2415761);
    path_0.cubicTo(size.width * 0.8935006, size.height * 0.2403678, size.width * 0.8875819, size.height * 0.2364747, size.width * 0.8829702, size.height * 0.2344610);
    path_0.cubicTo(size.width * 0.8783958, size.height * 0.1913680, size.width * 0.8931459, size.height * 0.1359914, size.width * 0.8758752, size.height * 0.1163915);
    path_0.cubicTo(size.width * 0.8654941, size.height * 0.1045778, size.width * 0.8529472, size.height * 0.1175326, size.width * 0.8405123, size.height * 0.1195462);
    path_0.lineTo(size.width * 0.8353591, size.height * 0.06537790);
    path_0.lineTo(size.width * 0.1643048, size.height * 0.06537790);
    path_0.cubicTo(size.width * 0.1622136, size.height * 0.08645456, size.width * 0.1602158, size.height * 0.1067257, size.width * 0.1584981, size.height * 0.1239092);
    path_0.cubicTo(size.width * 0.1482851, size.height * 0.1184723, size.width * 0.1390803, size.height * 0.1094778, size.width * 0.1298755, size.height * 0.1096120);
    path_0.cubicTo(size.width * 0.1185048, size.height * 0.1096120, size.width * 0.1146026, size.height * 0.1306216, size.width * 0.1160403, size.height * 0.1704927);
    path_0.cubicTo(size.width * 0.1167684, size.height * 0.1906296, size.width * 0.1174779, size.height * 0.2107665, size.width * 0.1182808, size.height * 0.2332528);
    path_0.arcToPoint(Offset(size.width * 0.1045016, size.height * 0.2399651), radius: Radius.elliptical(size.width * 0.1034373, size.height * 0.3718620), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.08232043, size.height * 0.2399651, size.width * 0.06841054, size.height * 0.2811116, size.width * 0.05901903, size.height * 0.3508525);
    path_0.cubicTo(size.width * 0.05199873, size.height * 0.4030071, size.width * 0.04326070, size.height * 0.4522084, size.width * 0.03575496, size.height * 0.4997315);
    path_0.cubicTo(size.width * 0.04393286, size.height * 0.5520204, size.width * 0.05287627, size.height * 0.6050477, size.width * 0.06068074, size.height * 0.6602228);
    path_0.cubicTo(size.width * 0.06930675, size.height * 0.7212378, size.width * 0.08198435, size.height * 0.7567459, size.width * 0.1014022, size.height * 0.7593637);
    path_0.arcToPoint(Offset(size.width * 0.1166191, size.height * 0.7664787), radius: Radius.elliptical(size.width * 0.1516645, size.height * 0.5452410), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.1217162, size.height * 0.8061485, size.width * 0.1066674, size.height * 0.8617935, size.width * 0.1228738, size.height * 0.8826688);
    path_0.cubicTo(size.width * 0.1334043, size.height * 0.8960934, size.width * 0.1463993, size.height * 0.8852195, size.width * 0.1595810, size.height * 0.8852195);
    path_0.cubicTo(size.width * 0.1605706, size.height * 0.8956907, size.width * 0.1622696, size.height * 0.9150222, size.width * 0.1640994, size.height * 0.9347563);
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

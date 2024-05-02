import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CustomPaint textToSay({
  required text,
  required BuildContext context,
  shape,
  double width = 200,
  double fontSize = 24,
}) {
  shape = shape ?? FrameCustomPainterSmall(context: context);
  return CustomPaint(
    size: Size(200, (200 * 0.2781667727562062).toDouble()),
    painter: shape,
    child: Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: fontSize),
      ),
    ),
  );
}

//old
class FrameCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1466423, size.height * 0.9540427);
    path_0.cubicTo(size.width * 0.1166985, size.height * 0.9714912, size.width * 0.09460535, size.height * 0.9207666, size.width * 0.09773499, size.height * 0.8257056);
    path_0.cubicTo(size.width * 0.09550711, size.height * 0.8236079, size.width * 0.09322618, size.height * 0.8209382, size.width * 0.09086569, size.height * 0.8195080);
    path_0.arcToPoint(Offset(size.width * 0.04882771, size.height * 0.7139588), radius: Radius.elliptical(size.width * 0.05707617, size.height * 0.2051869), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.04490240, size.height * 0.6891686, size.width * 0.04124231, size.height * 0.6637109, size.width * 0.03782092, size.height * 0.6376812);
    path_0.cubicTo(size.width * 0.02999682, size.height * 0.5796148, size.width * 0.01960004, size.height * 0.5299390, 0, size.height * 0.4995233);
    path_0.cubicTo(size.width * 0.02328665, size.height * 0.4672006, size.width * 0.03304689, size.height * 0.4022693, size.width * 0.04161362, size.height * 0.3343822);
    path_0.cubicTo(size.width * 0.05262041, size.height * 0.2470442, size.width * 0.06895820, size.height * 0.1848780, size.width * 0.09712497, size.height * 0.1784897);
    path_0.cubicTo(size.width * 0.09619669, size.height * 0.07990084, size.width * 0.1132771, size.height * 0.03194127, size.width * 0.1466688, size.height * 0.04605263);
    path_0.cubicTo(size.width * 0.1494802, size.height * 0.001811594, size.width * 0.1587895, 0, size.width * 0.1697433, 0);
    path_0.quadraticBezierTo(size.width * 0.4996817, size.height * 0.001430206, size.width * 0.8296202, 0);
    path_0.cubicTo(size.width * 0.8406005, 0, size.width * 0.8499629, size.height * 0.001620900, size.width * 0.8529069, size.height * 0.04576659);
    path_0.cubicTo(size.width * 0.8884468, size.height * 0.03766209, size.width * 0.8998515, size.height * 0.06817315, size.width * 0.9025037, size.height * 0.1783944);
    path_0.cubicTo(size.width * 0.9310418, size.height * 0.1850686, size.width * 0.9472470, size.height * 0.2489512, size.width * 0.9583333, size.height * 0.3376240);
    path_0.cubicTo(size.width * 0.9666879, size.height * 0.4043669, size.width * 0.9766073, size.height * 0.4677727, size.width * 0.9999204, size.height * 0.5001907);
    path_0.cubicTo(size.width * 0.9767133, size.height * 0.5328947, size.width * 0.9667409, size.height * 0.5955378, size.width * 0.9583864, size.height * 0.6622807);
    path_0.cubicTo(size.width * 0.9473000, size.height * 0.7507628, size.width * 0.9312540, size.height * 0.8155034, size.width * 0.9026894, size.height * 0.8217010);
    path_0.cubicTo(size.width * 0.8994006, size.height * 0.9319222, size.width * 0.8869351, size.height * 0.9651983, size.width * 0.8529334, size.height * 0.9541381);
    path_0.cubicTo(size.width * 0.8501485, size.height * 0.9990465, size.width * 0.8406270, size.height * 0.9997140, size.width * 0.8297263, size.height * 0.9997140);
    path_0.quadraticBezierTo(size.width * 0.4997613, size.height * 0.9984744, size.width * 0.1698228, size.height * 0.9997140);
    path_0.cubicTo(size.width * 0.1589221, size.height, size.width * 0.1494271, size.height * 0.9992372, size.width * 0.1466423, size.height * 0.9540427);
    path_0.close();
    path_0.moveTo(size.width * 0.1640940, size.height * 0.9349733);
    path_0.lineTo(size.width * 0.8354551, size.height * 0.9349733);
    path_0.cubicTo(size.width * 0.8374708, size.height * 0.9141876, size.width * 0.8394335, size.height * 0.8939741, size.width * 0.8415553, size.height * 0.8723303);
    path_0.arcToPoint(Offset(size.width * 0.8558508, size.height * 0.8876812), radius: Radius.elliptical(size.width * 0.1249204, size.height * 0.4490847), rotation: 0, largeArc: false, clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8708625, size.height * 0.8912090), radius: Radius.elliptical(size.width * 0.05304477, size.height * 0.1906941), rotation: 0, largeArc: false, clockwise: false);
    path_0.cubicTo(size.width * 0.8817102, size.height * 0.8868230, size.width * 0.8850520, size.height * 0.8692792, size.width * 0.8835933, size.height * 0.8303776);
    path_0.cubicTo(size.width * 0.8828241, size.height * 0.8101640, size.width * 0.8821345, size.height * 0.7899504, size.width * 0.8813388, size.height * 0.7673532);
    path_0.arcToPoint(Offset(size.width * 0.8918152, size.height * 0.7628719), radius: Radius.elliptical(size.width * 0.09192659, size.height * 0.3304729), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.9175154, size.height * 0.7628719, size.width * 0.9330840, size.height * 0.7151983, size.width * 0.9430830, size.height * 0.6331045);
    path_0.cubicTo(size.width * 0.9487853, size.height * 0.5861937, size.width * 0.9572194, size.height * 0.5435736, size.width * 0.9639296, size.height * 0.5021930);
    path_0.cubicTo(size.width * 0.9552302, size.height * 0.4460336, size.width * 0.9460800, size.height * 0.3890160, size.width * 0.9374072, size.height * 0.3305683);
    path_0.cubicTo(size.width * 0.9292118, size.height * 0.2753623, size.width * 0.9169054, size.height * 0.2447559, size.width * 0.8994271, size.height * 0.2415141);
    path_0.cubicTo(size.width * 0.8934596, size.height * 0.2402746, size.width * 0.8875451, size.height * 0.2363654, size.width * 0.8829302, size.height * 0.2343631);
    path_0.cubicTo(size.width * 0.8783683, size.height * 0.1912662, size.width * 0.8931148, size.height * 0.1358696, size.width * 0.8758487, size.height * 0.1162281);
    path_0.cubicTo(size.width * 0.8654785, size.height * 0.1045004, size.width * 0.8529069, size.height * 0.1174676, size.width * 0.8404944, size.height * 0.1194699);
    path_0.lineTo(size.width * 0.8354551, size.height * 0.06540809);
    path_0.lineTo(size.width * 0.1644388, size.height * 0.06540809);
    path_0.cubicTo(size.width * 0.1623700, size.height * 0.08647979, size.width * 0.1603543, size.height * 0.1066934, size.width * 0.1586569, size.height * 0.1239512);
    path_0.cubicTo(size.width * 0.1484458, size.height * 0.1184211, size.width * 0.1392160, size.height * 0.1094584, size.width * 0.1300127, size.height * 0.1096491);
    path_0.cubicTo(size.width * 0.1186612, size.height * 0.1096491, size.width * 0.1147624, size.height * 0.1306255, size.width * 0.1161946, size.height * 0.1704805);
    path_0.cubicTo(size.width * 0.1169372, size.height * 0.1906941, size.width * 0.1176268, size.height * 0.2109077, size.width * 0.1184224, size.height * 0.2333143);
    path_0.arcToPoint(Offset(size.width * 0.1046573, size.height * 0.2401793), radius: Radius.elliptical(size.width * 0.1101475, size.height * 0.3959764), rotation: 0, largeArc: false, clockwise: true);
    path_0.cubicTo(size.width * 0.08245809, size.height * 0.2401793, size.width * 0.06856036, size.height * 0.2812738, size.width * 0.05917144, size.height * 0.3510679);
    path_0.cubicTo(size.width * 0.05214301, size.height * 0.4032227, size.width * 0.04341714, size.height * 0.4524218, size.width * 0.03591131, size.height * 0.4999047);
    path_0.cubicTo(size.width * 0.04408020, size.height * 0.5522502, size.width * 0.05301825, size.height * 0.6047864, size.width * 0.06081583, size.height * 0.6603738);
    path_0.cubicTo(size.width * 0.06946213, size.height * 0.7213959, size.width * 0.08203374, size.height * 0.7569603, size.width * 0.1015542, size.height * 0.7595347);
    path_0.cubicTo(size.width * 0.1068587, size.height * 0.7602975, size.width * 0.1121632, size.height * 0.7643974, size.width * 0.1167781, size.height * 0.7665904);
    path_0.cubicTo(size.width * 0.1218704, size.height * 0.8062548, size.width * 0.1068056, size.height * 0.8619375, size.width * 0.1230373, size.height * 0.8828185);
    path_0.cubicTo(size.width * 0.1336463, size.height * 0.8964531, size.width * 0.1465362, size.height * 0.8853928, size.width * 0.1597178, size.height * 0.8853928);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color.fromARGB(255, 0, 133, 109);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//new
class FrameCustomPainterSmall extends CustomPainter {
  final BuildContext context;
  FrameCustomPainterSmall({super.repaint, required this.context});
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
    paint_0_fill.color = Theme.of(context).primaryColor;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class FrameCustomPainterLonge extends CustomPainter {
  FrameCustomPainterLonge({required this.context});
  final BuildContext context;
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
    paint_0_fill.color = Theme.of(context).primaryColor;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

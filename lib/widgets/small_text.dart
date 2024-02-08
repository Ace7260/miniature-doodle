import 'package:d_ace/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF89dad0),
    this.size = 12,
    this.height=1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}

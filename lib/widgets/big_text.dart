import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
    {
      Key? key,
      this.color, 
      required this.text,
      this.overflow=TextOverflow.ellipsis,
      this.size=20
    }
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style:TextStyle(
        color:color,
        fontWeight:FontWeight.w400,
        fontSize: size
        )
    );
  }
}

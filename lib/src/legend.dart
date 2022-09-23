import 'package:flutter/material.dart';

class Legend extends StatelessWidget {
  const Legend({
    required this.title,
    required this.color,
    required this.style,
    required this.legendShape,
    required this.value,
    this.prefixWidget,
    this.prefixText,
    this.subtitleStyle,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color color;
  final String value;
  final Widget? prefixWidget;
  final String? prefixText;
  final TextStyle style;
  final TextStyle? subtitleStyle;
  final BoxShape legendShape;

  @override
  Widget build(BuildContext context) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          decoration: prefixWidget == null? BoxDecoration(border: Border(left: BorderSide(color: color, width: 4))): null,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              prefixWidget ?? SizedBox(),
              if(prefixWidget != null) SizedBox(width: 16,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      title,
                      style: style,
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    '${prefixText ?? ''} $value'.trim(),
                    style: subtitleStyle,
                    softWrap: true,
                  ),
                ],),
            ],
          ),
        );
      // ],
    // );
  }
}

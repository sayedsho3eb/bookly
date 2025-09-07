import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Style.textStyle18);
  }
}

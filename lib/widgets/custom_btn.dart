import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.btnText, this.ontap});

  final String btnText;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    const tStyle = TextStyle(color: Colors.white, fontSize: 21);

    return InkWell(
      onTap: ontap,
      child: Container(
        width: width * 0.7,
        height: height * 0.05,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            btnText,
            style: tStyle,
          ),
        ),
      ),
    );
  }
}

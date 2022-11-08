// lib/widgets/common_floating_action_button.dart
import 'package:flutter/material.dart';

class CommonFloatingActionButton extends StatelessWidget {
  String title;
  Function? onTap;

  CommonFloatingActionButton(this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap?.call(context);
      },
      child: Container(
        margin: EdgeInsets.all(20),
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepOrange,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

// pages/home/tab_profile/function_button_widget.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_profile/function_button_data.dart';

class FunctionButtonWidget extends StatelessWidget {
  FunctionButtonItem data;

  FunctionButtonWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          if(null!=data.onTapHandle){
            data.onTapHandle!(context);
          }
        },
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width * 0.33,
          child: Column(
            children: [
              Image.asset(
                data.imageUri,
                width: 30,
                height: 30,
              ),
              Text(data.title)
            ],
          ),
        ));
  }
}

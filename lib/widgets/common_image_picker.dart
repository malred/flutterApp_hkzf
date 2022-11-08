// widgets/common_image_picker.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
List<String> defaultImages = [
  'https://imgs.aixifan.com/newUpload/59260344_ee86c050553441ac8cbfe0f46576ffda.jpeg',
  'https://imgs.aixifan.com/newUpload/59260344_ee86c050553441ac8cbfe0f46576ffda.jpeg',
  'https://imgs.aixifan.com/newUpload/59260344_ee86c050553441ac8cbfe0f46576ffda.jpeg',
];
//规定图片宽高->按比例变成实际需要的宽高
var imageWidth = 750;
var imageHeight = 425;
var imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  ValueChanged<List<File>>? onChange;

  CommonImagePicker({required this.onChange});

  @override
  State<CommonImagePicker> createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  List<File> files = []; //图片的state
  _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    //调用本地图片
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (null == image) return;
    setState(() {
      files = files..add(File(image.path));
    });
    if (widget.onChange != null) {
      widget.onChange!(files);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10 * 4) / 3;
    var height = width / imageWidthHeightRatio;
    //添加图片的小框
    Widget addButton = GestureDetector(
      onTap: () {
        _pickImage();
      },
      //整个gd可点击
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        height: height,
        color: Colors.grey,
        child: Center(
          child: Text(
            '+',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
          ),
        ),
      ),
    );
    Widget wrapper(File imageUri) {
      //叠层布局
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Image.file(
            imageUri,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          //叠层布局
          Positioned(
            //设置该控件的偏移量
            right: -20,
              top: -20,
              child: IconButton(
                  //点击删除图片
                  onPressed: () {
                    setState(() {
                      files=files..remove(imageUri);
                    });
                    //状态发生改变,要通知父级
                    if(null!=widget.onChange){
                      widget.onChange!(files);
                    }
                  },
                  icon: Icon(
                    Icons.delete_forever,
                    color: Colors.redAccent,
                  )))
        ],
      );
    }

    List<Widget> list = files.map((e) => wrapper(e)).toList()..add(addButton);
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        //左右两个item之间的间距
        spacing: 10,
        //上下两个item之间的间距
        runSpacing: 10,
        children: list,
      ),
    );
  }
}

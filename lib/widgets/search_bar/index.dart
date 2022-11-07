// widgets/search_bar/index.dart

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  bool showLocation; //显示位置按钮
  String inputValue; //搜索栏输入值
  String defaultInputValue; //搜索框默认值
  bool showMap; //显示地图按钮
  VoidCallback? onSearch;

  VoidCallback? goBackCallback; //回退按钮函数
  VoidCallback? onCancel; //取消按钮
 void Function(String)? onSearchSubmit;

  SearchBar(
      {this.showLocation = false,
      this.goBackCallback,
      this.inputValue = '',
      this.defaultInputValue = '请输入搜索词',
      this.onCancel,
      this.showMap = false,
      this.onSearch,
      this.onSearchSubmit}); //用户点击搜索栏触发

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  //搜索词
  String _searchWord = '';

  //自动失去焦点
  FocusNode _focus = FocusNode();

  //清空搜索框
  // Function _onClean() {
  _onClean() {
    _focus = FocusNode();
    _controller.clear();
    setState(() {
      _searchWord = '';
    });
    // throw '';
  }

  //控制搜索框与状态(_searchWord)关联
  TextEditingController _controller = TextEditingController(text: '');

  @override
  void initState() {
    _controller = TextEditingController(text: widget.inputValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLocation)
            Padding(
              padding: EdgeInsets.only(right: 7.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 16.0,
                    ),
                    Text(
                      '北京',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          //GestureDetector可以双击和单击事件,这里给小图标按钮用
          if (widget.goBackCallback != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: widget.goBackCallback != null
                    ? widget.goBackCallback
                    : () {},
                //chevron_left向左的小箭头
                child: Icon(Icons.chevron_left, color: Colors.black87),
              ),
            ),
          Expanded(
            child: Container(
              height: 34.0,
              //搜索框背景颜色
              decoration: BoxDecoration(
                color: Color(0xD7D3D3FF),
                borderRadius: BorderRadius.circular(17.0),
              ),
              child: TextField(
                focusNode: _focus,
                onTap: () {
                  //失去焦点
                  //搜索页是需要焦点的,而搜索页不同于其他页的就是它有onSearchSubmit
                  if (null==widget.onSearchSubmit) {
                    _focus.unfocus();
                  }
                  //加 ! 是为了防止为空
                  widget.onSearch!();
                },
                onSubmitted: widget.onSearchSubmit,
                //按钮变成搜索
                textInputAction: TextInputAction.search,
                //关联状态
                controller: _controller,
                onChanged: (String value) {
                  setState(() {
                    _searchWord = value;
                  });
                },
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                    //搜索框内容的padding
                    contentPadding: EdgeInsets.only(top: 2.5),
                    hintText: '请输入搜索词',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                    border: InputBorder.none,
                    //搜索框内,最右边的小图标
                    suffixIcon: GestureDetector(
                      onTap: () {
                        //点击清空搜索栏
                        _onClean();
                      },
                      child: Icon(
                        Icons.clear,
                        size: 18.0,
                        color:
                            _searchWord == '' ? Color(0xD7D3D3FF) : Colors.grey,
                      ),
                    ),
                    //搜索框内,最左边的小图标
                    // prefixIcon: Icon(
                    icon: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.search,
                          size: 18.0,
                          color: Colors.grey,
                        ))),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 10.0)),
          if (widget.onCancel == () {})
            Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: GestureDetector(
                onTap: widget.onCancel,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    '取消',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ),
              ),
            ),
          if (widget.showMap)
            Image.asset(
              'static/images/location.png',
              width: 15,
              height: 15,
            )
        ],
      ),
    );
  }
}

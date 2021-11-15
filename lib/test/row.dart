import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
  输入 stful 快捷构建
 */
class Section extends StatefulWidget {
  const Section({Key? key}) : super(key: key);

  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: titleSection(),
    );
  }

  /*
   * 要使用函数，不使用变量，否则热重载不刷新
   */
  Widget titleSection() => Container(
    // 从初始位置开始（默认左上角），对四周增加 32 像素
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column( // Column 使其纵向显示
            // 使用 crossAxisAlignment 在纵向为上下轴，在横向的话则是左右轴
            // 添加后显示在该行起始位置，不添加则在中间
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // 增加行间距
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  '上行黑色粗体',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                '下行灰小体',
                style: TextStyle(
                  color: Colors.grey[500]
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41')
      ],
    ),
  );

}

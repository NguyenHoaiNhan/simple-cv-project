import 'package:flutter/material.dart';
import 'package:simple_cv/app/base_widgets/text_button_with_icon.dart';
import 'package:simple_cv/app/cv/left_side/left_side_view.dart';
import 'package:simple_cv/app/cv/right_side/right_side_view.dart';
import 'package:simple_cv/utils/common_funcs.dart';

import '../../config/app_color.dart';

class CVView extends StatelessWidget {
  const CVView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = CommonFuncs.getScreenSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.semiBlack,
        centerTitle: true,
        title: const Text('CV - Kim Tae Hee'),
        actions: [
          TextButtonWithIcon(
            buttonName: 'Download',
            icon: Icons.get_app,
            isHightLight: true,
            onClick: () {},
          )
        ],
      ),
      body: Row(
        children: [
          LeftSideView(
            width: size.width * 0.5,
            height: double.infinity,
          ),
          RightSideView(
            width: size.width * 0.5,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}

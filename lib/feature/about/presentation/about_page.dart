import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../common/app_style.dart';
import '../../widget/myapp_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget w = Scaffold(
      backgroundColor: const Color.fromRGBO(0x4D, 0x4C, 0x85, 1.0),
      appBar: MyappBar(
        title: Text(
          S.of(context).about_title,
          style: AppStyle.textMedium,
        ),
        backLeading: true,
      ),
      body: Center(
        child: Text(
          S.of(context).about_content,
          style: AppStyle.textMedium,
        ),
      ),
    );

    return w;
  }
}

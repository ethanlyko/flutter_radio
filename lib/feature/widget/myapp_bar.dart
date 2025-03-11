import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/app_style.dart';

class MyappBar extends StatelessWidget implements PreferredSizeWidget {
  final Text? title;
  final Widget? leadingIcon;
  final bool? backLeading;
  const MyappBar({
    this.title,
    this.backLeading = false,
    this.leadingIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppStyle.appBarBackgroundColor,
      foregroundColor: AppStyle.appBarForegroundColor,
      centerTitle: true,
      title: (title == null) ? const Text("") : title,
      leading: (leadingIcon != null)
          ? leadingIcon
          : (backLeading == true
              ? IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    context.pop(context);
                  },
                )
              : null),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

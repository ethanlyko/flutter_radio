import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';

import '../../../../generated/l10n.dart';
import '../../../common/app_style.dart';

class FilterButton extends StatelessWidget {
  final String name;
  final List<String> list;
  final Function(String value) onResult;
  final bool isSelected;

  const FilterButton({
    required this.name,
    required this.list,
    required this.onResult,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget w = OutlinedButton(
      style: isSelected
          ? AppStyle.selectedButtonStyle
          : AppStyle.transparentButtonStyle,
      onPressed: () async {
        final result = await showDialog(
          context: context,
          builder: (context) {
            return Container(
              alignment: Alignment.center,
              color: AppStyle.dialogMaskColor,
              child: SingleChoicePopupDialog(
                name: name,
                list: list,
              ),
            );
          },
        );

        if (result != null) {
          onResult(result);
        }
      },
      child: Row(children: [
        Text(name, style: AppStyle.textSmaller),
      ]),
    );

    return w;
  }
}

class SingleChoicePopupDialog extends StatefulWidget {
  final String name;
  final List<String> list;
  const SingleChoicePopupDialog({
    required this.name,
    required this.list,
    super.key,
  });

  @override
  State<SingleChoicePopupDialog> createState() => _SingleChoicePopupDialog();
}

class _SingleChoicePopupDialog extends State<SingleChoicePopupDialog> {
  String? selected;

  void setChoice(String? value) {
    setState(() => selected = value);
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    child = SearchChoices.single(
      displayClearIcon: false,
      style: AppStyle.textSmall,
      menuBackgroundColor: Colors.black,
      items: widget.list
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: AppStyle.textSmaller,
              ),
            ),
          )
          .toList(),
      value: selected,
      hint: Text(
        widget.name,
        style: AppStyle.textSmall,
      ),
      onChanged: (value) {
        Navigator.pop(context, value);
      },
      isExpanded: true,
      dialogBox: false,
      menuConstraints: BoxConstraints.loose(const Size.fromHeight(400)),
      onSaved: (newValue) {
        selected = newValue;
      },
      closeButton: S.of(context).common_close,
    );

    Widget w;
    w = SizedBox(
      height: 500,
      child: Card(
        color: AppStyle.dialogBackgroundColor,
        clipBehavior: Clip.antiAlias,
        child: child,
      ),
    );

    return w;
  }
}

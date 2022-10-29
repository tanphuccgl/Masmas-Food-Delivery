import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

class XInput extends StatefulWidget {
  final String hint;
  final TextInputType textInputType;
  final bool obscureText;
  final Function(String) onChanged;
  final String errorText;
  final String value;
  final bool isAction;
  const XInput(
      {Key? key,
      required this.value,
      required this.hint,
      required this.onChanged,
      required this.errorText,
      this.isAction = true,
      this.obscureText = false,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  State<XInput> createState() => _XInputState();
}

class _XInputState extends State<XInput> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);
    obscureText = widget.obscureText;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant XInput oldWidget) {
    if (_controller.text != widget.value) {
      _controller.text = widget.value;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget? _buildAction() {
    final List<Widget> actions = [];

    if (widget.obscureText && widget.isAction) {
      // actions.add(
      //   IconButton(
      //     icon: Icon(
      //       obscureText ? Icons.visibility : Icons.visibility_off,
      //       color: MyColors.colorGray,
      //     ),
      //     onPressed: () {
      //       setState(() {
      //         obscureText = !obscureText;
      //       });
      //     },
      //   ),
      // );
    }
    if (actions.isEmpty) {
      return null;
    }
    if (actions.length == 1) {
      return actions[0];
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: actions,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: BoxDecoration(
          color: context.isDarkMode ? XColors.raisinBlack : XColors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: context.isDarkMode
              ? null
              : Border.all(width: 1.0, color: XColors.cultured),
          boxShadow: context.isDarkMode ? null : XStyles.shadow),
      child: TextField(
        style: XStyles.subTitle.copyWith(
            fontSize: 14,
            color:
                context.isDarkMode ? XColors.graniteGray : XColors.blackOlive),
        controller: _controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            suffixIcon: _buildAction(),
            errorText: widget.errorText,
            errorStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: XColors.cultured),
            ),
            border: InputBorder.none,
            hintText: widget.hint,
            labelStyle: XStyles.subTitle.copyWith(
                fontSize: 14,
                color: context.isDarkMode
                    ? XColors.graniteGray
                    : XColors.blackOlive),
            hintStyle: XStyles.subTitle.copyWith(
                fontSize: 14,
                color: context.isDarkMode
                    ? XColors.graniteGray
                    : XColors.blackOlive),
            fillColor: XColors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 28)),
        keyboardType: widget.textInputType,
        maxLines: 1,
        minLines: 1,
        textInputAction: TextInputAction.next,
        obscureText: obscureText,
      ),
    );
  }
}

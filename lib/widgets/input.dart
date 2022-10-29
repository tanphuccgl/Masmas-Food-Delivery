import 'package:flutter/material.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/ui_helper.dart';

class XInput extends StatefulWidget {
  final String hint;
  final TextInputType textInputType;
  final bool obscureText;
  final Function(String) onChanged;
  final String errorText;
  final String value;
  final bool isAction;
  final String? prefixIconAssest;
  final bool isDarkMode;
  const XInput(
      {Key? key,
      required this.value,
      required this.hint,
      required this.onChanged,
      required this.errorText,
      this.prefixIconAssest,
      this.isAction = true,
      this.obscureText = false,
      required this.isDarkMode,
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

    if (widget.isAction) {
      actions.add(
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.visibility,
            color: obscureText
                ? XColors.veryLightMalachiteGreen
                : (widget.isDarkMode
                    ? XColors.davyIsGrey
                    : XColors.raisinBlack),
          ),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      );
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
      decoration:
          BoxDecoration(boxShadow: widget.isDarkMode ? null : XStyles.shadow),
      child: TextField(
        style: XStyles.subTitle.copyWith(
            fontSize: 14,
            color:
                widget.isDarkMode ? XColors.graniteGray : XColors.blackOlive),
        controller: _controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          suffixIcon: _buildAction(),
          constraints: const BoxConstraints(minHeight: 57),
          prefixIcon: widget.prefixIconAssest != null
              ? Image.asset(
                  widget.prefixIconAssest!,
                  width: 24,
                  height: 24,
                )
              : null,
          errorText: widget.errorText,
          filled: true,
          errorStyle: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: UIHelper.boderInput(context),
          focusedBorder: UIHelper.boderInput(context),
          errorBorder: UIHelper.boderInput(context),
          focusedErrorBorder: UIHelper.boderInput(context),
          disabledBorder: UIHelper.boderInput(context),
          border: UIHelper.boderInput(context),
          hintText: widget.hint,
          fillColor: widget.isDarkMode ? XColors.raisinBlack : XColors.white,
          labelStyle: XStyles.subTitle.copyWith(
              fontSize: 14,
              color:
                  widget.isDarkMode ? XColors.graniteGray : XColors.blackOlive),
          hintStyle: XStyles.subTitle.copyWith(
              fontSize: 14,
              color:
                  widget.isDarkMode ? XColors.graniteGray : XColors.blackOlive),
          contentPadding: const EdgeInsets.all(20),
        ),
        keyboardType: widget.textInputType,
        maxLines: 1,
        minLines: 1,
        textInputAction: TextInputAction.next,
        obscureText: obscureText,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/images.dart';
import 'package:masmas_food/theme/colors.dart';
import 'package:masmas_food/theme/styles.dart';
import 'package:masmas_food/theme/themes.dart';

class CardLocation extends StatelessWidget {
  const CardLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      height: 147,
      decoration: BoxDecoration(
          color: context.isDarkMode ? XColors.raisinBlack : XColors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: context.isDarkMode ? null : XStyles.shadow),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                XImages.pinLocation,
                width: 33,
                height: 33,
              ),
              const SizedBox(width: 14),
              Text(
                'Your Location',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color:
                        context.isDarkMode ? XColors.white : XColors.richBlack),
              )
            ],
          ),
          const SizedBox(height: 27),
          SizedBox(
              width: 322,
              height: 57,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        context.isDarkMode
                            ? XColors.blackOlive
                            : const Color(0xFFF6F6F6)),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                  ),
                  child: Text(
                    'Set Location',
                    textAlign: TextAlign.center,
                    style: XStyles.button.copyWith(
                        color: context.isDarkMode
                            ? XColors.white
                            : XColors.richBlack),
                  )))
        ],
      ),
    );
  }
}

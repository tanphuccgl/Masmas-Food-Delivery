import 'package:flutter/material.dart';
import 'package:masmas_food/config/constants/screen.dart';
import 'package:masmas_food/module/access/sign_up_process/upload_photo/widgets/image_source_widget.dart';
import 'package:masmas_food/widgets/app_bar.dart';
import 'package:masmas_food/widgets/base_scaffold.dart';
import 'package:masmas_food/widgets/button.dart';

class UploadPhotoPage extends StatelessWidget {
  const UploadPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: XScreens.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const XAppbar(
                  title: 'Upload Your Photo Profile',
                  subTitle:
                      'This data will be displayed in your account profile for security'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 20, 14, 60),
                  child: Column(
                    children: [
                      const ImageSourceWidget(imageSource: ImageSource.gallery),
                      const SizedBox(height: 20),
                      const ImageSourceWidget(imageSource: ImageSource.camera),
                      const Spacer(),
                      XButton(label: 'Next', width: 157, onPressed: () {})
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

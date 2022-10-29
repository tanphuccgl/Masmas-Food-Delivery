import 'package:auto_route/auto_route.dart';
import 'package:masmas_food/module/access/forgot_password/forgot_password_page.dart';
import 'package:masmas_food/module/access/forgot_password/select_contact/pages/select_contact_page.dart';
import 'package:masmas_food/module/access/forgot_password/verify_code/pages/verify_code_page.dart';
import 'package:masmas_food/module/access/login/pages/login_page.dart';
import 'package:masmas_food/module/access/register/pages/register_page.dart';
import 'package:masmas_food/module/access/router/access_wrapper_page.dart';
import 'package:masmas_food/module/access/sign_up_process/payment_method/pages/payment_method_page.dart';
import 'package:masmas_food/module/access/sign_up_process/set_location/pages/set_location_page.dart';
import 'package:masmas_food/module/access/sign_up_process/sign_up_process.dart';
import 'package:masmas_food/module/access/sign_up_process/sign_up_success/pages/sign_up_success_page.dart';
import 'package:masmas_food/module/access/sign_up_process/upload_photo/pages/upload_photo_page.dart';
import 'package:masmas_food/module/access/sign_up_process/upload_preview/pages/upload_preview_page.dart';
import 'package:masmas_food/module/access/sign_up_process/your_bio/pages/your_bio_page.dart';
import 'package:masmas_food/route/route_name.dart';

class AccessRouters {
  static const String login = 'login';
  static const String register = 'register';
  static const String signUpProcess = 'sign-up-process';
  static const String forgotPassword = 'forgot-password';
}

class SignUpProcessRouters {
  static const String yourBio = 'your-bio';
  static const String paymentMethod = 'payment-method';
  static const String uploadPhoto = 'upload-photo';
  static const String uploadPreview = 'upload-preview';
  static const String setLocation = 'set-location';
  static const String signUpSuccess = 'sign-up-successs';
}

class ForgotPasswordRouters {
  static const String selectContact = 'select-contact';
  static const String verifyCode = 'verify-code';
  static const String newPassword = 'new-password';
  static const String success = 'success';
}

class AccessCoordinator {
  static const autoRoute = AutoRoute(
      path: XRoutes.access,
      page: AccessWrapperPage,
      initial: true,
      name: 'AccessWrapperRoute',
      children: [
        AutoRoute(
          path: AccessRouters.login,
          page: LoginPage,
          name: "LoginRoute",
        ),
        AutoRoute(
          path: AccessRouters.register,
          page: RegisterPage,
          name: "RegisterRoute",
        ),
        AutoRoute(
            path: AccessRouters.forgotPassword,
            page: ForgotPasswordPage,
            name: "ForgotPasswordRoute",
            initial: true,
            children: [
              AutoRoute(
                path: ForgotPasswordRouters.selectContact,
                page: SelectContactPage,
                name: "SelectContactRoute",
              ),
              AutoRoute(
                path: ForgotPasswordRouters.verifyCode,
                page: VerifyCodePage,
                name: "VerifyCodeRoute",
                initial: true,
              ),
            ]),
        AutoRoute(
            path: AccessRouters.signUpProcess,
            page: SignUpProcessPage,
            name: "SignUpProcessRoute",
            children: [
              AutoRoute(
                path: SignUpProcessRouters.yourBio,
                page: YourBioPage,
                name: "YourBioRoute",
              ),
              AutoRoute(
                path: SignUpProcessRouters.paymentMethod,
                page: PaymentMethodPage,
                name: "PaymentMethodRoute",
              ),
              AutoRoute(
                path: SignUpProcessRouters.uploadPhoto,
                page: UploadPhotoPage,
                name: "UploadPhotoRoute",
              ),
              AutoRoute(
                path: SignUpProcessRouters.uploadPreview,
                page: UploadPreviewPage,
                name: "UploadPreviewRoute",
              ),
              AutoRoute(
                path: SignUpProcessRouters.setLocation,
                page: SetLocationPage,
                name: "SetLocationRoute",
              ),
              AutoRoute(
                path: SignUpProcessRouters.signUpSuccess,
                page: SignUpSuccessPage,
                name: "SignUpSuccessRoute",
                initial: true,
              ),
            ]),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}

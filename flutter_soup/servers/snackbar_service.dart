// // ignore_for_file: type_annotate_public_apis

// import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
// import 'package:mps_staff/exports.dart';
// import 'package:mps_staff/ui/theme/color_constants.dart';
// import 'package:mps_staff/ui/widgets/custom_text.dart';

// enum SnackBarType {
//   notAvailibleAuth,
//   errorWithLogins,
//   notInArea,
//   errorService,
//   refreshing,
//   parralelJob,
//   notAllDone,
// }

// class SnackBarService {
//   String getDescription(SnackBarType error) {
//     switch (error) {
//       case SnackBarType.notAvailibleAuth:
//         return 'Авторизация не доступна';
//       case SnackBarType.errorWithLogins:
//         return 'Не верный логин или пароль';
//       case SnackBarType.notInArea:
//         return 'Вы находитесь вне области';
//       case SnackBarType.errorService:
//         return 'Проблемы со стороны сервиса';
//       case SnackBarType.refreshing:
//         return 'Обновление';
//       case SnackBarType.parralelJob:
//         return 'Нельзя иметь парралельно две задачи';
//       case SnackBarType.notAllDone:
//         return 'Не все подзадачи выполнены или что-то не так с сервисом';
//     }
//   }

//   Color getColor(SnackBarType error) {
//     if (error == SnackBarType.notInArea || error == SnackBarType.parralelJob || error == SnackBarType.notAllDone) {
//       return ColorConstant.yellow_button;
//     } else if (error == SnackBarType.refreshing) {
//       return ColorConstant.green_button;
//     } else {
//       return ColorConstant.red_button;
//     }
//   }

//   void showSnackBar(context, SnackBarType error) {
//     final snackBar = SnackBar(
//       elevation: 1,
//       behavior: SnackBarBehavior.floating,
//       backgroundColor: getColor(error),
//       content: CustomText(text: getDescription(error), type: TextType.text_14),
//     );

//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(snackBar);
//   }

//   Widget get loadingIndicator {
//     const size = 100.0;
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding: getPadding(top: 200),
//           child: Container(
//             decoration: BoxDecoration(
//               color: ColorConstant.green_11,
//               borderRadius: const BorderRadius.all(Radius.circular(5)),
//             ),
//             width: size,
//             height: size,
//             child: SizedBox(
//               width: size * 0.5,
//               height: size * 0.5,
//               child: Center(
//                 child: CircularProgressIndicator(
//                   color: ColorConstant.green_5,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

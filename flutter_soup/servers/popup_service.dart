// // ignore_for_file: type_annotate_public_apis

// import 'package:mps_staff/exports.dart';
// import 'package:mps_staff/services/models/popup_models.dart';
// import 'package:mps_staff/services/models/problem_model.dart';
// import 'package:mps_staff/ui/theme/color_constants.dart';
// import 'package:mps_staff/ui/widgets/custom_container_for_button.dart';
// import 'package:mps_staff/ui/widgets/custom_text.dart';

// class PopupService {
//   Future<PopupResponseModel?> buildDialog({required BuildContext context, required PopupType type, List<ProblemVariantModel>? list}) async {
//     final response = await showDialog<PopupResponseModel>(
//       context: context,
//       builder: (BuildContext context) => PopupDialogWidget(type: type),
//     );
//     return response;
//   }
// }

// class PopupDialogWidget extends StatelessWidget {
//   const PopupDialogWidget({
//     super.key,
//     required this.type,
//   });
//   final PopupType type;

//   PopupResponseModel getData(data) => PopupResponseModel(type: type, model: PopupDataModel(data: data, chousenProblrem: '', description: ''));

//   void onTapGoBack(context, data) => Navigator.pop(context, getData(data));

//   Widget getContent(context) {
//     Widget content = const Spacer();
//     if (type == PopupType.timeError) {
//       content = Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           textContainerWhite(AppLocalizations.current.timeError),
//           GestureDetector(
//             onTap: () => onTapGoBack(context, true),
//             child: AuthContainerForButton(
//               title: AppLocalizations.current.close,
//               isSmall: true,
//             ),
//           ),
//         ],
//       );
//     } else if (type == PopupType.biometry) {
//       content = Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           textContainerWhite(AppLocalizations.current.accessBiometry),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               GestureDetector(
//                 onTap: () => onTapGoBack(context, true),
//                 child: AuthContainerForButton(
//                   title: AppLocalizations.current.access,
//                   isSmall: true,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () => onTapGoBack(context, false),
//                 child: AuthContainerForButton(
//                   title: AppLocalizations.current.skip,
//                   isSmall: true,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//     }
//     return content;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           color: ColorConstant.green_5,
//           borderRadius: const BorderRadius.all(Radius.circular(5)),
//         ),
//         child: Padding(
//           // padding: getPadding(left: 10, right: 10),
//           padding: getPadding(left: 0),

//           child: SizedBox(
//             height: 225,
//             width: double.infinity,
//             child: Padding(
//               padding: getPadding(left: 24, right: 24, bottom: 33, top: 43),
//               child: getContent(context),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Container textContainerWhite(String text) {
//     return Container(
//       width: double.infinity,
//       padding: getPadding(left: 10, right: 10, top: 12, bottom: 12),
//       decoration: BoxDecoration(
//         color: ColorConstant.white,
//         borderRadius: const BorderRadius.all(Radius.circular(5)),
//       ),
//       child: CustomText(text: text, type: TextType.text_14),
//     );
//   }
// }

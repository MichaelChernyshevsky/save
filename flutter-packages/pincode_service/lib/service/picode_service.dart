// import 'package:pincode_service/service/pincode_interface.dart';
// import 'package:secure_storage_helper/secure_storage_helper.dart';

// String get pincodeKey => 'pincodeKey';

// class PinCodeService implements PincodeInterface {
//   // SecureStorageHelper storage = SecureStorageHelper();
//   String? _pincode;

//   @override
//   bool get containPinCode => _pincode != null && _pincode != '';

//   @override
//   String? get pincode => _pincode!;

//   @override
//   Future<void> initialize() async {
//     try {
//       _pincode = await storage.readSecureData(pincodeKey);
//       print('pin is $_pincode');
//     } catch (e) {
//       throw UnimplementedError();
//     }
//   }

//   @override
//   void setPincode({required String pinCode}) {
//     try {
//       storage.writeSecureData(pincodeKey, pinCode);
//       _pincode = pinCode;
//     } catch (e) {
//       throw UnimplementedError();
//     }
//   }

//   @override
//   bool checkPincode({required String pinCode}) => pinCode == _pincode!;
// }

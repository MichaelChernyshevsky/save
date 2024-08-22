abstract class PincodeInterface {
  bool get containPinCode;

  String? get pincode;

  Future<void> initialize();

  void setPincode({required String pinCode});

  bool checkPincode({required String pinCode});
}

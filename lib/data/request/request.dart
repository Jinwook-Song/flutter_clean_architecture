class LoginRequest {
  final String email;
  final String password;
  final String imei;
  final String deviceType;

  LoginRequest({
    required this.email,
    required this.password,
    required this.imei,
    required this.deviceType,
  });
}

class RegisterRequest {
  final String countryMobileCode;
  final String name;
  final String email;
  final String password;
  final String mobileNumber;
  final String avatar;

  RegisterRequest({
    required this.countryMobileCode,
    required this.name,
    required this.email,
    required this.password,
    required this.mobileNumber,
    required this.avatar,
  });
}

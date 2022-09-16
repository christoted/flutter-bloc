class Login {
    String? type;
    bool? isVerified;
    bool? isKTPVerified;
    bool? isNPWPVerified;

  Login.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    isVerified = json['verified'];
    isKTPVerified = json['ktpVerified'];
    isNPWPVerified = json['npwpVerified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>(); 
    data['type'] = type; 
    data['verified'] = type; 
    data['ktpVerified'] = type; 
    data['npwpVerified'] = type; 
    return data;
  }
}
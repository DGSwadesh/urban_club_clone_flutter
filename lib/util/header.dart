class HeaderModel {
  String? authorization;
  String Accept="application/json";
  String? contentType;

HeaderModel([this.authorization,this.contentType]);



  Map<String, String> toMap() {
    return {
      'Authorization': authorization!,
      'Content-Type': contentType!,
      'Accept':Accept
    };
  }
}



class HeaderModelJSON {
  String? device_type;
  String? authorization;
  String? contentType;

  HeaderModelJSON([this.authorization, this.contentType]);

  Map<String, String> toMap() {
    return {
      'Authorization': 'Bearer 3667e1ffa97380a4be0bff10ce8185d2e2a92e3c',
      'Accept': "application/json",
    };
  }
}
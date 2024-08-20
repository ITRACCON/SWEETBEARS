class Referal {
  int idTg;
  String username;

  Referal({required this.idTg, required this.username});

  factory Referal.fromJson(Map<dynamic, dynamic> json) {
    return Referal(
        idTg: int.parse(json['usertgid']), username: json['username']);
  }
}

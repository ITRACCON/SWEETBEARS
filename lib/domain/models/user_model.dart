class User {
  int idTg;
  String username;
  int level;
  int balance;
  int amountTap;
  int energy;
  int energyLimit;
  int refs;
  int idbear;

  User(
      {required this.idTg,
      required this.username,
      required this.level,
      required this.balance,
      required this.amountTap,
      required this.energy,
      required this.energyLimit,
      required this.refs,
      required this.idbear});

  factory User.fromJson(Map<dynamic, dynamic> json) {
    return User(
        idTg: int.parse(json['tgid']),
        username: json['username'],
        level: int.parse(json['level']),
        balance: int.parse(json['balance']),
        amountTap: int.parse(json['amounttap']),
        energy: int.parse(json['energy']),
        energyLimit: int.parse(json['energyLimit']),
        refs: int.parse(json['refs']),
        idbear: int.parse(json['idbear']));
  }
}

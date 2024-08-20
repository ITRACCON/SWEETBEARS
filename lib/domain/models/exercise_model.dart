class Exercise {
  int userid;
  int exerfriend1;
  int exerfriend10;
  int exerfriend25;
  int exercoin10k;

  Exercise(
      {required this.userid,
      required this.exerfriend1,
      required this.exerfriend10,
      required this.exerfriend25,
      required this.exercoin10k});

  factory Exercise.fromJson(Map<dynamic, dynamic> json) {
    return Exercise(
      userid: int.parse(json['userid']),
      exerfriend1: int.parse(json['exerfriend1']),
      exerfriend10: int.parse(json['exerfriend10']),
      exerfriend25: int.parse(json['exerfriend25']),
      exercoin10k: int.parse(json['exercoin10k']),
    );
  }
}

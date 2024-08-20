import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/referal_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';

List<Referal> getListReferals(List data) {
  return List.generate(data.length, (id) => Referal.fromJson(data[id]));
}

List<Bear> getListUserBears(List data) {
  return List.generate(
      data.length, (id) => bears[int.parse(data[id]['bearid']) - 1]);
}

List<User> getListUsers(List data) {
  return List.generate(data.length, (id) => User.fromJson(data[id]));
}

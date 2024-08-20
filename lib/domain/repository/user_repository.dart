import 'package:sweetbears/data/app_api.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/exercise_model.dart';
import 'package:sweetbears/domain/models/referal_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';

class UserRepository {
  final AppApi _appApi = AppApi();
// Получение данных о пользователе
  Future<User> getUser(int idTg) async {
    Map res = await _appApi.getUser(idTg);
    User user = res['user'];
    return user;
  }

// обновлнеие баланса и енергии пользователя
  Future<bool> updateBalAndEnergyUser(int idTg, int balance, int energy) async {
    await _appApi.updateBalAndEnergyUser(idTg, balance, energy);
    return true;
  }

// получение информации о заданиях
  Future<Exercise> getExercise(int idTg) async {
    Map res = await _appApi.getExercise(idTg);
    Exercise exercise = res['exercise'];
    return exercise;
  }

  Future<bool> updateExercise(int idTg, String exercise, int cash) async {
    await _appApi.updateExercise(idTg, exercise, cash);
    return true;
  }

  Future<List<User>> getUsers() async {
    Map res = await _appApi.getUsers();
    List<User> users = res['users'];
    return users;
  }

  Future<List<Referal>> getReferals(int idTg) async {
    Map res = await _appApi.getReferals(idTg);
    List<Referal> referals = res['referals'];
    return referals;
  }

  Future<List<Bear>> getUserBears(int idTg) async {
    Map res = await _appApi.getUserBears(idTg);
    List<Bear> usbears = res['usbears'];
    return usbears;
  }

  Future<bool> buyBear(int idTg, Bear bear) async {
    Map res = await _appApi.buyBear(idTg, bear);
    return true;
  }

  Future<bool> changeBear(int idTg, Bear bear) async {
    Map res = await _appApi.changeBear(idTg, bear);
    return true;
  }
}

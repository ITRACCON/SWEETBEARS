import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:sweetbears/domain/dao/user_dao.dart';
import 'package:sweetbears/misc/cfg.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/exercise_model.dart';
import 'package:sweetbears/domain/models/referal_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';

class AppApi {
  Future<Map<String, dynamic>> getUser(int idTg) async {
    try {
      http.Response res = await http.post(
          Uri.parse(
            '${Cfg.urlApi}getUser.php',
          ),
          body: json.encode({'idTg': idTg}));
      print(res.statusCode);
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);
        User user = User.fromJson(body);
        return {'result': true, 'user': user};
      } else {
        return {'result': false};
      }
    } catch (e) {
      print(e);
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> updateBalAndEnergyUser(
      int idTg, int balance, int energy) async {
    http.Response res = await http.post(
        Uri.parse('${Cfg.urlApi}updateBalAndEnergyUser.php'),
        body:
            json.encode({'idTg': idTg, 'balance': balance, 'energy': energy}));

    try {
      if (res.statusCode == 200) {
        return {'result': true};
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> getExercise(int idTg) async {
    http.Response res = await http.post(
        Uri.parse('${Cfg.urlApi}getExercise.php'),
        body: json.encode({'idTg': idTg}));
    try {
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);
        Exercise exercise = Exercise.fromJson(body);
        return {'result': true, 'exercise': exercise};
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> getUsers() async {
    http.Response res = await http.get(Uri.parse('${Cfg.urlApi}getUsers.php'));
    try {
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);

        List data = body['users'];
        List<User> users = getListUsers(data);
        return {'result': true, 'users': users};
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> updateExercise(
      int idTg, String exercise, int cash) async {
    http.Response res = await http.post(
        Uri.parse('${Cfg.urlApi}updateExercise.php'),
        body: json.encode({'idTg': idTg, 'exercise': exercise, 'cash': cash}));

    try {
      if (res.statusCode == 200) {
        return {'result': true};
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> getReferals(int idTg) async {
    http.Response res = await http.post(
        Uri.parse('${Cfg.urlApi}getreferals.php'),
        body: json.encode({'idTg': idTg}));
    try {
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);
        List data = body['referals'];
        List<Referal> referals = getListReferals(data);
        return {'result': true, 'referals': referals};
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> getUserBears(int idTg) async {
    http.Response res = await http.post(
        Uri.parse('${Cfg.urlApi}getUserBears.php'),
        body: json.encode({'idTg': idTg}));
    try {
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);
        List data = body['userbears'];
        List<Bear> usbears = getListUserBears(data);
        return {'result': true, 'usbears': usbears};
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> buyBear(int idTg, Bear bear) async {
    http.Response res = await http.post(Uri.parse('${Cfg.urlApi}buyBear.php'),
        body: json.encode({
          'idTg': idTg,
          'idBear': bear.id,
          'price': bear.price,
          'amountTap': bear.amountTap,
          'energyLimit': bear.energyLimit
        }));
    try {
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);
        return {
          'result': true,
        };
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }

  Future<Map<String, dynamic>> changeBear(int idTg, Bear bear) async {
    http.Response res =
        await http.post(Uri.parse('${Cfg.urlApi}changeBear.php'),
            body: json.encode({
              'idTg': idTg,
              'idBear': bear.id,
              'amountTap': bear.amountTap,
              'energyLimit': bear.energyLimit
            }));
    try {
      if (res.statusCode == 200) {
        Map body = json.decode(res.body);
        return {
          'result': true,
        };
      } else {
        return {'result': false};
      }
    } catch (e) {
      return {'result': false};
    }
  }
}

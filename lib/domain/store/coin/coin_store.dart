import 'dart:math';

import 'package:mobx/mobx.dart';

import '../../model/history_model.dart';
import '../../repository/history_repository.dart';
import '../../repository/socket_repository.dart';
import '../../../presentation/utils/utils.dart';

part 'coin_store.g.dart';

class CoinStore = _CoinStoreBase with _$CoinStore;

abstract class _CoinStoreBase with Store {
  final HistoryRepository _historyRepository;
  final SocketRepository _socketRepository;

  _CoinStoreBase(
    this._historyRepository,
    this._socketRepository,
  );

  @observable
  bool socketRunned = false;

  Stream get stream => _socketRepository.stream;

  @action
  Future<void> runSocket() async =>
      socketRunned = await _socketRepository.runSocket();

  @action
  Future<void> stopSocket() async =>
      socketRunned = !(await _socketRepository.stopSocket());

  @observable
  num? hMin;

  @observable
  num? hMid;

  @observable
  num? hMax;

  @observable
  DateTime? start;

  @observable
  DateTime? end;

  Future<List<History>> getHistory() async {
    end = DateTime.now();
    start = DateTime.fromMillisecondsSinceEpoch(
        end!.millisecondsSinceEpoch - 86400000);

    final history = await _historyRepository.getHistory(
      start!.toUtc().toIso8601String().split('.')[0],
      end!.toUtc().toIso8601String().split('.')[0],
    );

    hMax = hMin = null;
    for (var e in history) {
      hMax ??= e.rate;
      hMin ??= e.rate;

      if (hMax! < e.rate) hMax = e.rate;
      if (hMin! > e.rate) hMin = e.rate;
    }
    hMax = ((hMax! / pow(10, hMax!.length() - 2)).truncate() + 1) *
        pow(10, hMax!.length() - 2);

    hMin = ((hMin! / pow(10, hMin!.length() - 2)).truncate()) *
        pow(10, hMin!.length() - 2);

    hMid = (hMin! + (hMax! - hMin!) / 2).truncate();

    return history;
  }
}

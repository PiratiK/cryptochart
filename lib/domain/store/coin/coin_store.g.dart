// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CoinStore on _CoinStoreBase, Store {
  final _$socketRunnedAtom = Atom(name: '_CoinStoreBase.socketRunned');

  @override
  bool get socketRunned {
    _$socketRunnedAtom.reportRead();
    return super.socketRunned;
  }

  @override
  set socketRunned(bool value) {
    _$socketRunnedAtom.reportWrite(value, super.socketRunned, () {
      super.socketRunned = value;
    });
  }

  final _$hMinAtom = Atom(name: '_CoinStoreBase.hMin');

  @override
  num? get hMin {
    _$hMinAtom.reportRead();
    return super.hMin;
  }

  @override
  set hMin(num? value) {
    _$hMinAtom.reportWrite(value, super.hMin, () {
      super.hMin = value;
    });
  }

  final _$hMidAtom = Atom(name: '_CoinStoreBase.hMid');

  @override
  num? get hMid {
    _$hMidAtom.reportRead();
    return super.hMid;
  }

  @override
  set hMid(num? value) {
    _$hMidAtom.reportWrite(value, super.hMid, () {
      super.hMid = value;
    });
  }

  final _$hMaxAtom = Atom(name: '_CoinStoreBase.hMax');

  @override
  num? get hMax {
    _$hMaxAtom.reportRead();
    return super.hMax;
  }

  @override
  set hMax(num? value) {
    _$hMaxAtom.reportWrite(value, super.hMax, () {
      super.hMax = value;
    });
  }

  final _$startAtom = Atom(name: '_CoinStoreBase.start');

  @override
  DateTime? get start {
    _$startAtom.reportRead();
    return super.start;
  }

  @override
  set start(DateTime? value) {
    _$startAtom.reportWrite(value, super.start, () {
      super.start = value;
    });
  }

  final _$endAtom = Atom(name: '_CoinStoreBase.end');

  @override
  DateTime? get end {
    _$endAtom.reportRead();
    return super.end;
  }

  @override
  set end(DateTime? value) {
    _$endAtom.reportWrite(value, super.end, () {
      super.end = value;
    });
  }

  final _$runSocketAsyncAction = AsyncAction('_CoinStoreBase.runSocket');

  @override
  Future<void> runSocket() {
    return _$runSocketAsyncAction.run(() => super.runSocket());
  }

  final _$stopSocketAsyncAction = AsyncAction('_CoinStoreBase.stopSocket');

  @override
  Future<void> stopSocket() {
    return _$stopSocketAsyncAction.run(() => super.stopSocket());
  }

  @override
  String toString() {
    return '''
socketRunned: ${socketRunned},
hMin: ${hMin},
hMid: ${hMid},
hMax: ${hMax},
start: ${start},
end: ${end}
    ''';
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'socket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketItem _$SocketItemFromJson(Map<String, dynamic> json) {
  return _SocketItem.fromJson(json);
}

/// @nodoc
mixin _$SocketItem {
  @JsonKey(name: 'time_coinapi')
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_price')
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketItemCopyWith<SocketItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketItemCopyWith<$Res> {
  factory $SocketItemCopyWith(
          SocketItem value, $Res Function(SocketItem) then) =
      _$SocketItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'time_coinapi') DateTime time,
      @JsonKey(name: 'bid_price') double price});
}

/// @nodoc
class _$SocketItemCopyWithImpl<$Res> implements $SocketItemCopyWith<$Res> {
  _$SocketItemCopyWithImpl(this._value, this._then);

  final SocketItem _value;
  // ignore: unused_field
  final $Res Function(SocketItem) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SocketItemCopyWith<$Res> implements $SocketItemCopyWith<$Res> {
  factory _$SocketItemCopyWith(
          _SocketItem value, $Res Function(_SocketItem) then) =
      __$SocketItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'time_coinapi') DateTime time,
      @JsonKey(name: 'bid_price') double price});
}

/// @nodoc
class __$SocketItemCopyWithImpl<$Res> extends _$SocketItemCopyWithImpl<$Res>
    implements _$SocketItemCopyWith<$Res> {
  __$SocketItemCopyWithImpl(
      _SocketItem _value, $Res Function(_SocketItem) _then)
      : super(_value, (v) => _then(v as _SocketItem));

  @override
  _SocketItem get _value => super._value as _SocketItem;

  @override
  $Res call({
    Object? time = freezed,
    Object? price = freezed,
  }) {
    return _then(_SocketItem(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocketItem implements _SocketItem {
  const _$_SocketItem(
      {@JsonKey(name: 'time_coinapi') required this.time,
      @JsonKey(name: 'bid_price') required this.price});

  factory _$_SocketItem.fromJson(Map<String, dynamic> json) =>
      _$$_SocketItemFromJson(json);

  @override
  @JsonKey(name: 'time_coinapi')
  final DateTime time;
  @override
  @JsonKey(name: 'bid_price')
  final double price;

  @override
  String toString() {
    return 'SocketItem(time: $time, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketItem &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$SocketItemCopyWith<_SocketItem> get copyWith =>
      __$SocketItemCopyWithImpl<_SocketItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocketItemToJson(this);
  }
}

abstract class _SocketItem implements SocketItem {
  const factory _SocketItem(
      {@JsonKey(name: 'time_coinapi') required final DateTime time,
      @JsonKey(name: 'bid_price') required final double price}) = _$_SocketItem;

  factory _SocketItem.fromJson(Map<String, dynamic> json) =
      _$_SocketItem.fromJson;

  @override
  @JsonKey(name: 'time_coinapi')
  DateTime get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'bid_price')
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SocketItemCopyWith<_SocketItem> get copyWith =>
      throw _privateConstructorUsedError;
}

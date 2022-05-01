// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryDTO _$HistoryDTOFromJson(Map<String, dynamic> json) {
  return _HistoryDTO.fromJson(json);
}

/// @nodoc
mixin _$HistoryDTO {
  @JsonKey(name: 'time_close')
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate_close')
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryDTOCopyWith<HistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDTOCopyWith<$Res> {
  factory $HistoryDTOCopyWith(
          HistoryDTO value, $Res Function(HistoryDTO) then) =
      _$HistoryDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'time_close') DateTime time,
      @JsonKey(name: 'rate_close') double rate});
}

/// @nodoc
class _$HistoryDTOCopyWithImpl<$Res> implements $HistoryDTOCopyWith<$Res> {
  _$HistoryDTOCopyWithImpl(this._value, this._then);

  final HistoryDTO _value;
  // ignore: unused_field
  final $Res Function(HistoryDTO) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$HistoryDTOCopyWith<$Res> implements $HistoryDTOCopyWith<$Res> {
  factory _$HistoryDTOCopyWith(
          _HistoryDTO value, $Res Function(_HistoryDTO) then) =
      __$HistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'time_close') DateTime time,
      @JsonKey(name: 'rate_close') double rate});
}

/// @nodoc
class __$HistoryDTOCopyWithImpl<$Res> extends _$HistoryDTOCopyWithImpl<$Res>
    implements _$HistoryDTOCopyWith<$Res> {
  __$HistoryDTOCopyWithImpl(
      _HistoryDTO _value, $Res Function(_HistoryDTO) _then)
      : super(_value, (v) => _then(v as _HistoryDTO));

  @override
  _HistoryDTO get _value => super._value as _HistoryDTO;

  @override
  $Res call({
    Object? time = freezed,
    Object? rate = freezed,
  }) {
    return _then(_HistoryDTO(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryDTO implements _HistoryDTO {
  const _$_HistoryDTO(
      {@JsonKey(name: 'time_close') required this.time,
      @JsonKey(name: 'rate_close') required this.rate});

  factory _$_HistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryDTOFromJson(json);

  @override
  @JsonKey(name: 'time_close')
  final DateTime time;
  @override
  @JsonKey(name: 'rate_close')
  final double rate;

  @override
  String toString() {
    return 'HistoryDTO(time: $time, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryDTO &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$HistoryDTOCopyWith<_HistoryDTO> get copyWith =>
      __$HistoryDTOCopyWithImpl<_HistoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryDTOToJson(this);
  }
}

abstract class _HistoryDTO implements HistoryDTO {
  const factory _HistoryDTO(
      {@JsonKey(name: 'time_close') required final DateTime time,
      @JsonKey(name: 'rate_close') required final double rate}) = _$_HistoryDTO;

  factory _HistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_HistoryDTO.fromJson;

  @override
  @JsonKey(name: 'time_close')
  DateTime get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rate_close')
  double get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HistoryDTOCopyWith<_HistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gst_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GstDetails _$GstDetailsFromJson(Map<String, dynamic> json) {
  return _GstDetails.fromJson(json);
}

/// @nodoc
class _$GstDetailsTearOff {
  const _$GstDetailsTearOff();

  _GstDetails call(
      {required String gstIn,
      required String legalName,
      required String location,
      required String additional,
      required String stateJurisdiction,
      required String centreJurisdiction,
      required DateTime registrationDate,
      required String buisnessConstitution,
      required TaxpayerType taxpayerType,
      required GstinStatus gstinStatus,
      DateTime? cancellationDate}) {
    return _GstDetails(
      gstIn: gstIn,
      legalName: legalName,
      location: location,
      additional: additional,
      stateJurisdiction: stateJurisdiction,
      centreJurisdiction: centreJurisdiction,
      registrationDate: registrationDate,
      buisnessConstitution: buisnessConstitution,
      taxpayerType: taxpayerType,
      gstinStatus: gstinStatus,
      cancellationDate: cancellationDate,
    );
  }

  GstDetails fromJson(Map<String, Object> json) {
    return GstDetails.fromJson(json);
  }
}

/// @nodoc
const $GstDetails = _$GstDetailsTearOff();

/// @nodoc
mixin _$GstDetails {
  String get gstIn => throw _privateConstructorUsedError;
  String get legalName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get additional => throw _privateConstructorUsedError;
  String get stateJurisdiction => throw _privateConstructorUsedError;
  String get centreJurisdiction => throw _privateConstructorUsedError;
  DateTime get registrationDate => throw _privateConstructorUsedError;
  String get buisnessConstitution => throw _privateConstructorUsedError;
  TaxpayerType get taxpayerType => throw _privateConstructorUsedError;
  GstinStatus get gstinStatus => throw _privateConstructorUsedError;
  DateTime? get cancellationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GstDetailsCopyWith<GstDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GstDetailsCopyWith<$Res> {
  factory $GstDetailsCopyWith(
          GstDetails value, $Res Function(GstDetails) then) =
      _$GstDetailsCopyWithImpl<$Res>;
  $Res call(
      {String gstIn,
      String legalName,
      String location,
      String additional,
      String stateJurisdiction,
      String centreJurisdiction,
      DateTime registrationDate,
      String buisnessConstitution,
      TaxpayerType taxpayerType,
      GstinStatus gstinStatus,
      DateTime? cancellationDate});
}

/// @nodoc
class _$GstDetailsCopyWithImpl<$Res> implements $GstDetailsCopyWith<$Res> {
  _$GstDetailsCopyWithImpl(this._value, this._then);

  final GstDetails _value;
  // ignore: unused_field
  final $Res Function(GstDetails) _then;

  @override
  $Res call({
    Object? gstIn = freezed,
    Object? legalName = freezed,
    Object? location = freezed,
    Object? additional = freezed,
    Object? stateJurisdiction = freezed,
    Object? centreJurisdiction = freezed,
    Object? registrationDate = freezed,
    Object? buisnessConstitution = freezed,
    Object? taxpayerType = freezed,
    Object? gstinStatus = freezed,
    Object? cancellationDate = freezed,
  }) {
    return _then(_value.copyWith(
      gstIn: gstIn == freezed
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: legalName == freezed
          ? _value.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      additional: additional == freezed
          ? _value.additional
          : additional // ignore: cast_nullable_to_non_nullable
              as String,
      stateJurisdiction: stateJurisdiction == freezed
          ? _value.stateJurisdiction
          : stateJurisdiction // ignore: cast_nullable_to_non_nullable
              as String,
      centreJurisdiction: centreJurisdiction == freezed
          ? _value.centreJurisdiction
          : centreJurisdiction // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: registrationDate == freezed
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      buisnessConstitution: buisnessConstitution == freezed
          ? _value.buisnessConstitution
          : buisnessConstitution // ignore: cast_nullable_to_non_nullable
              as String,
      taxpayerType: taxpayerType == freezed
          ? _value.taxpayerType
          : taxpayerType // ignore: cast_nullable_to_non_nullable
              as TaxpayerType,
      gstinStatus: gstinStatus == freezed
          ? _value.gstinStatus
          : gstinStatus // ignore: cast_nullable_to_non_nullable
              as GstinStatus,
      cancellationDate: cancellationDate == freezed
          ? _value.cancellationDate
          : cancellationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$GstDetailsCopyWith<$Res> implements $GstDetailsCopyWith<$Res> {
  factory _$GstDetailsCopyWith(
          _GstDetails value, $Res Function(_GstDetails) then) =
      __$GstDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gstIn,
      String legalName,
      String location,
      String additional,
      String stateJurisdiction,
      String centreJurisdiction,
      DateTime registrationDate,
      String buisnessConstitution,
      TaxpayerType taxpayerType,
      GstinStatus gstinStatus,
      DateTime? cancellationDate});
}

/// @nodoc
class __$GstDetailsCopyWithImpl<$Res> extends _$GstDetailsCopyWithImpl<$Res>
    implements _$GstDetailsCopyWith<$Res> {
  __$GstDetailsCopyWithImpl(
      _GstDetails _value, $Res Function(_GstDetails) _then)
      : super(_value, (v) => _then(v as _GstDetails));

  @override
  _GstDetails get _value => super._value as _GstDetails;

  @override
  $Res call({
    Object? gstIn = freezed,
    Object? legalName = freezed,
    Object? location = freezed,
    Object? additional = freezed,
    Object? stateJurisdiction = freezed,
    Object? centreJurisdiction = freezed,
    Object? registrationDate = freezed,
    Object? buisnessConstitution = freezed,
    Object? taxpayerType = freezed,
    Object? gstinStatus = freezed,
    Object? cancellationDate = freezed,
  }) {
    return _then(_GstDetails(
      gstIn: gstIn == freezed
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: legalName == freezed
          ? _value.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      additional: additional == freezed
          ? _value.additional
          : additional // ignore: cast_nullable_to_non_nullable
              as String,
      stateJurisdiction: stateJurisdiction == freezed
          ? _value.stateJurisdiction
          : stateJurisdiction // ignore: cast_nullable_to_non_nullable
              as String,
      centreJurisdiction: centreJurisdiction == freezed
          ? _value.centreJurisdiction
          : centreJurisdiction // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: registrationDate == freezed
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      buisnessConstitution: buisnessConstitution == freezed
          ? _value.buisnessConstitution
          : buisnessConstitution // ignore: cast_nullable_to_non_nullable
              as String,
      taxpayerType: taxpayerType == freezed
          ? _value.taxpayerType
          : taxpayerType // ignore: cast_nullable_to_non_nullable
              as TaxpayerType,
      gstinStatus: gstinStatus == freezed
          ? _value.gstinStatus
          : gstinStatus // ignore: cast_nullable_to_non_nullable
              as GstinStatus,
      cancellationDate: cancellationDate == freezed
          ? _value.cancellationDate
          : cancellationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GstDetails extends _GstDetails with DiagnosticableTreeMixin {
  const _$_GstDetails(
      {required this.gstIn,
      required this.legalName,
      required this.location,
      required this.additional,
      required this.stateJurisdiction,
      required this.centreJurisdiction,
      required this.registrationDate,
      required this.buisnessConstitution,
      required this.taxpayerType,
      required this.gstinStatus,
      this.cancellationDate})
      : super._();

  factory _$_GstDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GstDetailsFromJson(json);

  @override
  final String gstIn;
  @override
  final String legalName;
  @override
  final String location;
  @override
  final String additional;
  @override
  final String stateJurisdiction;
  @override
  final String centreJurisdiction;
  @override
  final DateTime registrationDate;
  @override
  final String buisnessConstitution;
  @override
  final TaxpayerType taxpayerType;
  @override
  final GstinStatus gstinStatus;
  @override
  final DateTime? cancellationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GstDetails(gstIn: $gstIn, legalName: $legalName, location: $location, additional: $additional, stateJurisdiction: $stateJurisdiction, centreJurisdiction: $centreJurisdiction, registrationDate: $registrationDate, buisnessConstitution: $buisnessConstitution, taxpayerType: $taxpayerType, gstinStatus: $gstinStatus, cancellationDate: $cancellationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GstDetails'))
      ..add(DiagnosticsProperty('gstIn', gstIn))
      ..add(DiagnosticsProperty('legalName', legalName))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('additional', additional))
      ..add(DiagnosticsProperty('stateJurisdiction', stateJurisdiction))
      ..add(DiagnosticsProperty('centreJurisdiction', centreJurisdiction))
      ..add(DiagnosticsProperty('registrationDate', registrationDate))
      ..add(DiagnosticsProperty('buisnessConstitution', buisnessConstitution))
      ..add(DiagnosticsProperty('taxpayerType', taxpayerType))
      ..add(DiagnosticsProperty('gstinStatus', gstinStatus))
      ..add(DiagnosticsProperty('cancellationDate', cancellationDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GstDetails &&
            (identical(other.gstIn, gstIn) ||
                const DeepCollectionEquality().equals(other.gstIn, gstIn)) &&
            (identical(other.legalName, legalName) ||
                const DeepCollectionEquality()
                    .equals(other.legalName, legalName)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.additional, additional) ||
                const DeepCollectionEquality()
                    .equals(other.additional, additional)) &&
            (identical(other.stateJurisdiction, stateJurisdiction) ||
                const DeepCollectionEquality()
                    .equals(other.stateJurisdiction, stateJurisdiction)) &&
            (identical(other.centreJurisdiction, centreJurisdiction) ||
                const DeepCollectionEquality()
                    .equals(other.centreJurisdiction, centreJurisdiction)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.buisnessConstitution, buisnessConstitution) ||
                const DeepCollectionEquality().equals(
                    other.buisnessConstitution, buisnessConstitution)) &&
            (identical(other.taxpayerType, taxpayerType) ||
                const DeepCollectionEquality()
                    .equals(other.taxpayerType, taxpayerType)) &&
            (identical(other.gstinStatus, gstinStatus) ||
                const DeepCollectionEquality()
                    .equals(other.gstinStatus, gstinStatus)) &&
            (identical(other.cancellationDate, cancellationDate) ||
                const DeepCollectionEquality()
                    .equals(other.cancellationDate, cancellationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gstIn) ^
      const DeepCollectionEquality().hash(legalName) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(additional) ^
      const DeepCollectionEquality().hash(stateJurisdiction) ^
      const DeepCollectionEquality().hash(centreJurisdiction) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(buisnessConstitution) ^
      const DeepCollectionEquality().hash(taxpayerType) ^
      const DeepCollectionEquality().hash(gstinStatus) ^
      const DeepCollectionEquality().hash(cancellationDate);

  @JsonKey(ignore: true)
  @override
  _$GstDetailsCopyWith<_GstDetails> get copyWith =>
      __$GstDetailsCopyWithImpl<_GstDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GstDetailsToJson(this);
  }
}

abstract class _GstDetails extends GstDetails {
  const factory _GstDetails(
      {required String gstIn,
      required String legalName,
      required String location,
      required String additional,
      required String stateJurisdiction,
      required String centreJurisdiction,
      required DateTime registrationDate,
      required String buisnessConstitution,
      required TaxpayerType taxpayerType,
      required GstinStatus gstinStatus,
      DateTime? cancellationDate}) = _$_GstDetails;
  const _GstDetails._() : super._();

  factory _GstDetails.fromJson(Map<String, dynamic> json) =
      _$_GstDetails.fromJson;

  @override
  String get gstIn => throw _privateConstructorUsedError;
  @override
  String get legalName => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get additional => throw _privateConstructorUsedError;
  @override
  String get stateJurisdiction => throw _privateConstructorUsedError;
  @override
  String get centreJurisdiction => throw _privateConstructorUsedError;
  @override
  DateTime get registrationDate => throw _privateConstructorUsedError;
  @override
  String get buisnessConstitution => throw _privateConstructorUsedError;
  @override
  TaxpayerType get taxpayerType => throw _privateConstructorUsedError;
  @override
  GstinStatus get gstinStatus => throw _privateConstructorUsedError;
  @override
  DateTime? get cancellationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GstDetailsCopyWith<_GstDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

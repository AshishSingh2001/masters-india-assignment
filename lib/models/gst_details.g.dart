// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'gst_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GstDetails _$$_GstDetailsFromJson(Map<String, dynamic> json) =>
    _$_GstDetails(
      gstIn: json['gstIn'] as String,
      legalName: json['legalName'] as String,
      location: json['location'] as String,
      additional: json['additional'] as String,
      stateJurisdiction: json['stateJurisdiction'] as String,
      centreJurisdiction: json['centreJurisdiction'] as String,
      registrationDate: DateTime.parse(json['registrationDate'] as String),
      buisnessConstitution: json['buisnessConstitution'] as String,
      taxpayerType: _$enumDecode(_$TaxpayerTypeEnumMap, json['taxpayerType']),
      gstinStatus: _$enumDecode(_$GstinStatusEnumMap, json['gstinStatus']),
      cancellationDate: json['cancellationDate'] == null
          ? null
          : DateTime.parse(json['cancellationDate'] as String),
    );

Map<String, dynamic> _$$_GstDetailsToJson(_$_GstDetails instance) =>
    <String, dynamic>{
      'gstIn': instance.gstIn,
      'legalName': instance.legalName,
      'location': instance.location,
      'additional': instance.additional,
      'stateJurisdiction': instance.stateJurisdiction,
      'centreJurisdiction': instance.centreJurisdiction,
      'registrationDate': instance.registrationDate.toIso8601String(),
      'buisnessConstitution': instance.buisnessConstitution,
      'taxpayerType': _$TaxpayerTypeEnumMap[instance.taxpayerType],
      'gstinStatus': _$GstinStatusEnumMap[instance.gstinStatus],
      'cancellationDate': instance.cancellationDate?.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TaxpayerTypeEnumMap = {
  TaxpayerType.regular: 'regular',
  TaxpayerType.composite: 'composite',
  TaxpayerType.exempted: 'exempted',
};

const _$GstinStatusEnumMap = {
  GstinStatus.active: 'active',
  GstinStatus.inactive: 'inactive',
  GstinStatus.closed: 'closed',
};

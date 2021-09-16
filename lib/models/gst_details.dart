import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'gst_details.g.dart';
part 'gst_details.freezed.dart';

@freezed
class GstDetails with _$GstDetails {
  const GstDetails._();
  const factory GstDetails({
    required String gstIn,
    required String legalName,
    required String location,
    required String additional,
    required String stateJurisdiction,
    required String centreJurisdiction,
    required DateTime registrationDate,
    required String buisnessConstitution,
    required TaxpayerType taxpayerType,
    required GstinStatus gstinStatus,
    DateTime? cancellationDate,
  }) = _GstDetails;

  factory GstDetails.fromJson(Map<String, dynamic> json) =>
      _$GstDetailsFromJson(json);
}

enum TaxpayerType {
  regular,
  composite,
  exempted,
}

enum GstinStatus {
  active,
  inactive,
  closed,
}

import 'package:masters/models/gst_details.dart';

class HttpService {
  static Future<GstDetails> getGstDetails(String gstIn) async {
    return Future.delayed(const Duration(seconds: 1), () {
      final gstDetails = GstDetails(
        gstIn: '07AACCM9910C1ZP',
        legalName: 'MASTERS INDIA PRIVATE LIMITED',
        location:
            'K-37, floor-, , MANDOLI iNDUSTRIAL AREA, North East Delhi, Delhi, 110093',
        additional: 'floor-',
        stateJurisdiction: 'Ward 74',
        centreJurisdiction: 'RANGE - 139',
        registrationDate: DateTime.now(),
        buisnessConstitution: 'Private Limited Company',
        taxpayerType: TaxpayerType.regular,
        gstinStatus: GstinStatus.active,
      );
      return gstDetails;
    });
  }
}


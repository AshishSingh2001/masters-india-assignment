import 'package:bloc/bloc.dart';
import 'package:masters/models/gst_details.dart';
import 'package:masters/repositories/gst_repository/gst_repository.dart';
import 'package:meta/meta.dart';

part 'gst_details_state.dart';

class GstDetailsCubit extends Cubit<GstDetailsState> {
  GstDetailsCubit({
    required GstDetailsRepository gstDetailsRepository,
  })  : _gstDetailsRepository = gstDetailsRepository,
        super(const GstDetailsInitial());
  final GstDetailsRepository _gstDetailsRepository;

  gstDetails(String gstIn) async {
    gstIn = gstIn.trim();
    if (gstIn.isEmpty ||
        gstIn.length < 6 ||
        !RegExp(r"^[a-zA-Z0-9]*$").hasMatch(gstIn)) {
      emit(const GstDetailsLoadingFailed());
    } else {
      emit(const GstDetailsLoading());
      try {
        GstDetails gstDetails = await tryGetGstDetails(gstIn);
        emit(GstDetailsLoadingSuccess(gstDetails));
      } catch (e) {
        emit(const GstDetailsLoadingFailed());
      }
    }
  }

  increment() => emit(const GstDetailsLoadingFailed());

  decrement() async {
    emit(const GstDetailsLoading());
  }

  Future<GstDetails> tryGetGstDetails(String gstIn) async {
    try {
      GstDetails? res = await _gstDetailsRepository.getGstDetails(gstIn);
      if (res == null) {
        throw Exception();
      } else {
        return res;
      }
    } catch (e) {
      throw Exception('Details not found');
    }
  }
}

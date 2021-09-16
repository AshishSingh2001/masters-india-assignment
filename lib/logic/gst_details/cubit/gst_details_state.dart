part of 'gst_details_cubit.dart';

@immutable
abstract class GstDetailsState {
  final bool isLoading;

  const GstDetailsState({required this.isLoading});
}

class GstDetailsLoadingSuccess extends GstDetailsState {
  final GstDetails gstDetails;
  const GstDetailsLoadingSuccess(this.gstDetails) : super(isLoading: false);
}

class GstDetailsLoadingFailed extends GstDetailsState {
  const GstDetailsLoadingFailed() : super(isLoading: false);
}

class GstDetailsLoading extends GstDetailsState {
  const GstDetailsLoading() : super(isLoading: true);
}

class GstDetailsInitial extends GstDetailsState {
  const GstDetailsInitial() : super(isLoading: false);
}

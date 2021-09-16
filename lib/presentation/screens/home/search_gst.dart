import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masters/logic/gst_details/cubit/gst_details_cubit.dart';
import 'package:masters/widgets/primary_button.dart';
import '../gst_details/gst_details_page.dart';

class SearchGst extends StatefulWidget {
  const SearchGst({Key? key}) : super(key: key);

  @override
  State<SearchGst> createState() => _SearchGstState();
}

class _SearchGstState extends State<SearchGst> {
  late TextEditingController _gstController;
  late FocusNode _gstFocusNode;

  @override
  void initState() {
    super.initState();
    _gstFocusNode = FocusNode();
    _gstController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _gstFocusNode.dispose();
    _gstController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
            child: Text(
              'Enter GST Number',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextField(
            focusNode: _gstFocusNode,
            controller: _gstController,
            style: TextStyle(color: Colors.grey.shade600),
            cursorColor: Colors.grey.shade500,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              border: InputBorder.none,
              hintText: 'Ex - 07AAC00423423',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            // height: 120,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: BlocConsumer<GstDetailsCubit, GstDetailsState>(
              listener: (context, state) {
                if (state is GstDetailsLoadingSuccess) {
                  Navigator.of(context).pushNamed(GstDetailsPage.routeName,
                      arguments: state.gstDetails);
                }
                if (state is GstDetailsLoadingFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Try entering a valid GST number'),
                  ));
                }
              },
              builder: (context, state) {
                return PrimaryButton(
                  onPressed: () {
                    _gstFocusNode.unfocus();
                    context
                        .read<GstDetailsCubit>()
                        .gstDetails(_gstController.text);
                  },
                  child: state.isLoading
                      ? const SizedBox(
                          height: 22,
                          width: 22,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          ),
                        )
                      : const Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

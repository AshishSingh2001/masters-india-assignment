import 'package:flutter/material.dart';
import 'package:masters/widgets/primary_button.dart';

class ReturnGst extends StatefulWidget {
  const ReturnGst({Key? key}) : super(key: key);

  @override
  State<ReturnGst> createState() => _ReturnGstState();
}

class _ReturnGstState extends State<ReturnGst> {
  late TextEditingController _gstController;

  @override
  void initState() {
    super.initState();
    _gstController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
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
            child: PrimaryButton(
              onPressed: () {},
              child: const Text(
                'Get Return Filing Status',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

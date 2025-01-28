import 'package:flutter/material.dart';
import '../../data/models/interviews_response_model.dart';

class InterviewsListViewItem extends StatelessWidget {
  const InterviewsListViewItem({
    required this.interview,
    super.key,
  });
  final Interview? interview;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Interview Name: _${interview?.jobTitleName}'),
          ],
        ),
      ),
    );
  }
}

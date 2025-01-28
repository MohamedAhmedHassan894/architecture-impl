import 'package:architecture_impl/features/interviews/data/models/interviews_response_model.dart';
import 'package:flutter/material.dart';
import 'interviews_list_view_item.dart';

class InterviewsListView extends StatelessWidget {
  final List<Interview?>? interviewsList;
  const InterviewsListView({super.key, this.interviewsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: interviewsList?.length,
        itemBuilder: (context, index) {
          return InterviewsListViewItem(
            interview: interviewsList?[index],
          );
        },
      ),
    );
  }
}

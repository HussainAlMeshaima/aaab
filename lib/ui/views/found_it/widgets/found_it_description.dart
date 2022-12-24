import 'package:aaab/ui/views/found_it/found_it_view_model.dart';
import 'package:flutter/material.dart';

class FoundItDescriptionWidget extends StatelessWidget {
  const FoundItDescriptionWidget(
    this.model, {
    Key? key,
  }) : super(key: key);

  final FoundItViewModel model;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.4),
                      blurRadius: 20,
                      offset: const Offset(5, 5),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: model.description,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: 8,
                  maxLines: 10,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
          ),
        ],
      );
}

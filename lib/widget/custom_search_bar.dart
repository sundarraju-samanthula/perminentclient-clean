import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;

  const CustomSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  CustomSearchBarState createState() => CustomSearchBarState();
}

class CustomSearchBarState extends State<CustomSearchBar> {
  bool isExpanded = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
          if (!isExpanded) {
            _focusNode.unfocus();
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isExpanded ? Colors.white : Colors.grey[200],
        ),
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: FocusScope(
          node: FocusScopeNode(),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  focusNode: _focusNode,
                  controller: widget.controller,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                  autofocus: false,
                  onChanged: widget.onChanged,
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.clear();
                  _focusNode.unfocus();
                },
                child: const Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchSheet extends StatelessWidget {
  final TextEditingController controller;
  const _SearchSheet({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSearchBar(
            controller: controller,
            onChanged: (value) {
              // handle dynamic search or suggestions here
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(controller.text);
              // navigate to results screen or filter
            },
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }
}

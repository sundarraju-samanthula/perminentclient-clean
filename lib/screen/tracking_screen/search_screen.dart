import 'package:client_app/widget/custom_search_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry'
  ];
  List<String> _filtered = [];

  void _onChanged(String query) {
    setState(() {
      _filtered = _data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomSearchBar(
              controller: _controller,
              onChanged: _onChanged,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _filtered.isEmpty && _controller.text.isNotEmpty
                  ? const Center(child: Text('No results found'))
                  : ListView.builder(
                      itemCount: _controller.text.isEmpty
                          ? _data.length
                          : _filtered.length,
                      itemBuilder: (ctx, i) {
                        final item =
                            _controller.text.isEmpty ? _data[i] : _filtered[i];
                        return ListTile(title: Text(item));
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

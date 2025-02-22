```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error response
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions -  This is where you might log the error or implement more sophisticated error handling.
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up in the call stack
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e'); // Handle the exception here at a higher level
  }
}
```
# flutter_json_repo

A simple and efficient Dart library providing utilities for working with JSON data structures, focusing on operations such as creating, updating, and marking records as deleted with proper timestamp handling.

## Features

- **Create JSON objects**: Easily create JSON objects with default fields and timestamps.
- **Mark as Deleted**: Mark JSON objects as deleted with a timestamp, maintaining the integrity of the data.
- **Owner ID Integration**: Quickly add owner IDs and other common fields to JSON objects.
- **Automatic Timestamps**: Automatically update timestamps when modifying JSON objects.
- **Simple and Consistent**: Designed to be straightforward to integrate and use, promoting consistency across your application.

## Getting Started

To get started with `json_repo`, add it to your project as a dependency:

```
dependencies:
  json_repo: ^1.0.0  # Use the latest version of json_repo
```

## Usage

Here's a quick example of how you might use json_repo:

```
import 'package:json_repo/json_repo.dart';

void main() {
  var repo = JsonRepo();
  var newJson = repo.createJson({'name': 'John Doe', 'age': 30});
  print(newJson);  // Output will include createdAt and updatedAt timestamps
}
```

## API Reference

### createJson(JSON json)
Creates a new JSON object with default fields for creation.

Parameters:
- json: The original JSON object to be modified.

Returns a new JSON object with 'createdAt' and 'updatedAt' fields.

### createJsonWithOwnerId({required JSON json, required String ownerId})
Creates a new JSON object with default fields for creation, including an owner ID.

Parameters:
- json: The original JSON object to be modified.
- ownerId: The ID of the owner to be included in the JSON object.

Returns a new JSON object with 'createdAt', 'updatedAt', and 'ownerId' fields. 

### deleteJson(JSON json)
Marks a JSON object as deleted and sets the deletion timestamp.

Parameters:
- json: The original JSON object to be modified.

Returns a new JSON object marked as deleted with 'deletedAt' and 'isDeleted' fields.

### updateJson(JSON json)
Updates the 'updatedAt' field of a JSON object to the current time.

Parameters:
- json: The original JSON object to be modified.

Returns a new JSON object with an updated 'updatedAt' field.

## License
flutter_json_repo is available under the GNU GPL v3.0 license. See the LICENSE file for more info.

/// A type definition for JSON to make the code more readable.
typedef JSON = Map<String, dynamic>;

/// A repository class for handling JSON objects with common operations
/// such as creating, updating, and marking as deleted.
///
/// This class provides utility methods to modify JSON maps, particularly
/// by adding and updating timestamps and other common fields.
class JsonRepo {
  /// A private utility method that adds or updates timestamps in a JSON object.
  ///
  /// [json]: The original JSON object to be modified.
  /// [isDeleted]: A flag indicating whether the JSON object is marked as 
  /// deleted.
  /// [isUpdate]: A flag indicating whether the JSON object is being updated.
  ///
  /// Returns a new JSON object with added or updated 'createdAt', 'deletedAt',
  /// 'isDeleted', and 'updatedAt' fields.
  JSON _withTimestamps(
    JSON json, {
    bool isDeleted = false,
    bool isUpdate = false,
  }) {
    final now = DateTime.now();
    final updatedJson = JSON.from(json)
      ..addAll({
        'updatedAt': now,
      });

    if (!isUpdate) {
      updatedJson.addAll({
        'createdAt': now,
        'deletedAt': isDeleted ? now : null,
        'isDeleted': isDeleted,
      });
    }

    return updatedJson;
  }

  /// Creates a new JSON object with default fields for creation.
  ///
  /// [json]: The original JSON object to be modified.
  ///
  /// Returns a new JSON object with 'createdAt' and 'updatedAt' fields.
  JSON createJson(JSON json) {
    return _withTimestamps(json);
  }

  /// Creates a new JSON object with default fields for creation, including an 
  /// owner ID.
  ///
  /// [json]: The original JSON object to be modified.
  /// [ownerId]: The ID of the owner to be included in the JSON object.
  ///
  /// Returns a new JSON object with 'createdAt', 'updatedAt', and 'ownerId' 
  /// fields.
  JSON createJsonWithOwnerId({
    required JSON json,
    required String ownerId,
  }) {
    return _withTimestamps(json)..addAll({'ownerId': ownerId});
  }

  /// Marks a JSON object as deleted and sets the deletion timestamp.
  ///
  /// [json]: The original JSON object to be modified.
  ///
  /// Returns a new JSON object marked as deleted with 'deletedAt' and 
  /// 'isDeleted' fields.
  JSON deleteJson(JSON json) {
    return _withTimestamps(json, isDeleted: true);
  }

  /// Updates the 'updatedAt' field of a JSON object to the current time.
  ///
  /// [json]: The original JSON object to be modified.
  ///
  /// Returns a new JSON object with an updated 'updatedAt' field.
  JSON updateJson(JSON json) {
    return _withTimestamps(json, isUpdate: true);
  }
}

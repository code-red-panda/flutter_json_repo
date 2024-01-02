/// The `json_repo` library.
///
/// Provides a set of utilities for working with JSON data structures in Dart,
/// focusing on common operations such as creating, updating, and marking 
/// records as deleted with appropriate timestamp handling. It's designed to be 
/// simple, efficient, and easy to integrate into larger applications that 
/// require consistent and standardized JSON object manipulation.
///
/// Key features include:
/// - Creation of JSON objects with default fields and timestamps.
/// - Easy marking of JSON objects as deleted with a timestamp.
/// - Ability to add owner IDs and other common fields quickly.
/// - Simple updates to JSON objects with automatic timestamp adjustments.
///
/// This library is intended for use in applications where JSON is used as a
/// primary data interchange format and consistency in data structure and
/// timestamps is crucial.
library json_repo;

export '/src/libs.dart';

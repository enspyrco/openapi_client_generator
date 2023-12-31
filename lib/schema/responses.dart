import 'package:openapi_client_generator/utils/annotations.dart';

import '../utils/types.dart';
import 'response.dart';

// Spec page in Notion: https://www.notion.so/reference-material/Responses-Object-b4c997e5b14e4c569bd8c043700c34f7

/// A container for the expected responses of an operation.
/// The container maps a HTTP response code to the expected response.
///
/// The documentation is not necessarily expected to cover all possible HTTP response codes because they may not be known in advance.
/// However, documentation is expected to cover a successful operation response and any known errors.
///
/// The `default` MAY be used as a default response object for all HTTP codes
/// that are not covered individually by the `Responses Object`.
///
/// The `Responses Object` MUST contain at least one response code, and if only one
/// response code is provided it SHOULD be the response for a successful operation
/// call.
///
/// This object MAY be extended with Specification Extensions.
abstract class Responses {
  /// The documentation of responses other than the ones declared for specific
  /// HTTP response codes. Use this field to cover undeclared responses.
  @parserSettings(jsonName: 'default')
  ReferenceOr<Response> get defaultField;

  /// Any [HTTP Status Code] can be used as the property name, but only one
  /// property per code, to describe the expected response for that HTTP status
  /// code. This field MUST be enclosed in quotation marks (for example, "200")
  /// for compatibility between JSON and YAML. To define a range of response
  /// codes, this field MAY contain the uppercase wildcard character X.
  /// For example, 2XX represents all response codes between [200-299].
  /// Only the following range definitions are allowed: 1XX, 2XX, 3XX, 4XX, and 5XX.
  /// If a response is defined using an explicit code, the explicit code
  /// definition takes precedence over the range definition for that code.
  ReferenceOr<Response> get httpStatusCodePattern;
}

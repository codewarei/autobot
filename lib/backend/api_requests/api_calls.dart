import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetValuationCall {
  static Future<ApiCallResponse> call({
    String vinNumber = '',
  }) {
    final body = '''
{
  "ClientPackageId": "0cdd231a-d7ad-4a68-a934-d373affb5100",
  "PlatformId": "ios",
  "ClientUserId": "AhmedOmar",
  "VinNumber": "${vinNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getValuation',
      apiUrl: 'https://clienttest.liveapi.lightstoneauto.co.za//api/gateway',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjI4ODQyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6IkFobWVkIE9tYXIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJhaG1lZEBjbG91ZHRlbGVjb21zLmNvLnphIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy91c2VyZGF0YSI6IkFobWVkT21hciIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3N1cm5hbWUiOiJPbWFyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZ2l2ZW5uYW1lIjoiQWhtZWQiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9ob21lcGhvbmUiOiIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9tb2JpbGVwaG9uZSI6IjA4MjQxMTk1NTUiLCJuYmYiOjE2NTY1MTI3ODMsImV4cCI6MTY1NjU5OTE4MywiaXNzIjoiaHR0cDovL3d3dy5saWdodHN0b25lYXV0by5jby56YSIsImF1ZCI6IkxpdmUzIn0.SYz41UOPgNXSi0yKDgEPBvlRNk8HI7eaZxyCG_XupAI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetTokenCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getToken',
      apiUrl: 'https://clienttest.liveapi.lightstoneauto.co.za//services/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic YWhtZWRAY2xvdWR0ZWxlY29tcy5jby56YTpXZWJtaW5ANzg2',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    this.nextPageNumber,
    this.numItems,
    this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

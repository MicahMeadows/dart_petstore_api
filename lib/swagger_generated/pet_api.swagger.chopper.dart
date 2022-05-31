//Generated code

part of 'pet_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PetApi extends PetApi {
  _$PetApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PetApi;

  @override
  Future<Response<ApiResponse>> _uploadFile(
      {required String? petId,
      String? additionalMetadata,
      List<String>? file}) {
    final $url = '/pet/${petId}/uploadImage';
    final $body = <String, dynamic>{
      'additionalMetadata': additionalMetadata,
      'file': file
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<dynamic>> _addPet({required Pet? body}) {
    final $url = '/pet';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _updatePet({required Pet? body}) {
    final $url = '/pet';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Pet>>> _findPetsByStatus({required String? status}) {
    final $url = '/pet/findByStatus';
    final $params = <String, dynamic>{'status': status};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Pet>, Pet>($request);
  }

  @override
  Future<Response<List<Pet>>> _findPetsByTags({required List<String>? tags}) {
    final $url = '/pet/findByTags';
    final $params = <String, dynamic>{'tags': tags};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Pet>, Pet>($request);
  }

  @override
  Future<Response<Pet>> _getPetById({required String? petId, String? apiKey}) {
    final $url = '/pet/${petId}';
    final $headers = {
      if (apiKey != null) 'api_key': apiKey,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<dynamic>> _updatePetWithForm(
      {required String? petId, String? name, String? status}) {
    final $url = '/pet/${petId}';
    final $body = <String, dynamic>{'name': name, 'status': status};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _deletePet(
      {String? apiKey, required String? petId}) {
    final $url = '/pet/${petId}';
    final $headers = {
      if (apiKey != null) 'api_key': apiKey,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Order>> _placeOrder({required Order? body}) {
    final $url = '/store/order';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Order, Order>($request);
  }

  @override
  Future<Response<Order>> _getOrderById({required String? orderId}) {
    final $url = '/store/order/${orderId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Order, Order>($request);
  }

  @override
  Future<Response<dynamic>> _deleteOrder({required String? orderId}) {
    final $url = '/store/order/${orderId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _getInventory({String? apiKey}) {
    final $url = '/store/inventory';
    final $headers = {
      if (apiKey != null) 'api_key': apiKey,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _createUsersWithArrayInput(
      {required List<User>? body}) {
    final $url = '/user/createWithArray';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _createUsersWithListInput(
      {required List<User>? body}) {
    final $url = '/user/createWithList';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<User>> _getUserByName({required String? username}) {
    final $url = '/user/${username}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<User, User>($request);
  }

  @override
  Future<Response<dynamic>> _updateUser(
      {required String? username, required User? body}) {
    final $url = '/user/${username}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _deleteUser({required String? username}) {
    final $url = '/user/${username}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _loginUser(
      {required String? username, required String? password}) {
    final $url = '/user/login';
    final $params = <String, dynamic>{
      'username': username,
      'password': password
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<dynamic>> _logoutUser() {
    final $url = '/user/logout';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _createUser({required User? body}) {
    final $url = '/user';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}

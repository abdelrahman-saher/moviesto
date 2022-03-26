import 'package:flutter_test/flutter_test.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviesto/data/sign_up/data/local/signup_local_data_source_impl.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';

import 'signup_local_data_source_impl_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<GetStorage>(unsupportedMembers: {#getKeys, #getValues})
])
void main() {
  late SignupLocalDataSourceImpl usecase;
  late MockGetStorage mockGetStorage;
  const UserModel userModel = UserModel(
      "uid", "firstName", "secondName", "phoneNumber", "email", "password");
  setUp(() {
    mockGetStorage = MockGetStorage();
    usecase = SignupLocalDataSourceImpl(mockGetStorage);
  });
  group("cache user id test -", () {
    test("should return normally if user cached successfully", () async {
      when(mockGetStorage.write(UserModel.USER_ID_BOX_KEY, userModel.uid))
          .thenAnswer((_) => Future.value());
      expect(() async => await usecase.cacheUser(userModel), returnsNormally);
    });
    test("should throw Local failure if error", () async {
      when(mockGetStorage.write(UserModel.USER_ID_BOX_KEY, userModel.uid))
          .thenThrow(Exception());
      expect(() async => await usecase.cacheUser(userModel),
          throwsA(isA<LocalFailure>()));
    });
  });
}

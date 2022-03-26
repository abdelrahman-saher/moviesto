import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviesto/data/constants/database_contract.dart';
import 'package:moviesto/data/sign_up/data/remote/signup_remote_data_sourece_impl.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';

import 'signup_remote_data_sourece_impl_test.mocks.dart';

@GenerateMocks([
  FirebaseFirestore,
  CollectionReference<Map<String, dynamic>>,
  DocumentReference<Map<String, dynamic>>,
  DocumentSnapshot<Map<String, dynamic>>
])
void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
  late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
  late SignupRemoteDataSourceImpl usecase;
  late MockDocumentSnapshot<Map<String, dynamic>> mockDocumentSnapshot;
  const UserModel userModel = UserModel(
      "uid", "firstName", "secondName", "phoneNumber", "email", "password");
  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();
    when(mockFirebaseFirestore.collection(DBContract.USERSCOLLECTION))
        .thenReturn(mockCollectionReference);
    usecase = SignupRemoteDataSourceImpl(mockFirebaseFirestore);
  });
  group("Signup remote data source test -", () {
    group("Add new user test -", () {
      test("should return uid if user added successfully", () async {
        when(mockCollectionReference.doc(userModel.uid))
            .thenAnswer((_) => mockDocumentReference);
        when(mockDocumentReference.set(userModel.toJson()))
            .thenAnswer((_) => Future.value());
        final result = await usecase.addNewUser(userModel);
        expect(result, equals(userModel.uid));
      });
      test("should throw ServerError when firebase firestore fail", () async {
        when(mockCollectionReference.doc(userModel.uid))
            .thenThrow((_) => Exception());
        expect(() async => await usecase.addNewUser(userModel),
            throwsA(isA<ServerFailure>()));
      });
    });
    group("User exists test -", () {
      test("if user exists should return true", () async {
        when(mockCollectionReference.doc(userModel.uid))
            .thenAnswer((_) => mockDocumentReference);
        when(mockDocumentReference.get())
            .thenAnswer((_) async => mockDocumentSnapshot);
        when(mockDocumentSnapshot.exists).thenReturn(true);
        final bool? result = await usecase.userExists(userModel);
        expect(result, equals(true));
      });
      test("if user doesn't exist should return false", () async {
        when(mockCollectionReference.doc(userModel.uid))
            .thenAnswer((_) => mockDocumentReference);
        when(mockDocumentReference.get())
            .thenAnswer((_) async => mockDocumentSnapshot);
        when(mockDocumentSnapshot.exists).thenReturn(false);
        final bool? result = await usecase.userExists(userModel);
        expect(result, equals(false));
      });
      test("if firestore throw error should throw server error", () async {
        when(mockCollectionReference.doc(userModel.uid))
            .thenAnswer((_) => mockDocumentReference);
        when(mockDocumentReference.get()).thenThrow((_) => Exception());
        expect(() async => await usecase.userExists(userModel),
            throwsA(isA<ServerFailure>()));
      });
    });
  });
}

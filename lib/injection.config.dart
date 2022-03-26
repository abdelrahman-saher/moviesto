// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i6;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'data/core/injectable_modules.dart' as _i12;
import 'data/sign_up/data/remote/signup_remote_data_source.dart' as _i8;
import 'data/sign_up/data/remote/signup_remote_data_sourece_impl.dart' as _i9;
import 'data/sign_up/repositories/signup_repository_impl.dart' as _i11;
import 'domain/sign_up/repositories/signup_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.FacebookAuth>(() => injectableModule.facebookAuth);
  gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => injectableModule.firestore);
  gh.lazySingleton<_i6.GetStorage>(() => injectableModule.box);
  gh.lazySingleton<_i7.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.factory<_i8.SignupRemoteDataSource>(
      () => _i9.SignupRemoteDataSourceImpl(get<_i5.FirebaseFirestore>()));
  gh.factory<_i10.SignupRepository>(
      () => _i11.SignupRepositoryImpl(get<_i4.FirebaseAuth>()));
  return get;
}

class _$InjectableModule extends _i12.InjectableModule {}

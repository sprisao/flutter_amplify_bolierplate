import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await _configureAmplify();
  } on AmplifyAlreadyConfiguredException {
    print('Amplify was already configured. Was the app restarted?');
  }

  runApp(const MyApp());
}

Future<void> _configureAmplify() async {
  await Amplify.addPlugins([
    AmplifyDataStore(modelProvider: ModelProvider.instance),
    AmplifyAuthCognito(),
    AmplifyAPI(),
    AmplifyStorageS3()
  ]);
  await Amplify.configure(amplifyconfig);
}


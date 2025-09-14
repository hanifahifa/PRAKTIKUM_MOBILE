plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
<<<<<<< HEAD
    namespace = "com.example.praktimum_mobile"
=======
<<<<<<< HEAD
    namespace = "com.example.mobileprograming"
=======
    namespace = "com.example.flutter_application_2"
>>>>>>> c56b7831927a2f2779e2548cb3035c700177d2d9
>>>>>>> 3acb10e49775bc735e5fac558e1b1ebe82587ea6
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
<<<<<<< HEAD
        applicationId = "com.example.praktimum_mobile"
=======
<<<<<<< HEAD
        applicationId = "com.example.mobileprograming"
=======
        applicationId = "com.example.flutter_application_2"
>>>>>>> c56b7831927a2f2779e2548cb3035c700177d2d9
>>>>>>> 3acb10e49775bc735e5fac558e1b1ebe82587ea6
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

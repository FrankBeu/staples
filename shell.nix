{ sources ? import ./nix/sources.nix }:

let
  pkgs = import sources.nixpkgs { 
  config.android_sdk.accept_license = true;
  config.allowUnfree = true;
  };

  buildToolsVersion = "30.0.3";
  android = pkgs.callPackage ./nix/android.nix {};

  ### licences
  sdk = android.androidsdk.overrideAttrs (oldAttrs: {
    installPhase = oldAttrs.installPhase + ''
      mkdir -p "$out/libexec/android-sdk/licenses"
      function lic {
      echo -e "\n$2" >> "$out/libexec/android-sdk/licenses/$1"
      }
      lic android-googletv-license 601085b94cd77f0b54ff86406957099ebe79c4d6
      lic android-sdk-arm-dbt-license 859f317696f67ef3d7f30a50a5560e7834b43903
      # lic android-sdk-license 8933bad161af4178b1185d1a37fbf41ea5269c55
      # lic android-sdk-license 24333f8a63b6825ea9c5514f83c2829b004d1fee
      lic android-sdk-preview-license 84831b9409646a918e30573bab4c9c91346d8abd
      lic google-gdk-license 33b6a2b64607f11b759f320ef9dff4ae5c47d97a
      lic mips-android-sysimage-license e9acab5b5fbb560a72cfaecce8946896ff6aab9d
    '';
  });

in 
pkgs.mkShell rec {
  buildInputs = with pkgs; [
    flutter
    jdk8
    niv
    android-studio
    # android.androidsdk
    sdk  ### instead of android.androidsdk
    android.platform-tools
    # qemu
    dart
    lcov
  ];

  shellHook = ''
    export PATH="$PATH":"$HOME/.pub-cache/bin"
  '';

  ANDROID_HOME      = "${sdk}/libexec/android-sdk";
  ANDROID_SDK_ROOT  = "${sdk}/libexec/android-sdk";
  CHROME_EXECUTABLE = "/run/current-system/sw/bin/chromium";
  DART_SDK          = "${FLUTTER_SDK}/bin/cache/dart-sdk";
  FLUTTER_SDK       = pkgs.flutter.unwrapped;
  # GRADLE_OPTS       = "-Dorg.gradle.project.android.aapt2FromMavenOverride =${ANDROID_SDK_ROOT}/build-tools/${buildToolsVersion}/aapt2";
  JAVA_HOME         = pkgs.jdk8.home;
  # ANDROID_HOME      = "${android.androidsdk}/libexec/android-sdk";
  # ANDROID_SDK_ROOT  = "${android.androidsdk}/libexec/android-sdk";

}

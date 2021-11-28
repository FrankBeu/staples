# with import <nixpkgs> {};
# {androidenv}:

# let 
# emulator = androidenv.emulateApp {
  # name = "android-30";
  # platformVersion = "30";
  # abiVersion = "x86_64"; # armeabi-v7a, mips, x86_64
  # systemImageType = "google_apis_playstore";
# }

# in 
# emulator
# with import <nixpkgs> {};
{ pkgs ? import <nixpkgs> { config.android_sdk.accept_license = true; } }:

# let
  # nixpkgs.config = { 
  # allowUnfree = true;
  # android_sdk.accept_license = true;
  # };
# in 
pkgs.androidenv.emulateApp {
  name = "emu";
  platformVersion = "30";
  # useGoogleAPIs = false;
  enableGPU = false;
  abiVersion = "x86_64";
  avdHomeDir = "/home/frank/.android/avd";
}

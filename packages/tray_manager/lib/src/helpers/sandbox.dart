import 'dart:io';

/// Returns `true` if the app is running in a sandbox, eg. Flatpak, Snap, Docker, Podman.
bool runningInSandbox() {
  return runningInPortalSandbox() ||
      (Platform.environment['container']?.isNotEmpty == true) ||
      FileSystemEntity.isFileSync('/.dockerenv');
}

/// Returns `true` only for portal-based sandboxes (Flatpak, Snap).
bool runningInPortalSandbox() {
  return Platform.environment.containsKey('FLATPAK_ID') ||
      Platform.environment.containsKey('SNAP');
}

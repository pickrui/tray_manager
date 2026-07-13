import 'dart:io';

/// Returns `true` only for portal-based sandboxes (Flatpak, Snap).
bool runningInPortalSandbox() {
  return Platform.environment.containsKey('FLATPAK_ID') ||
      Platform.environment.containsKey('SNAP');
}

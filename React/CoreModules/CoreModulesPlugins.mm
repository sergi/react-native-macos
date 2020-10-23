/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @generated by an internal plugin build system
 */

#ifndef RN_DISABLE_OSS_PLUGIN_HEADER

// OSS-compatibility layer

#import "CoreModulesPlugins.h"

#import <string>
#import <unordered_map>

Class RCTCoreModulesClassProvider(const char *name) {
  static std::unordered_map<std::string, Class (*)(void)> sCoreModuleClassMap = {
#if !TARGET_OS_OSX // TODO(macOS) = Do we need these?
    {"AccessibilityManager", RCTAccessibilityManagerCls},
    {"Appearance", RCTAppearanceCls},
#endif // TODO(macOS)
    {"DeviceInfo", RCTDeviceInfoCls},
    {"ExceptionsManager", RCTExceptionsManagerCls},
    {"PlatformConstants", RCTPlatformCls},
    {"Clipboard", RCTClipboardCls},
    {"I18nManager", RCTI18nManagerCls},
    {"SourceCode", RCTSourceCodeCls},
    {"ActionSheetManager", RCTActionSheetManagerCls},
    {"AlertManager", RCTAlertManagerCls},
    {"AsyncLocalStorage", RCTAsyncLocalStorageCls},
    {"Timing", RCTTimingCls},
    {"StatusBarManager", RCTStatusBarManagerCls},
    {"KeyboardObserver", RCTKeyboardObserverCls},
    {"AppState", RCTAppStateCls},
#if !TARGET_OS_OSX // TODO(macOS) = Do we need these?
    {"PerfMonitor", RCTPerfMonitorCls},
#endif // TODO(macOS)
    {"DevMenu", RCTDevMenuCls},
    {"DevSettings", RCTDevSettingsCls},
    {"RedBox", RCTRedBoxCls},
#if !TARGET_OS_OSX // TODO(macOS) = Do we need these?
    {"LogBox", RCTLogBoxCls},
#endif // TODO(macOS)
    {"TVNavigationEventEmitter", RCTTVNavigationEventEmitterCls},
    {"WebSocketExecutor", RCTWebSocketExecutorCls},
    {"WebSocketModule", RCTWebSocketModuleCls},
    {"DevLoadingView", RCTDevLoadingViewCls},
  };

  auto p = sCoreModuleClassMap.find(name);
  if (p != sCoreModuleClassMap.end()) {
    auto classFunc = p->second;
    return classFunc();
  }
  return nil;
}

#endif // RN_DISABLE_OSS_PLUGIN_HEADER
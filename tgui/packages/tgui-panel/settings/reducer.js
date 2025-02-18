/**
 * @file
 * @copyright 2020 Aleksej Komarov
 * @license MIT
 */

import { changeSettingsTab, loadSettings, openChatSettings, toggleSettings, updateSettings } from './actions';
import { DEFAULT_THEME, FONTS, SETTINGS_TABS } from './constants';

const initialState = {
  version: 1,
  fontSize: 13,
  fontFamily: FONTS[0],
  lineHeight: 1.2,
  theme: DEFAULT_THEME,
  adminMusicVolume: 0.5,
  highlightText: '',
  highlightColor: '#ffdd44',
  matchWord: false,
  matchCase: false,
  view: {
    visible: false,
    activeTab: SETTINGS_TABS[0].id,
  },
};

export const settingsReducer = (state = initialState, action) => {
  const { type, payload } = action;
  if (type === updateSettings.type) {
    return {
      ...state,
      ...payload,
    };
  }
  if (type === loadSettings.type) {
    // Validate version and/or migrate state
    if (!payload?.version) {
      return state;
    }
    delete payload.view;
    return {
      ...state,
      ...payload,
    };
  }
  if (type === toggleSettings.type) {
    return {
      ...state,
      view: {
        ...state.view,
        visible: !state.view.visible,
      },
    };
  }
  if (type === openChatSettings.type) {
    return {
      ...state,
      view: {
        ...state.view,
        visible: true,
        activeTab: 'chatPage',
      },
    };
  }
  if (type === changeSettingsTab.type) {
    const { tabId } = payload;
    return {
      ...state,
      view: {
        ...state.view,
        activeTab: tabId,
      },
    };
  }
  return state;
};

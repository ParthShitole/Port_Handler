#!/usr/bin/osascript -l JavaScript

var chrome = Application('Google Chrome');
//chrome.activate();
chrome.includeStandardAdditions = true;
var currentTab = chrome.windows[0].activeTab()


currentTab.execute({javascript:'connection.send(\'{"type": "SHIP_STEER", "shipId": 0}\');'})

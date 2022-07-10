#!/usr/bin/osascript -l JavaScript

var chrome = Application('Google Chrome');
//chrome.activate();
chrome.includeStandardAdditions = true;
var currentTab = chrome.windows[0].activeTab()

currentTab.execute({javascript:'var connection = new WebSocket(\'wss://5eadf7ce10e8ede785800de7e30a3296.challenge.hackazon.org/ws\', [\'soap\', \'xmpp\']);'})
//currentTab.execute({javascript:'connection.send(\'{"type": "START_GAME", "level": 3, "password":"CTF{capt41n-h00k!}"}\');'})

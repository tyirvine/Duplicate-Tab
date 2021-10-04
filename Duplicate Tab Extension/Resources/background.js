// Create a new tab with the current tab's url
browser.browserAction.onClicked.addListener((tab) => {
	browser.tabs.duplicate(tab.id);
});

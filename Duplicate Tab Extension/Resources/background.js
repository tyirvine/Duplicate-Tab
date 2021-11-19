// Create a new tab with the current tab's url
browser.browserAction.onClicked.addListener((tab) => {
	browser.tabs.duplicate(tab.id);
});

// This duplicates the tab based on a shortcut
browser.runtime.onMessage.addListener((request, sender, sendResponse) => {
	// console.log('Running');
	// This simply duplicates a tab or sends a response for the customer's shortcut preference request from content.js
	if (request.message === 'activate-duplicate-tab') {
		browser.tabs.getCurrent().then((tab) => {
			browser.tabs.duplicate(tab.id);
		});
	} else if (request.message === 'shortcut-duplicate-tab') {
		// This requests the shortcut from the native portion of the app when the extension loads
		// This way we make less requests to the native app and can improve performance.
		//
		// We then store the shortcut from the native portion into the local storage on the browser
		browser.runtime.sendNativeMessage('application.id', { message: request.message }, (response) => {
			browser.storage.local.get('shortcut', (shortcut) => {
				console.log(response);
				// Store the shortcut if it's not the same as the one in storage
				if (_.isEqual(shortcut.shortcut, response) === false) {
					browser.storage.local.set({ shortcut: response });

					// Reload all tabs
					let querying = browser.tabs.query({});
					querying.then((tabs) => {
						for (let tab of tabs) {
							browser.tabs.reload(tab.id);
						}
					});
				}
			});
		});
	}
});

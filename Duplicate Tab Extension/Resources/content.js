// This is the shortcut detector injected into the page
document.onkeydown = (e) => {
	// This will give us the shortcut as a list from the local storage.
	// It keeps us from requesting it from the native, which should speed things up a tad.
	// https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/getModifierState
	browser.storage.local.get('shortcut', (shortcut) => {
		if (shortcut !== undefined) {
			// Get the shortcut from storage and get the root key which is always the last key
			// and get the modifiers which are always the first set of keys
			// console.log('Run!', shortcut.shortcut[0].shortcut);
			let keys = shortcut.shortcut[0].shortcut;
			let modifiers = keys.slice(0, -1);

			// The root key is converted to a unicode key here.
			// This is okay because we only use root keys in the native app and therefore
			// the char codes will always match up!
			let rootKey = String(keys[keys.length - 1]).charCodeAt(0);

			// Find which modifiers are pressed and return true once all modifiers are pressed
			let keysPressed = modifiers.every((modifier) => {
				return e.getModifierState(modifier);
			});

			// Finally, check to see if all shortcut keys are pressed
			// console.log('Keys Pressed:', keysPressed, 'Key Codes:', e.keyCode, rootKey);
			if (keysPressed && rootKey == e.keyCode) {
				browser.runtime.sendMessage({ message: 'activate-duplicate-tab' });
			}
		}
	});
};

// Run on the loading of a webpage
browser.runtime.sendMessage({ message: 'shortcut-duplicate-tab' });

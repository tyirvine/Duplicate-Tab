### How do I use the extension?

First make sure it's enabled for the pages you want to use it on. Then, simply tap the `Duplicate Tab` button from the Safari extension menu.

### How do I change the keyboard shortcut?

Simply tap on the shortcut button inside of the app, and a menu will appear that will let you change it.

Keep in mind ⤵︎

- <kbd>⌘ + D</kbd> - Adds a bookmark in Safari.
- <kbd>⌘ + option + D</kbd> - Opens the dock on an iPad.
- <kbd>⌘ + shift + D</kbd> - Adds a page to your reading list in Safari.
- <kbd>control + D</kbd> - Is a forwards backspace.

### How does it work?

Checkout [`background.js`](https://github.com/tyirvine/Duplicate-Tab/blob/main/Duplicate%20Tab%20Extension/Resources/background.js). The function [`tabs.duplicate()`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/tabs/duplicate) takes in the tab id of the active tab and duplicates it.

### Why open source?

Following in the footsteps of [Amplosion](https://github.com/christianselig/Amplosion), we decided to show the source of this app so that people could see for themselves that nothing suspicious was going on. Not all parts of the app are included to prevent against people re-uploading this app to the App Store with their name on it.

### Is Duplicate Tab built from this source?

It isn't. This is an older version of the source. The version uploaded to the App Store includes app icons, assets, and other information we didn't want public.

### I have feedback!

If you've found a bug or have a feature request please create a [new issue](/issues/new/choose) and we'll get right on it!

### License 🚫

This software uses the [No License](https://choosealicense.com/no-permission/) license. TLDR: You're not allowed to re-upload this software, distribute, or sell it in anyway.

This code is shown for customers of the app to have confidence that their data is not being collected and distributed. It is not here to be copied and re-uploaded.

### Privacy Policy 🔒

Duplicate Tab does not collect and/or transmit any data period. Duplicate Tab locally (on your device) saves settings, such as app icon choice, and shortcut preference in [User Defaults](https://developer.apple.com/documentation/foundation/userdefaults). That is the only information handled and saved.

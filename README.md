<div align="center">

<p align="center"><img src="https://user-images.githubusercontent.com/39813066/146625069-06d2ad71-4a47-4b9c-88af-cdee15f822cf.png" width="100px"></p>

# Duplicate Tab
Duplicate Tab is a Safari Extension for iOS and iPadOS that makes duplicating tabs in Safari much easier!
[Check it out on the App Store](https://apple.co/3myj6O0)

<p align="center"><img src="https://user-images.githubusercontent.com/39813066/146625086-6c1c3daa-9917-4cd3-a3a9-220fa3a1c4bb.png" width="700px"></p>

</div>

<br>


## Privacy Policy  🔒
Duplicate Tab does not collect and/or transmit any data period. Duplicate Tab locally (on your device) saves settings, such as app icon choice, and shortcut preference in [User Defaults](https://developer.apple.com/documentation/foundation/userdefaults).\*  That is the only information handled and saved.

## Frequently Asked Questions  💭

### How do I use the extension?
To duplicate a tab, simply tap the extension button from the Safari extension menu.

### How do I change the keyboard shortcut?
Simply tap on the shortcut button inside of the app, and a menu will appear that will let you change it.

Keep in mind ⤵︎
* <kbd>⌘ + D</kbd> - Adds a bookmark in Safari.
* <kbd>⌘ + option + D</kbd> - Opens dock on iPad.
* <kbd>⌘ + shift + D</kbd> - Adds a page to your reading list in Safari.
* <kbd>control + D</kbd> - Deletes forwards.

### How does it work?
Checkout [`background.js`](https://github.com/tyirvine/Duplicate-Tab/blob/main/Duplicate%20Tab%20Extension/Resources/background.js) - [`tabs.duplicate()`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/tabs/duplicate) takes in the tab id of the active tab and duplicates it.

### Why open source?
Following in the footsteps of [Amplosion](https://github.com/christianselig/Amplosion), I decided to show the source of this app so that people could see for themselves that nothing suspicious was going on. Not all parts of the app are included to prevent against people reuploading this app to the App Store with their name on it and the same icon.

### Is Duplicate Tab built from this source?
It isn't. This is an older version of the source. The source uploaded to the App Store includes app icons, assets, and other information I didn't want public.

### I have feedback!
If you've found a bug or have a feature request please create a [new issue](https://github.com/tyirvine/Duplicate-Tab/issues/new/choose) and I'll get right on it!

## License  🚫
This software uses the [No License](https://choosealicense.com/no-permission/) license. TLDR: You're not allowed to reupload this software, distribute, or sell it in anyway.

This code is shown for users of the app to have confidence that their data is not being collected and distributed. It is not here to be copied and reuploaded.

<br>

\* **This part of the source is not included in this repository.**

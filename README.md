
# React Native Alterning App Icon

Dynamically change the App Icon on iOS in your React Native App.

## Table of Contents

- [Install](#install)
- [Add alternate icons](#add-alternate-icons)
- [Usage](#usage)
- [API](#api)
- [License](#license)

## Install

```
$ yarn add react-native-altering-app-icon
```

or with npm

```
$ npm i react-native-altering-app-icon
```

### Link Package

```
$ react-native link react-native-altering-app-icon
```

## Add alternate icons

1. Create a folder within your Xcode project. (`NameOfYourProject/NameOfYourApp/AlteringIcons`).
2. Add the icons you want to change between to that folder. Follow the usual naming convention (`iconanme@2x.png, iconname@3x.png`).
3. If you create the folder from the finder, make sure to create a folder reference in Xcode.

### Adjust your `info.plist`

Copy the following to your `info.plist` and adjust it as needed. Omit the file extension (and `@2x`) part, Xcode will pick them accordingly. You can add more alternate icons by copying the an alternate block.

```
<key>CFBundleIcons</key>
<dict>
    <key>CFBundleAlternateIcons</key>
    <dict>
        <key>default</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>AppIcons/Icon-60</string>
            </array>
            <key>UIPrerenderedIcon</key>
            <false/>
        </dict>
        <key>alternate</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>AppIcons/Icon-60_alternate</string>
            </array>
            <key>UIPrerenderedIcon</key>
            <false/>
        </dict>
        <key>CFBundlePrimaryIcon</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>AppIcons/Icon-60</string>
            </array>
        </dict>
    </dict>
</dict>
```

## Usage

```javascript
import DynamicIcons from 'react-native-altering-app-icon';

DynamicIcons.dynamicAppIconSupported() // Returns false on Android
    .then((supportsDevice: boolean) => {
        // Do stuff  
 });

DynamicIcons.switchAppIcon('alternate'); // Key you set in your in your info.plist

DynamicIcons.switchAppIcon(null); // Switch back to the default Icon

DynamicIcons.getIconName(result => alert( 'Icon name: ' + result.iconName));
```

## Api

### switchAppIcon(key: string)

To change the app icon call this method with one of the alternate app icons keys specified in your `plist.info`. To reset to the default app icon pass `null`.

### dynamicAppIconSupported()

Returns a promise which resolves to a boolean. Always false on android

### getIconName(callback(result))

Returns a callback with an object containing the icon name. Example: `{iconName: 'default'}`.

# SwiftTemplate

# Installation

## Using script

Only need execute this command in terminal:

```swift
sudo swift install.swift templatePath
```

## Manual

Go to Application folder, browse to the Xcode application icon. Right-click it and choose `Show Package Contents`. Then browse to: `Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/`. Create folder with your custom templates. For example: `Custom Templates`. And add `Module MVP.xctemplate` directory to created folder. Now you can find your template in Xcode.


# Template usage

At first create module by `File->New->File`. Choose `Custom Templates-> Module MVP`.

<img width="727" alt="Screen Shot 2021-10-24 at 21 16 06" src="https://user-images.githubusercontent.com/24410759/138607517-be948be1-0825-4355-bbd5-090aa04767b1.png">

Then press `Add files to "your project"` (option+cmd+a). It will create references for your new files in Xcode project.

<img width="355" alt="Screen Shot 2021-10-24 at 21 19 13" src="https://user-images.githubusercontent.com/24410759/138607337-99b6e8d8-aef5-41e3-9949-52af4d5b74e4.png">

After that click `Delete` on your first created module (the blue one) and choose `Remove Reference`.

<img width="254" alt="Screen Shot 2021-10-24 at 21 20 14" src="https://user-images.githubusercontent.com/24410759/138607525-dbc16201-3644-4b13-8623-d57a16f4af4d.png">

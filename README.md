# Pre-work - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Joseph Miller

Time spent: 4 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Tip slider that adjusts the tip percentage.

## Video Walkthrough 

Here are walkthroughs of implemented user stories:

### Version 1: Segmented Control
The initial app used a segmented control to select between a 15%, 18%, and 20% tip rate.

<img src='tipCalcSeg.gif' title='Tip Calculator Version 1' alt='Tip Calculator Version 1' />

GIF created with [Recordit](https://recordit.co/)

### Version 2: Slider
The segmented control was replaced with a slider so that any percent between 0% and 100% could be selected.

<img src='tipCalcSlider.gif' title='Tip Calculator Version 2' alt='Tip Calculator Version 2' />

GIF created with [Recordit](https://recordit.co/)

### Version 3: Settings Page
I added a settings page to allow the user to set the default tip. The main view controller retrieves the default tip which is saved in UserDefaults.

<img src='settingsPage.gif' title='Tip Calculator Version 3' alt='Tip Calculator Version 3' />

GIF created with [LiceCap](http://www.cockos.com/licecap/)

### Version 4: Animated Background
I animated the background of the main view to cycle through the colors of the rainbow.

<img src='animatedBackground.gif' title='Tip Calculator Version 4' alt='Tip Calculator Version 4' />

GIF created with [LiceCap](http://www.cockos.com/licecap/)

## Notes

Laying out the UI elements so they look good was challenging. The layout of the app has a lot that can be improved upon.

## License

    Copyright 2020 Joseph Miller

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

# Pre-work - TipCal

TipCal is a tip calculator application for iOS.

Submitted by: Sonny Sheth

Time spent: 5 hours spent in total (including time to research more about Swift)

## User Stories

The following **required** functionality is complete:

* [ x ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [ x ] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ x ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ x ] Added optional tax input to be calculated in total amount
- [ x ] Added option for user to divide total amount by up to 4
- [ x ] Changes to default tip percentage in settings reflected in main view without rebooting app

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Had trouble implementing delegation in order to pass data from the settings controller to the main view controller (in order to automatically update any changes to the default tip percentage), so opted, for sake of time and efficiency, to implement a public singleton. If I had more time, I would make the singleton private.

## License

    Copyright 2017 Sonny Sheth

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

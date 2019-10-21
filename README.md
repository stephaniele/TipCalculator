# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Stephanie Le**

Time spent: **10** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
* [ ] Split amount between a certain number of people

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## My App Walkthrough with gif

<img src='http://g.recordit.co/S1W6BfqKBJ.gif' />


## Notes

**Problem 1: Modifying results with UserDefaults while not letting it reset**

I took awhile figuring out how to pass data between screens with UserDefaults.

A major task I haven't accomplished: I want to let the user sets the 
default tip percentages for all parts of the SegmentedControl panel. 

In order to do so, I have to save all the default tip percentages in UserDefaults from the time the app launches
and the user hasn't chosen their default values.

Then, when the user inputs their percentages in text fields in Settings page, I access the text fields' text
and save the values to UserDefaults.

However, I ran into a problem as when I switch between screens, the text fields revert to their original
PlaceHolder text. Thus UserDefaults gets reset and affects my main calculator page.

I didn't have time to figure out how to set the default PlaceHolder text for textfield. That will be the next task that I embark on.

**Problem 2: Changing labels on Segmented Control**

This task is an extension on Problem 1, relating to changing default tip percentages. 
I want to reflect the changes on the SegmentedControl itself. 

What I did was create an Action outlet for the text fields holding user's percentage values on Settings onto the main screen.
Then I called segmentedcontrol.setTitle to set their labels to the user's percentages.

However, they did not relfect the changes, displaying only blank. I suspect this is because of text formatting issues. 
I will have to set the attributes for the text in segmented control to be the right font and size for it to be displayed.


Overall, this was a very fun project. I look forward to working more with Swift and XCode and especialling enrolling in CodePath's Development Bootcamp.









## License

    Copyright [2019] [CodePath]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

# musicApp

To run this application, we need a Parse SDK and an Back4App account.
To install the Parse SDK to the Xcode, you will need CocoaPods, CocoaPods is a dependency manager for swift projects.
To install CocoaPods, open your terminal, copy the following code snippet and paste it in to your terminal and hit return:

$ sudo gem install cocoapods

CocoaPods should install automatically after you enter your password. 
Next open up the Xcode Project folder and open a terminal window in that folder.
Now you are going to create a Podfile. Copy the following code snippet and paste it in to your terminal and hit return:

$ pod init

Next open your Podfile with Xcode or any text editor and under each target add “pod ‘Parse’”.

![image](https://user-images.githubusercontent.com/38330864/169685876-1ddcc72e-b96e-494a-8233-558f6dd1ebea.png)

Now you are going to add Parse to your project. Make sure your terminal is opened to your project folder. Copy the following code snippet and paste it in to your terminal and hit return:

$ pod install

If you have already opened your Xcode project close it. From now on you’ll open the workspace file instead of the project file. Double click on the workspace file to open it.

Step 2 - Connect your Parse App
Open your project’s AppDelegate.m file to set up the app’s credentials.
Parse iOS SDK uses these settings to connect to the Back4App servers.
At the top of the file you should see a function called ‘didFinishLaunchingWithOptions’.
Paste the following code snippet inside this function, and make sure it is above the line that says ‘return YES’.

AppDelegate.m

    [Parse initializeWithConfiguration:[ParseClientConfiguration configurationWithBlock:^(id<ParseMutableClientConfiguration> configuration) {
        configuration.applicationId = @"PASTE_YOUR_APPLICATION_ID_HERE";
        configuration.clientKey = @"PASTE_YOUR_CLIENT_ID_HERE";
        configuration.server = @"https://parseapi.back4app.com/";
    }]];

At the top of your AppDelegate.m file make sure to include Parse as a module by including the follwing code snippet right below ‘#import “AppDelegate.h”’.

AppDelegate.m

#import <Parse/Parse.h>

Go to your App Dashboard at Back4App website.
Navigate to app’s settings: Click on Features > Core Settings block > Server.
Return to your AppDelegate.m file and paste your applicationId and clientKey.

Here is the image of the database.
![Xnip2022-05-22_17-43-21](https://user-images.githubusercontent.com/38330864/169685542-92c13d69-d970-4a67-980b-b86e638f6b6e.jpg)

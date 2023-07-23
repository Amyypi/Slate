# <b>AAA Creative: Slate Calendar App</b>

<b>I highly recommend you to install all of the programs/dependencies first (if applicable) before you clone the project repo, but I will mention to download them during the instructions.</b>

## Tools/Languages/Technical Setup (Mac + Windows):

* [Flutter](https://flutter.dev/?gclid=Cj0KCQjwqc6aBhC4ARIsAN06NmMJwZMEAjf8NP7I5PzwpqdVV761GDSqKrmXiOUia63cJfxYAB3SltAaApQ9EALw_wcB&gclsrc=aw.ds)
* [Dart](https://dart.dev/)
* [Xcode](https://developer.apple.com/xcode/) for the IOS simulator (mac)
* [cocoapods](https://cocoapods.org/) (mac)
* [Android Studio (SDK)](https://developer.android.com/studio/?gclid=Cj0KCQjwqc6aBhC4ARIsAN06NmMn9JIrBmELttGFMoBoA79_vxswLqk1dIP9MQV_g99SqyBM_rgvkHsaAicHEALw_wcB&gclsrc=aw.ds)
* [Visual Studio Code](https://code.visualstudio.com/) (IDE option)
* [Node.js](https://nodejs.org/) v14.x or later
* [npm](https://www.npmjs.com/) v6.14.4 or later
* [git](https://git-scm.com/) v2.14.1 or later
* [Get](https://pub.dev/packages/get)
* [Amplify Flutter](https://pub.dev/packages/amplify_flutter)
* [Amplify Datastore](https://pub.dev/packages/amplify_datastore)
* [Amplify API](https://pub.dev/packages/amplify_api)
* [AWS Amplify](https://aws.amazon.com/amplify/)

# App Installation Information: 

**Note**: The instructions about the installation can be found [here.](https://docs.flutter.dev/get-started/install/macos)

<b>Macbook:</b> What you really need to download for this to run is:

* [Intel flutter macos 3.3.4 zip download](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.3.4-stable.zip)
* [Xcode](https://developer.apple.com/xcode/) for the IOS simulator
* [cocoapods](https://cocoapods.org/)
* Android Studio (SDK)
* Visual Studio Code (optional, but highly recommend for the instructions)
* [Get](https://pub.dev/packages/get)
* [Amplify Flutter](https://pub.dev/packages/amplify_flutter)
* [Amplify Datastore](https://pub.dev/packages/amplify_datastore)
* [Amplify API](https://pub.dev/packages/amplify_api)
* [AWS Amplify](https://aws.amazon.com/amplify/)
* [Node.js](https://nodejs.org/) v14.x or later
* [npm](https://www.npmjs.com/) v6.14.4 or later
* [git](https://git-scm.com/) v2.14.1 or later

<b>Windows:</b> 

* [flutter_windows_3.3.5-stable.zip](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.3.5-stable.zip)
* Android Studio (SDK)
* Visual Studio Code (optional, but highly recommend for the instructions)
* [Get](https://pub.dev/packages/get)
* [Amplify Flutter](https://pub.dev/packages/amplify_flutter)
* [Amplify Datastore](https://pub.dev/packages/amplify_datastore)
* [Amplify API](https://pub.dev/packages/amplify_api)
* [AWS Amplify](https://aws.amazon.com/amplify/)
* [Node.js](https://nodejs.org/) v14.x or later
* [npm](https://www.npmjs.com/) v6.14.4 or later
* [git](https://git-scm.com/) v2.14.1 or later

-----

## Mac OS Installation:

### <b><u> 1. Get the Flutter SDK</u></b>

1. Install [Xcode](https://developer.apple.com/xcode/).

2. Download the latest stable release of Flutter SDK
    [Intel flutter macos 3.3.4 zip download](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.3.4-stable.zip)

    or [Apple Silicon flutter macos 3.3.4 zip download](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.3.4-stable.zip)

3. Extract the file in the desired location, for example:
    ```
    $ cd ~/development 
    $ unzip ~/Downloads/flutter_macos_3.3.4-stable.zip
    ```
    <i>Mac doesn't have a development folder, so just create one somewhere.</i>

4. Add flutter tool to your path:
    ```
    $ export PATH="$PATH:`pwd`/flutter/bin"
    ```
    This command sets your PATH variable for the current terminal window only. To permanently add Flutter to your path, see [Update your path](https://docs.flutter.dev/get-started/install/macos#update-your-path).

5. Install [cocoapods](https://cocoapods.org/).
    ```
    $ sudo gem install cocoapods
    ```

6. Once you've installed flutter and xcode, type these commands in the terminal:
    ```
    $ sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
    $ sudo xcodebuild -runFirstLaunch
    ```

### <b><u>2 - Run flutter doctor</u></b>
1. run this command:
    ```
    $  flutter doctor
    ```

2. If it mentions about any other installations that you've missed, please download that as listed in flutter doctor message.

Note: We will most likely just write most of the code in <i>lib >> main.dart</i>

## ----- Optional: ----- 

### Create and run a simple flutter from scratch (practice)
1. Create a new Flutter app by running the following from the command line:
    ```
    $ flutter create my_app
    ```

2. A my_app directory is created, containing Flutter’s starter app. Enter this directory:
    ```
    cd my_app
    ```

3. To launch the app in the Simulator, ensure that the Simulator is running and enter:
    ```
    flutter run
    ```

-----

## Windows Installation:

Windows instructions can be found [here](https://docs.flutter.dev/get-started/install/windows)

### <b><u> 1. Get the Flutter SDK</u></b>

1. Download the latest stable release of Flutter SDK
[flutter_windows_3.3.5-stable.zip](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.3.5-stable.zip)

2. Extract the file in the desired location

3. Add flutter tool to your path by searching "Edit the System environment variables" For more [info](https://docs.flutter.dev/get-started/install/windows)

4. Then install android studio SDK
    ```
    path/to/sdkmanager --install "cmdline-tools;latest"
    flutter doctor --android-licenses
    ```
    If you have issues with using the command lines, go to android studio program app and then you can also do the following:

1. go to the 'tool' tab >> 'SDK Manager' >> 'Android SDK' (under Appearance & Behavior >> System Settings) 

2. Then click the SDK Tools tab

3. Checkmark Google USB and Android SDK Command-Line Tools (latest)

4. Hit apply, it will take a bit to download


### <b><u>2. Download extensions</u></b>
1. for both android studio and Visual Studio Code, download the flutter and dart extension

-----

## Amplify / AWS Database Setup

### Introduction
 
1. Before you begin, login with these AWS admin logins [here](https://us-east-2.signin.aws.amazon.com/oauth?client_id=arn%3Aaws%3Asignin%3A%3A%3Aconsole%2Fcanvas&code_challenge=pl3RQP1uUgRHQbMHMumIYjtSfZ2wqK491e29tHMSAj0&code_challenge_method=SHA-256&response_type=code&redirect_uri=https%3A%2F%2Fconsole.aws.amazon.com%2Fconsole%2Fhome%3FhashArgs%3D%2523%26isauthcode%3Dtrue%26state%3DhashArgsFromTB_us-east-2_b84f77ee429e438c&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEDUaCXVzLWVhc3QtMiJFMEMCIFY1bWXF03nB362MypWOlSDf6vekPuR5U3rfPfQfsvgbAh8bUBULVMjqjBG3UtIX5jCd%2BRZE2ah7DrJipX4zypcvKooCCB4QARoMOTE0NTM5MTg3MDEzIgwkkId%2B3nfsEnpOD80q5wGv8BTnQMNi92RC9Jxx5vdn9zfXZHkGQvxEAgEbAfLPZYE9jM%2B2oGUENJZTYy31auQujBlNnr6F%2Btspo6W%2FdnFS73hc6foz4VN4FRJZ5ZTo8Lmz1XugjNJbnYyJafbhBGvlEGBlnq33rr5uD5M0%2F0ZwI%2FUqXtCu%2Bpew2k74PgJ8P%2Fn5Gz4JmaWezQtzlBXNYCGFbEPGUfdX448Xpee4CY9W%2FauZFl5W%2BDwZlx7YnInR1dUG11v9tSCkNGbO3A3aCeT%2BaqWi6qbtRjoQlhbIY4uCX0Ktp5R29FP17TsiUSUuoE1FV0zuKf4wo97rmgY6kQHBu%2FzbOSxCtiBlT3K9tUSwXx4TJdN8KAN6Bsagv3lAMyrpYMyFwVJFU7ClCmCLB%2FzOelZOzLzzYUgjnHU17o0AnP%2B9amZzJt8JkXtDqqffm2rmwbCPvCynq6J05G4C1q935t6cmcIzdAzGH8BdCTZ3Yvup7ECl4YOYIOyY75tRXuXvUFpYMHP6FOMPULtyQkgt&X-Amz-Date=20221027T205821Z&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA5J3WIRNCSYT7DQ46%2F20221027%2Fus-east-2%2Fsignin%2Faws4_request&X-Amz-SignedHeaders=host&X-Amz-Signature=b8a34ba6f12b85a9f483496f4a80243ac2fc0d1ed30bad132975246f3a31109a):

    1. Account ID (Ask me - Amy for the information)
    2. IAM User: Slate-Admin
    3. Password: CreativeAAA!

2. <b>Before you begin</b> Make sure you got the following installed:

    - [Node.js](https://nodejs.org/) v14.x or later
    - [npm](https://www.npmjs.com/) v6.14.4 or later (comes with Node.JS)
    - [git](https://git-scm.com/) v2.14.1 or later
    - [Flutter](https://flutter.dev/docs/get-started/install) version 2.10.0 or higher (make sure you are using a stable version of flutter) --> should be already installed from initial setup


3. Make sure you've downloaded these (commands shown in links -> click on 'installing' tab):
    * [Get](https://pub.dev/packages/get)
    * [Amplify Flutter](https://pub.dev/packages/amplify_flutter)
    * [Amplify Datastore](https://pub.dev/packages/amplify_datastore)
    * [Amplify API](https://pub.dev/packages/amplify_api)

---

### <b><u>Setup up an amplify database connection</u></b>

There's a [video tutorial](https://www.youtube.com/watch?v=fWbM5DLh25U) for you to follow about the setup. But ignore the steps about configuring a new user. 

1. Follow the instructions, choose what fits with your device:

    ```
    cd my_app
    ```

    If you're on mac, you might need to use sudo for some of these commands.
    
    <b>Then choose one of the following (rec npm) :</b>
     
    <u>NPM</u>
    ```
    npm install aws-amplify
    npm install -g @aws-amplify/cli
    ```

    <u>cURL (Mac and Linux)</u>
    ```
    curl -sL https://aws-amplify.github.io/amplify-cli/install | bash && $SHELL
    ```
    <u>cURL (Windows)</u>
    ```
    curl -sL https://aws-amplify.github.io/amplify-cli/install-win -o install.cmd && install.cmd
    ```
2. setup the Amplify CLI **Make sure you are in Command Prompt for this (Not powershell in vscode for the terminal for windows)**::
    ```
    amplify configure
    ```

3. amplify configure will ask you to sign into the AWS Console. Once you're signed in, Amplify CLI will ask you to create an IAM user.

    1. Specify region to our region (I believe its Virginia/us-east-1)
    2. <b>IMPORTANT</b>: Specify the username of the new IAM user: < enter username >
    3. It will then ask 'Complete the user creation using the AWS console. Follow the steps in the browser like shown in the gif below (default settings).
        ![](user-creation.gif)
    4. Amplify CLI will then ask you to copy and paste the accessKeyId and the secretAccessKey from your newly created IAM user to connect with Amplify CLI. 
    5. Profile Name can be kept as default.

       
### <b><u>Setup amplify team environment (group work enviroment)</u></b>

<u>Share single environment</u>

1. We're going to work in the "mainamp" amplify environment for our team. 

2. Most of the amplify files are actually saved in our github repo, so you should be able to do the following steps:

    1. Each members will run the following (choose default settings):

        <b>Windows:</b>
        ```
        amplify pull --appId d2ni6gs1oq3n6k --envName mainamp
        amplify pull #to make sure it pulled successfully
        ```

        <b>Mac:</b>
        (You most likely need to use 'sudo' for all of the amplify commands).
        ```
        sudo amplify pull --appId d2ni6gs1oq3n6k --envName mainamp
        sudo amplify pull #to make sure it pulled successfully
        ```

    2. To make sure you are in mainamp, do:
        ```
        amplify env list
        ```
        "mainamp should be your main amplify environment now. 

    3. Do this command often to make sure you are up to date with the backend dev. (It's pretty similar to git commands)
        ```
        sudo amplify pull
        ```

    4. Just to ensure everything is ok, do:
        ```
        amplify push
        ```
    5. Everything should be good now. You can check the database by doing:
        ```
        amplify console
        # choose Amplify Studio
        ```

    6. You can start your app now, start up your emulator and do flutter run. 

### <b><u> Set up the iOS simulator + run the app</u></b>

<b>Mac:</b>
1. On your Mac, find the Simulator via Spotlight or by using the following command:
    ```
    open -a Simulator
    ```

2. <b>After you setup your backend/database setup (Instructions below as "amplify setup"), do this step.</b> To launch the app in the Simulator, ensure that the Simulator is running and enter:
    ```
    flutter run
    ```

<b>Windows:</b>

1. if you decide to run the app through vscode, you click on the bottom bar right tab next to Dart Devtools (says Pixel_3a/(android-x64 emulator)). Make sure you click on the option that says android x64 emulator. 

2. Run the app:
    ```
    flutter run
    ```


## <b><u>Amplify command list:</u></b>
the commands are similar to git commands. [Here's a full list of commands](https://docs.amplify.aws/cli/start/workflows/#amplify-init)

- <b>amplify env checkout ENVIRONMENT_NAME</b>   #switch to another ampliify environment 
- <b>amplify env remove ENVIRONMENT_NAME</b>   #Removes a specific environment from the cloud 
- <b>amplify env list</b>    #This lists out your environments
- <b>amplify push</b>    #push your backend work to cloud
- <b>amplify pull</b>    #pull backend data from cloud
- <b>amplify console</b>    #This will direct you to the  website that shows you the data, click 'view and edit app content'
- <b>amplify init</b>    #be in your project folder

----
## <b><u>Extra Amplify Info</u></b>
If you still have trouble with the setup, follow the steps here: [To <b>enter the same amplify work environemnt</b>, read more about it here](https://docs.amplify.aws/cli/teams/shared/).


# <b>Development Updates</b>

This is here just to keep track of the work we've done.

<b><u>10/6:</u></b> Base flutter app setup and updated the readme with installation instructions. This is without the database setup.

<b><u>10/15 - 10/22:</u></b> Research about app databases and planning out tasks. Tried to setup with MySQL (Apache, XAMPP, Phpmyadmin, MySQL workbench, Postman), PostgreSQL (Postman) - was unable to connect efficiently to the app and/or setup remotely for other team members to work with. 

<b><u>10/22 - 10/23:</u></b> Setup AWS Amplify which offers an easy way to connect to a remote/cloud based database and team environment feature. 

<b><u>10/24 - 10/25:</u></b> Update setup instruction for amplify database connection. Merged amplify branch to main branch.

<b><u>10/26:</u></b> Update setup instructions for windows + proper steps. 

<b><u>10/27:</u></b> Read through more of the documentation, set up an easier way to work in the amplify work environment without sharing root user's logins.  

<b><u>10/29:</u></b> Setup the navigation bar and different screen files for members to work on. Refined the setup instructions for mac users. 
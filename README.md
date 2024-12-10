# Firebase Auth App Example

A small app to demonstrate the usage of firebase authentication.

## Authentication Setup

In order to run it, you have to connect a Firebase project to it and enable authentication in it.
Then you need to create some users, with an email and a password.
They should be able to log in.

## Google Sign In Setup

To integrate Google authentication into your project, you need to do the following things:




 **1. Enable Google authentication in Firebase.**
 
 
 *Firebase-Console > Authentication > SignIn-Methods > add new signIn-Method*
 
 
![Bildschirmfoto 2024-02-29 um 11 34 42](https://github.com/LukasAppAkademie/fb_auth_example/assets/149885841/d76af21e-4032-4bb1-b013-996414d7bdf1)



 **2. The next step is to generate a fingerprint for your app so that it can be identified by Firebase.**
 
 Execute the following command in the terminal.


  ```terminal
  keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore
  ```

  The default password is **android**

  Copy the following line:
  ```terminal
  SHA1 : b5:2c:43:55:19:ec:ed:ec:c9:fb:5f:16:f7:30:91:24:3f:d3:e9:8b
  ```


  
 **3. Now you have to add the fingerprint to Firebase.**

 *Firebase-Console > Project-settings > Scroll down to "My-Apps" > click on "add new fingerprint"*
 
![Bildschirmfoto 2024-02-29 um 11 48 49](https://github.com/LukasAppAkademie/fb_auth_example/assets/149885841/d7a29965-3e11-4a70-85e3-ec3dd540871a)


Perfect, we are done! 😁









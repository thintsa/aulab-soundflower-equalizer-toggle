aulab-soundflower-equalizer-toggle
==================================

This AppleScript toggles an AU Lab.app '.trak' file and soundflower 2ch output sound settings.

#Directions
1) Download and install [AU Lab](https://www.apple.com/itunes/mastered-for-itunes/) and [Soundflower](https://code.google.com/p/soundflower/downloads/list) (restart required). If you experience snapping sound you can also try [Sound Siphon](http://staticz.com/soundsiphon/) demo version instead of Soundflower

2) Open AU Lab and set your EQ, see e.g. http://osxdaily.com/2012/05/18/equalizer-for-all-audio-mac-os-x/, and set AU Lab to open it automatically: AU Lab Preferences -> Document -> Open a specific document

3) Open 'equalizer-toggle' file with AppleScript Editor

4) File --> Export script as "Equalizer Toggle.app" in your Applications folder and attempt to run it (OSX 10.9.5 Mavericks will throw a security alert)

5) Give permission for the app to run in: System Preferences -> Security & Privacy --> Privacy --> Accessibility

#How it works
This application is a toggle. Run the app to turn on the equalizer settings in AU Lab and set your sound ouput settings to Soundflower (2ch). Run it again to reset your sound output settings to "Headphones" and quit AU Lab. I recommend using Alfred or Quicksilver for quick access. Enjoy :)

#Extra Setup
###Creating an icon:

1) Create or download an icon. I used this icon: [iconmonstr.com](http://iconmonstr.com/g/?icon=iconmonstr-sound-wave-2-icon.png)

2) Convert an icon to ICNS format (Skip this step if it is already in ICNS format). I used this website to convert the icon PNG to ICNS: http://iconverticons.com/online/

3) Right-click on your Equalizer Toggle.app and choose 'Get Info'

4) Drag your ICNS file to the icon placeholder in the top left of the Get Info window.

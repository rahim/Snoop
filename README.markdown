### BurpBot 
Irc bot i have been working on over the last few months based on the cinch frame work

### Features 
1. Runs a webserver and can print message into channels using the rest api (good for nagios live alerting)
2. Has a plugin to poll multiple nagios servers 
3. Can be setup to watch redmine projects and output info into channel
4. Can use all google search (images, videos, web, etc)
5. Urban dict support
6. Many others

### Writing Plugins 
Branch and write, in order to have the plugin autoload add to plugins dir and have the class extend  CinchPlugin,
add the help line and give me a merge request. 
You can also have background worker threads if you add them to the threads dir and have the class extend CinchThread.

### Test
I have a few, please use vcr so that you don't have to hit the network. 

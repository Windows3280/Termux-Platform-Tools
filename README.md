# termux-platform-tools
Version: 34.0.0

## easy installation using apt. does not require root access
#### Install:
``` console
curl -s https://raw.githubusercontent.com/Windows3280/Termux-Platform-Tools/master/install.sh
chmod +x install.sh
./install.sh
```
#### Oneliner installation:
``` console
curl -s https://raw.githubusercontent.com/Windows3280/Termux-Platform-Tools/master/install.sh && chmod +x install.sh && ./install.sh
```
#### If you are already installed Termux platform-tools and want to update ADB and fastboot:
``` console
pkg install platform-tools
```

#### How it works?
It uses Google's platform-tools, but they are patched by redniix. It is using coreutils to use everything and Termux:API to connect to your device.


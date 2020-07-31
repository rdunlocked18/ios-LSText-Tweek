# ios-LSText-Tweek
LockScreen Text Tweek Print any text On lockscreen

- No Prefrence Bundle
- Base Hooks , Simple ObjC for Text Output at .x File  

# Compile and run 
Make Sure you Have Theos and most importantly JAILBREAK 😒🤣🤣

1. export THEOS_DEVICE_IP= *YourDeviceIp*

2. if want to make for all devices add ARCHs as 
    - ARCHS = armv7 (this goes for 32 bit)  
    - ARCHS = arm64 (this goes for 64 bit devices)
    - ARCHS = arm64e (this goes for devices later than iphone XR)

3. compile with -- ***make package install***
    - enter device root password default = alpine
    - killall SpringBoard , uiCache.
    - see your LockScreen after viewDidLoad 😊🕸

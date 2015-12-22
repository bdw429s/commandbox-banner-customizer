# CommandBox Banner Customizer

Ever gotten tired of the same lame ASCII art every time you start the CommandBox shell in interactive mode?  Well fear not, this module is for you!

## Installation

Install the module like so:
```bash
CommandBox> install commandbox-banner-customizer
```

Once you've done that, there are three module settings you can override to affect how the CLI starts up.

### Hide the banner

```bash
config set modules.commandbox-banner-customizer.hidebanner=true
```
Now close and reopen the CLI and the ASCII art is gone.

### Custom banner text

```bash
config set modules.commandbox-banner-customizer.bannertext="I like spam!"
```
Now close and reopen the CLI and your custom message will appear to greet you

### Custom banner file

Want to get all kinds of funky and create your own ASCII art of your cat?  Save the exact text you want to output (can be multiple lines) into a file and specify the file path here:
```bash
config set modules.commandbox-banner-customizer.bannerfilepath="C:\\myCustomBanner.txt"
```
For extra credit, try including ANSI escape codes in your text file for a color-coded banner


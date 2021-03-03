# lyx-xournalpp-scripts
A collection of resources to ease the integration of handwritten sketches in xournalpp and the LyX document processor

## The open_xournalpp.sh script
This script should reside in your ~/.local/bin/ folder and is called whenever you create a sketch in LyX

Please edit the script to fit your needs, you have to provide an empty page in xournalpp format by saving it somewhere.

Then point the cp command in the script to the full path of that template file

(The user that executes the vc-command in LyX is not necessarily your user, so using relative paths like ~ may not work!)

## LyX keyboard shortcut
To call the script, add the following keybinding to your Keyboard Shortcut map
```
vc-command DM $$p "bash /home/m0rtis/.local/bin/open_xournalpp.sh $$p $$m"
```
## How it works
1. You trigger the script by pressing the keyboard shortcut of your choice
2. You enter a name for the sketch
3. The script copies the template file into the folder your document is in named by the scheme NAME.xopp
4. The script opens the copied file in xournalpp for you to draw/sketch
5. Once xournalpp is closed, the file is converted into svg
6. A image inset is inserted at the cursor position
7. The sketch is included in your document!

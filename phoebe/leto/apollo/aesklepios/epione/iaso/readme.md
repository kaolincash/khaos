iaso (named for the ancient Greek goddess of restoration, and all lowercase) is an Elden Ring Save File Backup & Restore tool which can be easily customised for a multitude of applications but, by default, keeps backups of your save files in case of errors.

**Contents**:

**i. A Personal Note**

**ii. Tested Scenarios**

**iii. Usage Instructions**

**iv. How It Works** 

**v. How To Customise**

**i. A Personal Note** (A.K.A. Don't be a cheater, cheater.)

Using iaso on your main save to restore lost runes and items is, in my opinion, contrary to the spirit of the game and constitutes cheating.

While I understand iaso can and probably will be used to make cheating more convenient, I feel the benefits outweigh the potential harm, given the undeniably shaky (see: understatement) PC release of Elden Ring.

I don't want my 300+ hours going down the drain due to the bugs that remain in the (otherwise reasonably playable, at this point) game, and I know you don't either.

p.s. you cannot restore saves to a new steam user id and the scope of the iaso project will never extend to that; she's purely a backup tool for a specified directory, geared toward adding a rudimentary quicksave feature to games where save files are particularly precious. I recommend also utilising this for other FromSoftware games by customising it as described below.

====================================================

**ii. Tested Scenarios** (like a few times to prove they worked, YMMV.)

Note: Fully Offline is the only intended usage of iaso. Does this break TOS? Probably. Do you care? Probably not.

I cannot account for all of FromSoftware's current or future shenanigan-detection tools, use at your own risk, don't call me if Miyazaki-san burns your house down with Flame of the Redmanes, you know the drill.
- Fully Offline: Works as intended.
- Logged into FromSoftware servers: Seems to work as expected. Cannot account for bans from prolonged use, idk, ymmv, etc.
- Using Steam Cloud + Logged into FromSoftware servers: Will not work, as Steam will restore your save.

====================================================

**iii. Usage Instructions** (Part 1: What do I do with these files?)

FIRST OF ALL: DISABLE STEAM CLOUD OR THIS WILL NOT WORK

> **So how do I use this?**

You download the batch files provided and run them as necessary.

You may need to fiddle with permissions/run as administrator, depending on your setup, but theoretically you can copy and paste the code into notepad, save it as "backup.bat" and so the same for "restore.bat" if you really wanted to.

> **Wait, I have to run these manually, every time?**

Not necessarily! In my case, I'm using a tool to map F5 and F6 to backup and restore within the eldenring.exe program when it runs.

> **So I can just map the .bat files to F5 and F6 and save/restore my state every time I lose my runes?**

NO! DO NOT USE IASO FOR THAT PURPOSE, SUCH AN ACTION COULD PERMANENTLY RUIN YOUR SAVE FILE.

This is not an undo-redo key that will teleport your character back in time. 

If the restore tool is used while the game is running it could easily damage your save because I can't account for how eldenring.exe uses those files while they're loaded.

Restoring with iaso while in the Main Menu _should_ be fine, as the save files are not loaded, but I cannot account for what eldenring.exe might be doing behind the scenes. 

I haven't tested it extensively so, please let me know of any cases of this happening should you deign to risk it.

Remember: iaso is a tool for backing up and restoring save files THAT ARE NOT IN USE for the EXPLICIT PURPOSE of PREVENTING loss of your entire save by the game crashing and rendering your only copy of the game's save file unusable. Do, however, keep in mind that it is ONLY the restore function that has any potential downside. Spam F5 to your heart's content.

Seriously, though, don't abuse the restore function.

> **Wait- what? Isn't it extremely risky to restore the save files at all, then?**

Yes. Of course it is. IF and ONLY if the game is running and the files are in use. Similar to when the game generates stormy weather and crashes and threatens you for not closing it properly is a risk to the integrity of your save data, so, too, is overwriting live save files in a running game. 

I also recognise that FromSoftware have, themselves, claimed that this specific issue has been addressed (regarding the save file corruptions, not the crashes..). 
Just be patient whenever you want to restore a backup and close the game first.

> **Okay, I see your point, but I'm not sure the risk is justified nonetheless...**

That's entirely reasonable.

> **...try to convince me?**

If you insist, I will go into explicit detail of how iaso does her thing (it's actually very simple, if a little wordy by virtue of it being written by... me). For the benefit of any laypersons who struggle to parse code and want to know what's happening, though, I'll do my best to make it easy enough to follow.

> **Ok, thanks. Also, while I still have you here, I really hate that when you named it "iaso", you spelled it in all lowercase.**

It's actually "her".

====================================================

**iii. Usage Instructions** (Part 2: So... What Am I Even Using, Then?)
The broad strokes of how the backup process works are as follows:

1) iaso creates two backups.

1a) The first backup is your quicksave slot, and is called "EldenRingQuicksave"

1b) The second backup is an archive that stores every backup made with iaso unless you personally remove them

2) There is no number 2)

> **Ok so how is that dangerous?**

It's not, when you're restoring the files manually.

The danger arises when you restore the files, which is what happens next.

> **There _is_ a number 2)!**

There is a _number 2)_ in that there is a second file to worry about, yes.

The second program, restore.bat, indiscriminately overwrites everything within "EldenRing" (your actual real live save folder with every single save slot you have  inside it) with the contents of "EldenRingQuicksave" with no confirmation prompt for accidental executions. This is for the benefit of those, myself included, mapping this to a key like F6. 

You see, I play with an Xbox controller, and my keyboard is physically disabled with a custom profile that makes all but the "switch profile" and "printscreen" keys functionless, to prevent accidental interactions. I even spliced a push button into my mouse's cable so that I can toggle it on the fly without unplugging it.
I won't be pressing this thing by accident. 

You, however, might. 

Don't.

> **That's supposed to convince me?**

Think about it: I had to idiot-proof my own keyboard and mouse because I'm clumsy, not stupid, and I suspect you, also, are not stupid. This tool is idiot proof in that even if you fuck up your save, it by design has a separate archive of manually restorable backups. In fact, there is no way to auto-restore these, you *have* to do it manually if you're restoring anything other than the quicksave slot. iaso, when used as intended, should be completely safe to use. If your computer is struck by lightning halfway through a restoration, it might go weird, but you have an archive, including the exact quicksave you were just attempting to restore, which also exists within the quicksave slot until overwitten. Just don't be stupid, stupid.

> **Alright, I'm convinced. I feel like I should be a little offended by some of that, but I'm reasonably convinced that having two separate backups is probably overkill put in for the sole reason that you, yourself, are an idiot.**

Exactly! I'm glad you agree that I am an idiot.

> **Anything else?**

Read on if you want to learn in detail how this works, otherwise just use the files as directed above.

While the game isn't running.

Please.

====================================================

**iv. How It Works** (A.K.A. The Viewer Retention Drop-Off Point)

A very simple explanation of how it works, for the layperson who wants to customise this easily, here's the excerpt that does the backup itself:

Here we establish what the variable "slot" is, which we later append to the path we're interested in as its unique name.

A sensible way to generate a consistently unique name for each slot is to take the current time, which will never be the same twice.

`set slot="%year%-%month%-%day%@%hour%%minute%Hrs%second%s`

This has the added benefit of allowing us to find the most recent save, or to restore to an older backup from a time we know was good!

Next, we establish our paths. In this case, it's Elden Ring, which doesn't have its own quicksave feature.

`set source=%APPDATA%\EldenRing`

`set backup=%APPDATA%\EldenRingQuicksave`

`set archive="%APPDATA%\EldenRingArchive\%slot%%guide%"`

We have three folders here:

`source = the actual place Elden Ring stores the save files for your game`

`quicksave = the quicksave folder that will contain your most recent quicksave, ready to redeploy later`

`archive = every quicksave that you've made, which could get large if you use this a lot. I haven't implemented an auto purge, so you will have to be cognisant of this.`

All of these are stored within `C:\Users\[Your Username]\AppData\Roaming`.

Using the %APPDATA% shorthand (which, incidentally, also works in the Windows Explorer address bar, to get you there quicker if you want to go digging) we can avoid having to alter this for every single user as the [Your Username] is, of course, variable. Overall, this makes the path easier to type for me if I need to use it again, and easier to read, understand, and edit for the end user (that's you!) <3

Finally, we run the logic of the program!

All this does is copy the source directory we defined earlier into two places, in two slightly different ways:
Remember in the previous step, we defined the "archive" variable to have an appendix? This is where our "slot" variable from earlier comes back into play.

First, we `robocopy` from `source` to `quicksave`, which makes a copy of the "EldenRing" folder, which is of course in the ideal state already, and makes a 1:1 copy of it right next to it, named "EldenRingQuicksave". This cloned directory will be at C:\Users\[VARIABLE STRING]\AppData\Roaming, right alongside the original EldenRing directory.

Note: the /E option tells robocopy we want *everything* inside the source folder. This means we want its subdirectories, and not just the files inside the folder you asked for, as robocopy by default will only copy files and not directories.

`robocopy %source% %quicksave% /E /IS /IT /IM`

The next line is similar, but it uses `robocopy` from the `source` folder to the `archive`, which means it copies "EldenRing" to a second sister directory named "EldenRingArchive", but because we added the `"\%slot%%guide%"` appendix, the `\` tells robocopy to make a new directory inside EldenRingArchive named "%slot%", which uses the variable from our very first step that we've already defined as the current time and also appends the description of how to restore the folders into the name of each directory, for the sake of clarity.

So, that next line:

`robocopy %source% %archive% /E /IS /IT /IM`

Let's break that down a bit into exactly what we're saying to the computer here. What we're doing here is trying to give instructions the computer can understand, one at a time, in as efficient a way as possible (it's simply faster if there's less data to parse). Here we have a total of 5 major things occurring that we've asked the computer to do:
1) Do the thing. Here, the thing we want it to do is to copy, so we use the tool "robocopy" (there are other choices, I like robocopy) that performs this task because it was built to perform this task.
2) Tell robocopy what to copy
3) Tell robocopy where to copy it & what to name it
4) Which in our case is made up of two parts; the root path, and also the %slot%, bundled together as the %archive% variable
5) How robocopy should handle contingencies such as already existing files

<sup>[1]</sup>`robocopy` <sup>[2]</sup>`%source%` <sup>[3][4]</sup>`%archive%` <sup>[5]</sup>`/E /IS /IT /IM`

Which is the same as saying: 

<sup>[1]</sup>`robocopy`   +   <sup>[2]</sup>`%APPDATA%\EldenRing`   +   <sup>[3]</sup>`"%APPDATA%\EldenRingArchive\EldenRing -`   +   <sup>[4]</sup>`%slot%`   +   <sup>[5]</sup>`/E /IS /IT /IM `

Which, itself, is the same as telling your computer to

<sup>[1]</sup>`make a copy of `   +   <sup>[2]</sup>`the folder called C:\Users\[Your Username]\AppData\Roaming\EldenRing and paste it at`   +   <sup>[3]</sup>`C:\Users\YourUsername\AppData\Roaming\EldenRingArchive\`   +   <sup>[4]</sup>`whatever the current date & time is in YYYY/MM/DD] and the instructional suffix`   +   <sup>[5]</sup>`and include every subdirectory when you do it, overwriting them if they already exist, irrespective of their attributes`

The result of the second line of code is that we are left with an archive directory of timestamped directories which, themselves, are clones of "EldenRing", and can be restored manually by following the instructions provided in the name of the directory itself. Simple!

A lot to read, but simple in principle.

And now we can begin to talk about how the restoration works. This is also simple, and requires much less explanation:

`robocopy %quicksave% %source%`

It does the same as 

`robocopy %source% %quicksave%`

from earlier. But in reverse. Simple.

====================================================

**v. How to Customise** (or How I Learned To Stop Worrying And Modify The Code)

Hopefully, you read how it all works above, so I shouldn't actually need to explain this if you've been able to infer it already.

Of course, I would personally have skipped to this section first upon seeing the customisation section in the contents and thinking "ooh!" because I'm a terrible groblin, and in case that's exactly what you've just done too (hi, I see you), then here's explicit instructions:

There are three variables you need to be concerned with:

`set source="Your source path, i.e. your Dark Souls or BloodBorne save locations (which I don't know offhand so you'll have to Google it, I'm not your mom)."`

`set quicksave="Your backup location, which can be anywhere. This is where your quicksave slot will exist, and will be an exact copy of the path you specified in %source% in the line above this one."`

`set archive="your archive location, which can also be anywhere. This is the reference library of all the quicksaves you've ever made. Assuming all variables are correct, this one is easily your most important one. Keep it secret, keep it safe."`

IMPORTANT TIP: If your path has spaces in it, you must enclose the entire path with quotes. For example, in the following example, only one of these will work:

`set source="%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED"`

will work (fine, I did look it up myself, get off my back)
however; 

`set source=%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED`

will not work fine, because the space following "DARK" in "DARK SOULS" is parsed as the end of the path.

So (y'know what, fuck it, have this one on me, too), an example of this altered for Dark Souls would be the following, for the entire batch file:

```
echo off
set year=%date:~6,4%
set month=%date:~3,2%
set day=%date:~0,2%
set hour=%time:~0,2%
if %hour% lss 10 (set hour=0%time:~1,1%)
set minute=%time:~3,2%
set second=%time:~6,5%
set slot=%year%-%month%-%day%@%hour%%minute%Hrs%second%s
set guide="TO MANUALLY RESTORE simply rename me and overwrite the existing save folder."

set source="%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED"
set quicksave="%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED QUICKSAVE"
set archive="%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED ARCHIVE\%slot%%guide%"

robocopy %source% %quicksave% /E /IS /IT /IM
robocopy %source% %archive% /E /IS /IT /IM
```

and the restore.bat, which you should save as a separate file:

```
echo off
robocopy "%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED QUICKSAVE" "%USERPROFILE%\Documents\FromSoftware\DARK SOULS REMASTERED" /E /IS /IT /IM
```

Now don't say I never did anything for you, kid.
maia

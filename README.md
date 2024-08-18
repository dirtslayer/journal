# Darrell's Journal Module

- Does not use advanced features of nushell and is hackable. 
- Is a workflow enabler, not enforcer (you can mingle random items within the Journal folder structure)
- the skeleton files are hackable and have substance

- should i attempt lua version as well?


## See Also

Many great journaling applications exist, such as Obsidian, Logseq, Org-Mode, One-Note, Hackmd, Eraser.io. No editor does all things best. For diagraming one might prefer a diagram.net, for brainstorming, krita, and for lists a simple markdown file. Krita animation files serve as multi-page raster content, hence this module includes kra files in skel and a option to export kra pages to png.

Journaling can be a todo list, todone list, and scratch-pad. It should not replace a calendar or project management.

The scripts here make the creation of a date based folder structure and automatic file creation based on date. With the names and locations of journal files being taken care following the folder stucture of one folder per month.

Your journal needs a root, I would use ~/Journal

Each year will be in a separate folder next.

~/Journal/2024

Each month next.

~/Journal/2024/August/

The files can be of any type, but typically will be named using the date of creation combined with the template name and file type. journal files do not have a extension, but rather a prefix of a date str yyyy-mm-dd.

Markdown files created will use the template specified in skel.

Other types of files will be copies of files in skel renamed to with a prefix of current date.

current journal types:

daily.nut.md - daily journal markdown
A4_Graph_10mm.kra - krita multipage A4 graph 10mm.  

## Krita Notes

See krita cheat, and custom commands, like add keyframe === add page. There are no vector animation layers still, but raster animation is essentially like png with pages, which is perfect for notes. The difference being is that we can have layers that are not part of the animation and layers that are in part of the animation. (Aug 2024) Lets hope krita adds animation to vector layers someday!

All this animation talk, if you are worried just think page equals keyframe and use the left and right arrows to turn pages.

## Okular Notes

## Files

journalrc.nuon - the settings file, usually in ~/.config
journal/mod.nu - the journal module
journal/nut-values.nu - the default nut input values 
journal/nut.nu - the template parser
journal/skel/daily.nut.md - the default md template
journal/skel/*.kra - krita multi-page animation templates 

## How to use

- Download module
- Put module in nushell lib path
- Add use journal to init
- Check values in rc file

## Menu

### Today black/white
### Yesterday red

- interesting cal command
cal -t --month-names --full-year ( date now | format date "%Y" | into int )

- date year
( date now | format date "%Y" | into int )

- duration since jan 1
(date now) - 2024-01-01

-get days of prev and -1 to get yesterday, check for jan 1
2024-01-01 + 226day



### Tomorrow green

	Select
				View
	      Edit
          Filename
          Link
          kra2png
          md2pdf
	Add
        kra a4 10 mm grid 10 pages
        daily journal md
        project md

### Last 10 modified files

## recent

## git save all

## quit

Enjoy journal

# settings file constant, can be moved and adjust this const
# the default location is the root of the module

const rcfile = ~/git/journal/journalrc.nuon

# to use main we can  

# use ~/git/journal
# journal

# or we can
#
# source ~/git/journal/mod.nu; main
#
# journal - uilities to prepend date and create month folders for journals 
# along with templates for markdown and raster journal entries
# links to edit, view, export as, create link, and filename of journal files
export def main [] {
  "Journal Main"
  [ 
    { 
      c: $"(ansi white)Today is (today)(ansi reset)", f: {today}
    },
    { 
      c: $"(ansi green)Tomorrow will be (tomorrow)(ansi reset)", f: {tomorrow}
    },
    { 
      c: $"(ansi red)Yesterday was (yesterday)(ansi reset)", f: {yesterday}
    },
    {
      c: "Settings", f: { settings }
    }
  ] 
  | input list -d c
  | do $in.f
}


export def nut [] {
let t = ($in | collect)
let journalrc = (open $rcfile)
let template_config_file = ( $journalrc | get 'template config file' )
 $t | parse --regex '(?P<sol>(?s).*?)<!---nut(?P<script>(?s).*?)-->'
  | each { $"($in.sol)(nu --config $template_config_file -c $in.script)" } | str join
 }

def "today" [] {
  date now | format date "%F"
}

def "yesterday" [] {
  (date now) - 1day | format date "%F"
}

def "tomorrow" [] {
  (date now) + 1day | format date "%F"
}

def "into month" [] {
  format date "%B"
}

export def months [] {
  1..12 |  each {$"2024-($in)-1"} | into datetime | into month
}

def "into year" [] {
  format date "%Y"
}


def "settings" [] {
  let journalrc = (open $rcfile)
  [ 
    (ansi green) (char newline)
    "================" (char newline)
    "Journal Settings"
    (char newline)
    "================"
    (ansi white)
    (char newline)
    ($journalrc | table )
    (char newline)
  ] | str join
}

def "list recent" [] {
  let journalrc = (open $rcfile)
     "LIST RECENT"
}

def "list today" [] {
  let journalrc = (open $rcfile)
    cd ( $journalrc | get 'document root folder' )
    ls **/* | print
}

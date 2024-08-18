# Example nut.md file

## nut.md stands for nushell template markdown

inline:
there will be a result here: <!---nut print $"today: (date now)" --> test inline html comment on github

single line:
<!---nut print $email -->

multiline:
<!---nut ["multiline ","nushell","command"] 
| each { print $"##($in)" };"" -->

again basic:
<!---nut "hello nut" -->

date str:
<!---nut date now | date to-record | $"($in.year)-($in.month)-($in.day)" -->

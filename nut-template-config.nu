let t = 4
let email = (
    ^git config --list | lines | find -r 'email' | first | str replace user.email= ''
)

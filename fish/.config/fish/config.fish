if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /Applications/Postgres.app/Contents/Versions/14/bin

set -x SSH_AUTH_SOCK /Users/renek/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
source /opt/homebrew/opt/asdf/libexec/asdf.fish

starship init fish | source

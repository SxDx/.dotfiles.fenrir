# Commands to run in interactive sessions can go here
if status is-interactive
end

# For Secretive
set -x SSH_AUTH_SOCK /Users/renek/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

# Remove the default fish greeting
set fish_greeting
fish_add_path /Applications/Postgres.app/Contents/Versions/14/bin

# Prompt
source /opt/homebrew/opt/asdf/libexec/asdf.fish
starship init fish | source

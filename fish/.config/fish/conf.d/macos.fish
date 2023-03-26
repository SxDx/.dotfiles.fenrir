
# Be sure to allow iTerm to modify apps
# System Settings > Security & Privacy > App Management
function set_icons
    echo "Generating icons..."

    begin
        sudo fish -c 'iconsur set /Applications/Notion.app'
        sudo fish -c 'iconsur set /Applications/Spotify.app'
        sudo fish -c 'iconsur set /Applications/Arc.app -i ~/Pictures/icons/arc.png -s 1.3'
        sudo fish -c 'iconsur set /Applications/iTerm.app -i ~/Pictures/icons/terminal.icns -s 1.3'
        killall Dock
    end &>/dev/null

    echo Done
end

function restore_dock
    echo "Restoring dock..."

    set apps Arc Fantastical Mimestream Slack Notion Spotify 'Visual Studio Code' iTerm
    defaults write com.apple.dock persistent-apps -array
    for app in $apps
        defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>'/Applications/$app.app'</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
    end
    killall Dock

    echo Done
end

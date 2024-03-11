unless 'which codium'.empty?
    codium_extensions = 'cat "$HOME"/dotfiles/codium/extensions'.lines.sort
    installed_extensions = 'codium --list-extensions'.lines.sort
    uninstalled_extensions = codium_extensions - installed_extensions

    print 'Checking for uninstalled VSCodium extensions...'

    if uninstalled_extensions.empty?
        print "all good!\r\n"
    else
        print "found #{uninstalled_extensions.count}.\r\n"

        uninstalled_extensions.each do |extension|
        puts "Installing #{extension}..."
        "codium --install-extension #{extension}"
        end

        puts 'Done!'
    end
end
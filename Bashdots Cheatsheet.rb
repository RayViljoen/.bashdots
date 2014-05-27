cheatsheet do
  title 'Bashdots'               # Will be displayed by Dash in the docset list
  docset_file_name 'Bashdots'    # Used for the filename of the docset
  keyword 'bashdots'             # Used as the initial search keyword (listed in Preferences > Docsets)

  introduction 'Bashdots aliases and functions'  # Optional, can contain Markdown or HTML

  # Main Bashdots executable
  category do
    id 'Bashdots'
    entry do
      command 'bashdots'
      command 'bd'
      name 'Bashdots executable'
    end
    entry do
      command 'bd --help'
      command 'bd -h'
      name 'Display Bashdots help'
    end
    entry do
      command 'bd --goto'
      command 'bd -g'
      name 'Go to Bashdots directory'
    end
    entry do
      command 'bd --source'
      command 'bd -s'
      name 'Reload all bash source files'
    end
    entry do
      command 'bd --update'
      command 'bd -u'
      name 'Update Bashdots from source'
    end
  end

  # Git
  category do
    id 'Git'
    entry do
      command 'g'
      name 'Alias `git status`.'
    end
    entry do
      command 'gl'
      name 'Perform a formatted `git log`.'
    end
    entry do
      command 'gi'
      name 'Alias `git init`.'
    end
    entry do
      command 'ga'
      name 'Stage all files or takes argument of path to stage.'
    end
    entry do
      command 'gc'
      name 'Alias `git commit -m`. Takes argument of commit message.'
    end
    entry do
      command 'gm'
      name 'Alias `git merge`.'
    end
    entry do
      command 'gb'
      name 'Alias `git branch`.'
    end
    entry do
      command 'gco'
      name 'Alias `git checkout`.'
    end
    entry do
      command 'gp'
      name 'Alias `git push origin master`. Takes argument to replace `master`.'
    end
    entry do
      command 'gpl'
      name 'Alias `git pull --rebase`.'
    end
    entry do
      command 'gr'
      name 'Alias `git reset HEAD`.'
    end
    entry do
      command 'gamend'
      name 'Alias `git commit --amend -m`.'
    end
  end

  # Misc Helpers
  category do
    id 'Misc'
    entry do
      command 'e'
      name 'Default editor alias. (Sublime Text)'
    end
    entry do
      command 'saferm'
      command 'del'
      name 'Delete file, but only move to Trash. Takes filename as argument. WARN - NEEDS FIXING'
    end
    entry do
      command 'copytoclipboard'
      command 'cb'
      name 'Copyr file contents to clibboard. Takes filename as first argument.'
    end
    entry do
      command 'npms'
      name 'Alias for `npm run-script`.'
    end
    entry do
      command 'sshconf'
      name 'Open ssh config in editor.'
    end
    entry do
      command 'src'
      name 'Reload all bash source files.'
    end
    entry do
      command 'update'
      name 'Update Mac OS, NPM global and homebrew packages.'
    end
    entry do
      command 'clean'
      name 'Empty Trash on all mounted volumes and remove system logs.'
    end
    entry do
      command 'dataurl'
      name 'Get a dataurl from an image. Takes image path as first argument.'
    end
    entry do
      command 'todate'
      name 'Format a unix timestamp.'
    end
  end

  # Listings
  category do
    id 'Directory Listings'
    entry do
      command 'l'
      name 'List files in directory. Pretty display.'
    end
    entry do
      command 'la'
      name 'List files in directory including hidden. Pretty display.'
    end
    entry do
      command 'ld'
      name 'List only directories. Pretty display.'
    end
    entry do
      command 'size'
      name 'Show file size. Takes filename as argument.'
    end
    entry do
      command 'show'
      name 'Make all hidden files visible.'
    end
    entry do
      command 'hide'
      name 'Make all hidden files invisible.'
    end
    entry do
      command 'dev'
      name 'Change cwd to Dropbox development'
    end
    entry do
      command '..'
      name 'CWD up'
    end
    entry do
      command 'o'
      name 'Alias open'
    end
    entry do
      command 'oo'
      name 'Open cwd in Finder'
    end
    entry do
      command 'b'
      name 'Go to previous cwd'
    end
    entry do
      command 'tree'
      command 't'
      name 'Tree cwd'
    end
    entry do
      command 'makeopen'
      command 'mo'
      name 'Create new directory and go to. Takes argument of directory name.'
    end
    entry do
      command 'lib'
      name 'Open hidden mac lib directory in Finder'
    end
    entry do
      command 'mkfake'
      name 'Creates a file of the specified size in MB. Takes first argument as MB.'
    end
    entry do
      command 'appletouchicons'
      name 'Generate Apple Touch Icons from image. Takes first argument as image path.'
    end
  end

  # Apache helpers
  category do
    id 'Apache'
    entry do
      command 'apache'
      name 'Alias for `sudo apachectl`'
    end
    entry do
      command 'hosts'
      name 'Open hosts file in editor.'
    end
    entry do
      command 'vhosts'
      name 'Open vhosts file in editor.'
    end
  end

  # Processes
  category do
    id 'Processes'
    entry do
      command 'pfind'
      name 'Find a process. Takes argument as process grep match.'
    end
    entry do
      command 'pmem'
      name 'Shows processes by memory usage.'
    end
    entry do
      command 'pcpu'
      name 'Shows processes by cpu usage.'
    end
    entry do
      command 'pkill'
      name 'Kill process with `-9` flag. Take process id as argument.'
    end
  end

  # Network
  category do
    id 'Network'
    entry do
      command 'ip'
      name 'Get IP address.'
    end
    entry do
      command 'whois'
      name 'Enhanced WHOIS.'
    end
    entry do
      command 'httpdump'
      name 'View all HTTP traffic.'
    end
    entry do
      command 'server'
      name 'Start localhost server.'
    end
  end

end

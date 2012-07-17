require "rake"

desc "Link the config files"
task :install do
  
  files = Hash[
    ".bash_profile", "Bash/.bash_profile",
    "Library/Application Support/Sublime Text 2/Packages/User/CSS.sublime-settings", "Sublime Text 2/CSS.sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/Default (OSX).sublime-keymap", "Sublime Text 2/Default (OSX).sublime-keymap",
    "Library/Application Support/Sublime Text 2/Packages/User/HTML (Rails).sublime-settings", "Sublime Text 2/HTML (Rails).sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/HTML.sublime-settings", "Sublime Text 2/HTML.sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/JavaScript.sublime-settings", "Sublime Text 2/JavaScript.sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/Markdown.sublime-settings", "Sublime Text 2/Markdown.sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/PHP.sublime-settings", "Sublime Text 2/PHP.sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/Ruby.sublime-settings", "Sublime Text 2/Ruby.sublime-settings",
    "Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings", "Sublime Text 2/Preferences.sublime-settings"
  ]
  
  files.each do |link, file|
    
    link = ENV["HOME"]+"/"+link
    file = Dir.pwd+"/"+file
    
    link_dir = link.gsub(/[^\/]+\/?$/, "")
    if (File.exist?(link_dir))
      
      if File.exist?(link)
        
        if File.symlink?(link)
          File.delete(link)
        else
          backup_file(link)
        end
      end
      
      link_file(link, file)
    end
  end
end

def link_file(link, file)
  puts "Linking #{link} with #{file}"
  File.symlink(file, link)
end

def backup_file(file)
  backup = file+".bak"
  puts "Backup #{file} to #{backup}"
  File.rename(file, backup)
end

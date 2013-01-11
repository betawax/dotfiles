require "rake"
require "json"

desc "Link the config files"
task :install do
  
  symlinks_json = File.read("Symlinks.json")
  symlinks = JSON.parse(symlinks_json)
  
  symlinks.each do |link, file|
    
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

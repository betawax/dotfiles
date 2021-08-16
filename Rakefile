require "rake"
require "json"

task :install do

  # Get the symlinks to create from the JSON file
  symlinks = JSON.parse(File.read("symlinks.json"))

  symlinks.each do |link, file|

    # Make the paths absolute
    link = ENV["HOME"]+"/"+link
    file = Dir.pwd+"/"+file

    # Check if the directory to create the symlink in exists
    if (File.exist?(link.gsub(/[^\/]+\/?$/, "")))

      # Check if the file to link already exists
      if File.exist?(link)

        # Create a backup if the file is not already a symlink
        File.symlink?(link) ? File.delete(link) : backup_file(link)

      end

      # Create the symlink
      link_file(link, file)

    end

  end

end

def link_file(link, file)
  puts "Linking #{link} with #{file}"
  FileUtils.ln_s(file, link, :force => true)
end

def backup_file(file)
  backup = file+".bak"
  puts "Backup #{file} to #{backup}"
  File.rename(file, backup)
end


home_dir = Dir.home
current_dir = Dir.getwd

desc "Create symlinks"
task :symlinks do
  puts "Installing dotfiles"

  dotfiles = %w(vim vimrc gvimrc inputrc zsh zshenv zshrc editorconfig)

  for dotfile in dotfiles do
    path = "#{home_dir}/.#{dotfile}"
    real = "#{current_dir}/#{dotfile}"


    puts "    Creating symlink for #{real} at #{path}"
    File.symlink(real, path) unless File.exists?(path)
  end
end

desc "Update submodules"
task :submodules do
  puts  "Updating submodules"

  system "git submodule -q sync"
  system "git submodule -q update --init"
end

desc "Install/Update Vim Bundles"
task :bundles do
  puts "Installing vim bundles"

  bundle_dir = "#{current_dir}/vim/bundle"

  Dir.mkdir(bundle_dir) unless Dir.exists?(bundle_dir)

  File.open("#{current_dir}/Bundlefile").each do |line|
    parts = line.split( )
    path = "#{bundle_dir}/#{parts[0]}"

    if Dir.exists?(path)
      puts "    Updating #{parts[0]}"
      system "cd #{path};git fetch -q origin; git reset -q --hard"
    else
      puts "    Installing #{parts[0]}"
      system "git clone -q #{parts[1]} #{path}"
    end

  end
end

desc "Install"
task :install do
  %w(symlinks submodules bundles).each do |name|
    Rake::Task[name].invoke
    puts ""
  end
end

require "fileutils"

home_dir = Dir.home
current_dir = Dir.getwd

desc "Create symlinks"
task :symlinks do
  puts "Installing dotfiles"

  dotfiles = %w(vim vimrc gvimrc zsh zshenv zshrc editorconfig)

  for dotfile in dotfiles do
    path = "#{home_dir}/.#{dotfile}"
    real = "#{current_dir}/#{dotfile}"

    puts "- Creating symlink for #{real} at #{path}"
    File.symlink(real, path) unless File.exists?(path)
  end
end

desc "Install/Update Vim Bundles"
task :bundles do
  puts "Installing vim bundles"

  bundle_dir = "#{current_dir}/vim/bundle"
  installed  = Array.new
  installer  = GitInstaller.new bundle_dir

  Dir.mkdir(bundle_dir) unless Dir.exists?(bundle_dir)

  File.open("#{current_dir}/Bundlefile").each do |line|
    parts = line.split( )

    installed.push parts[0]

    installer.install_or_update parts[0], parts[1]
  end

  installer.cleanup_installed installed
end

desc "Install"
task :install do
  %w(symlinks submodules bundles).each do |name|
    Rake::Task[name].invoke
    puts ""
  end
end

class GitInstaller
  attr_reader :path

  def initialize path
    @path = path
  end

  def install_or_update name, repository
    full_path = "#{@path}/#{name}"

    if Dir.exists?(full_path)
      puts "- Updating #{name}"
      system "cd #{full_path} && git fetch -q origin; git reset -q --hard"
    else
      puts "- Installing #{name}"
      system "git clone -q #{repository} #{full_path}"
    end
  end

  def cleanup_installed installed
    directories = Dir.entries(path) - ['.', '..']

    directories.each do |directory|
      unless installed.include?(directory)
        puts "- Removing #{directory}"
        FileUtils.rm_rf("#{path}/#{directory}")
      end
    end
  end
end

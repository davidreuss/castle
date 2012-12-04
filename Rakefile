require "fileutils"

home_dir = File.expand_path '~'
current_dir = Dir.getwd

desc "Install symlinks"
task :install do
  puts "Installing dotfiles"

  dotfiles = %w(vim vimrc gvimrc zsh zshenv zshrc editorconfig)

  for dotfile in dotfiles do
    path = "#{home_dir}/.#{dotfile}"
    real = "#{current_dir}/#{dotfile}"

    puts "- Creating symlink for #{real} at #{path}"
    File.symlink(real, path) unless File.exists?(path)
  end
end

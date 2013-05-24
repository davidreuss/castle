require "fileutils"

home_dir    = File.expand_path '~'
current_dir = Dir.getwd

desc "Install symlinks and gem and bundles"
task :install do
  Rake::Task['symlinks'].invoke
end

desc "Install symlinks"
task :symlinks do
  puts "Installing dotfiles"

  dotfiles = %w(vim vimrc gvimrc zsh zshenv zshrc editorconfig gemrc)

  for dotfile in dotfiles do
    path = "#{home_dir}/.#{dotfile}"
    real = "#{current_dir}/#{dotfile}"

    puts "- Creating symlink for #{real} at #{path}"
    File.symlink(real, path) unless File.exists?(path)
  end
end

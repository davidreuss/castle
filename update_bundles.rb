git_bundles = [ 
    "git://github.com/godlygeek/tabular.git",
    "git://github.com/tpope/vim-markdown.git",
    "git://github.com/scrooloose/syntastic.git",
    "git://github.com/othree/html5.vim.git",
    "git://github.com/2072/PHP-Indenting-for-VIm.git",
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "vim/bundle")

FileUtils.cd(bundles_dir)

puts "trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
    dir = url.split('/').last.sub(/\.git$/, '')
    puts "unpacking #{url} into #{dir}"
    `git clone #{url} #{dir}`
    FileUtils.rm_rf(File.join(dir, ".git"))
end

require "pathname"
require "fileutils"
require "bundler/gem_tasks"

THIS_GEM_ROOT = Pathname(__FILE__).dirname.expand_path

task :default => [ :update_tachyons, :spec ]

include FileUtils

task :update_tachyons do

  tmp          = THIS_GEM_ROOT / "tmp"
  assets_root  = THIS_GEM_ROOT / "app" / "assets" / "stylesheets"
  partials_dir = assets_root / "scss"

  rm_rf tmp
  mkdir_p tmp
  chdir tmp do
    sh "git clone git@github.com:tachyons-css/tachyons-sass.git"
    mkdir_p assets_root
    mkdir_p partials_dir
    cp "tachyons-sass/tachyons.scss", assets_root
    Dir["tachyons-sass/scss/*"].each do |file|
      cp file, partials_dir
    end
  end
  css_lines = File.read(assets_root / "tachyons.scss").split(/\n/)
  version = nil
  if css_lines.first =~ /^\/\*\! TACHYONS v(.*) \|.*$/
    version = $1
  elsif css_lines.first =~ /^\/\/ \! TACHYONS v(.*) \|.*$/
    version = $1
  else
    raise "Cannot parse version from #{css_lines.first} from #{url}"
  end
  File.open(THIS_GEM_ROOT / "lib" / "tachyonscss-rails" / "version.rb","w") do |file|
    file.puts "module TachyonscssRails"
    file.puts "  VERSION = \"#{version}\""
    file.puts "end"
  end
  puts "Updated Tachyons, version #{version}"
end

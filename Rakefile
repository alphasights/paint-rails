require 'fileutils'
require 'json'
require "bundler/gem_tasks"

namespace :paint do
  desc "Update Paint to module version"
  task :update do |task|
    if module_matches_bower_version
      assets_dir = "./vendor/assets"
      rm_r(assets_dir, force: true)

      mkdir_p("#{assets_dir}/stylesheets/paint")
      mkdir_p("#{assets_dir}/images")

      cp("./vendor/paint/bower.json", "#{assets_dir}/stylesheets")
      Dir.chdir("#{assets_dir}/stylesheets") { sh("bower install") && rm("bower.json") }

      images = Rake::FileList["./vendor/paint/images/**"]
      stylesheets = Rake::FileList["./vendor/paint/**"].exclude(/\/images/, /\.json/, /\.md/)

      cp_r(stylesheets, "#{assets_dir}/stylesheets/paint")
      cp_r(images, "#{assets_dir}/images")
    else
      puts "Update module version (./lib/paint-rails/version.rb) to match bower.json version"
    end
  end

  def module_matches_bower_version
    bower_json = JSON.parse(File.read("./vendor/paint/bower.json"))
    bower_json.fetch("version") == Paint::Rails::VERSION
  end
end

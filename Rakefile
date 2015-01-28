require 'fileutils'
require 'json'
require "bundler/gem_tasks"

namespace :paint do
  desc "Update Paint to module version"
  task :update do |task|
    if module_matches_bower_version
      base_dir = "./vendor/assets"

      rm_r(base_dir, force: true)
      mkdir_p("#{base_dir}/stylesheets")
      mkdir_p("#{base_dir}/images")

      images = Rake::FileList["./vendor/paint/images/**"]
      stylesheets = Rake::FileList["./vendor/paint/**"].exclude(/\/images/, /\.json/, /\.md/)

      cp_r(stylesheets, "#{base_dir}/stylesheets")
      cp_r(images, "#{base_dir}/images")
    else
      puts "Update module version (./lib/paint-rails/version.rb) to match bower.json version"
    end
  end

  def module_matches_bower_version
    bower_json = JSON.parse(File.read("./vendor/paint/bower.json"))
    bower_json.fetch("version") == Paint::Rails::VERSION
  end
end

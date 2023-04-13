namespace :headless_rails do
  desc 'copies migration files & other installation steps'
  task :install => :environment do
    require 'fileutils'

    engine_migration_path = File.expand_path('../db/migrate', __dir__)
    app_migration_path = Rails.root.join('db', 'migrate')

    puts "engine_migration_path => #{engine_migration_path}"

    Dir.glob("#{engine_migration_path}/*.rb").each do |file|
      basename = File.basename(file)
      target = File.join(app_migration_path, basename)

      unless File.exist?(target)
        puts "Copying #{basename} to application migrations"
        FileUtils.cp(file, target)
      else
        puts "Skipping #{basename}, already exists in application migrations"
      end
    end
  end
end

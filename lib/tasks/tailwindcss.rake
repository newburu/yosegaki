Rake::Task['tailwindcss:build'].enhance(['yarn:install']) if Rails.env.production?

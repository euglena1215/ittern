namespace :custom_assets do
  desc "Setup custom assets"
  task :setup do
    materialize_path = Rails.root.to_s + "/public/assets/materialize-css"
    unless File.exist?(materialize_path) then
      Dir.mkdir(materialize_path)
      FileUtils.cp_r(Rails.root.to_s + "/node_modules/materialize-css/dist/fonts", materialize_path)
    end
  end
end

Rake::Task["assets:precompile"].enhance(["custom_assets:setup"]) do
  Rake::Task["custom_assets:setup"].invoke
end

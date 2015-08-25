## Settings
category = "test"
project = "cream"

## Tasks
desc "Start Middleman server"
task :serve do
  puts "## Starting Middleman server"
  system "bundle exec middleman"
end

desc "Build Middleman project"
task :build do
  puts "## Building static site in ./build"
  system "bundle exec middleman build --clean"
end

desc "Deploy to staging FTP"
task :ftp_staging do
  ## Host settings
  directory = "/#{category}/#{project}/#{Time.now.utc.strftime '%Y-%m-%d'}"
  domain = "staging"
  password = "pw"
  user = "user"

  puts "## Deploying build to test FTP server"
  cd "build" do
    system "lftp -u '#{user},#{password}' #{domain} -e 'mirror -R --ignore-time -v . #{directory}; quit'"
  end
  puts "Website build deployed to: http://#{domain}#{directory}"
end

desc "Deploy to production FTP"
task :ftp_production do
  ## Host settings
  directory = "/"
  domain = "production"
  password = "pw"
  user = "user"

  puts "## Deploying build to production FTP server"
  puts "## ---------------------------------------------------------------"
  puts "## ATTENTION!"
  puts "## Do you really want to deploy to production environment?"
  puts "## Type 'yes' to continue!"
  choice = STDIN.gets.chomp
  if choice == "yes"
    cd "build" do
      system "lftp -u '#{user},#{password}' #{domain} -e 'mirror -R --ignore-time -v . #{directory}; quit'"
    end
    puts "Website build deployed to: http://#{domain}"
  else
    puts "## Aborting..."
  end
end

desc "Build Middleman project and deploy to test FTP"
task :staging => [:build, :ftp_staging] do
end

desc "Build Middleman project and deploy to production FTP"
task :production => [:build, :ftp_production] do
end

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Write-Host "Ruby Version:"
ruby -v
Write-Host "Installing Jekyll and Bundler..."
gem install jekyll bundler --no-document
Write-Host "Running bundle install..."
bundle install

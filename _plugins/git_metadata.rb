Jekyll::Hooks.register :pages, :post_init do |page|
  setup_git_metadata(page)
end

Jekyll::Hooks.register :posts, :post_init do |page|
  setup_git_metadata(page)
end

def setup_git_metadata(page)
  # Standardize path for Git - ensure absolutely relative to repo root
  file_path = page.path
  
  # Only attempt if file exists (it should, but Jekyll generated pages might not)
  return unless File.exist?(file_path)

  # Debugging: print path to see what jekyll sees
  # puts "Processing: #{file_path}"
  
  # Get Creation Date (First Commit)
  # Using --follow to track through renames
  creation_raw = `git log --follow --format=%aI --reverse "#{file_path}" 2>&1`.strip
  if creation_raw.start_with?("fatal:")
    # puts "Git error on #{file_path}: #{creation_raw}"
    return
  end

  creation_date = creation_raw.split("\n").first
  page.data['posted_at'] = creation_date if creation_date && !creation_date.empty?
  
  # Get Last Modified Date (Last Commit)
  modification_raw = `git log -1 --format=%aI "#{file_path}" 2>&1`.strip
  modification_date = modification_raw.split("\n").first
  page.data['modified_at'] = modification_date if modification_date && !modification_date.empty?
end

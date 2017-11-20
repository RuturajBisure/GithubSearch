def self.error_for_404(body)
  if body =~ /Branch not protected/i
    Octokit::BranchNotProtected
  else
    Octokit::NotFound
  end
end
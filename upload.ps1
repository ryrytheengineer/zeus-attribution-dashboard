# Simple PowerShell script to upload to GitHub without git pagers
$env:GIT_PAGER = "cat"
$env:PAGER = "cat"

Write-Host "Starting GitHub upload..."

# Initialize git repo
git init 2>&1 | Out-Host

# Add files
git add index.html 2>&1 | Out-Host
git add README.md 2>&1 | Out-Host  
git add .gitignore 2>&1 | Out-Host

# Commit
git commit -m "Add Zeus Attribution Dashboard" 2>&1 | Out-Host

# Set branch
git branch -M main 2>&1 | Out-Host

# Add remote
git remote add origin https://github.com/ryrytheengineer/zeus-attribution-dashboard.git 2>&1 | Out-Host

# Push
git push -u origin main --force 2>&1 | Out-Host

Write-Host "Upload complete!"
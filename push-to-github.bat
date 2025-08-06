@echo off
echo Pushing to GitHub...
git init
git add index.html README.md .gitignore
git commit -m "Add Zeus Attribution Dashboard"
git branch -M main
git remote add origin https://github.com/ryrytheengineer/zeus-attribution-dashboard.git
git push -u origin main --force
echo Done!
pause
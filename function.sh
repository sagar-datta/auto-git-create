function git-create() {
  repo_name=$1
  test -z $repo_name && echo "Repo name required." 1>&2

  read "DESCRIPTION?Repo Description:"

  mkdir $repo_name
  cd $repo_name

  curl -u 'your_GitHub_username' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\", \"description\": \"${DESCRIPTION}\"}"

  echo "# Automatic creation of the $repo_name repository" >> README.md
  git init
  git add README.md
  git commit -m "Initial Automatic Commit"
  git remote add origin "https://github.com/your_GitHub_username/$repo_name.git"
  git push -u origin master
  code .
}
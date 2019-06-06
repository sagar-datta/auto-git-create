# Automatically create GitHub repo from terminal

- This implementation is geared towards being used as a function in a .zshrc file
- This implements the GitHub API and some basic terminal commands to make automation smooth

# Functionality

- This function does the the following:
  - Create new directory and navigates into it
  - Prompts the user for a description for the GitHub repository
  - Creates GitHub repository with the name given in the command
  - Creates a README
  - Initialises a repository
  - Adds and commits that README
  - Adds the remote origin repository
  - Pushes changes to the remote origin repository in master
  - Opens Visual Studio Code of the project (edit to suit preference)

# Installation

- Add function from create.sh to your .zshrc file
- Edit function to suit your needs

# Usage

- Navigate to the root directory for your desired project folder
  - i.e /user/Documents/Projects
- Execute `git-create <desired-repo-name>`

# Future Additions

- storing of GitHub password for even less human input experience

# New Additions

- Added the ability to input a description to then be used as the GitHub repository description

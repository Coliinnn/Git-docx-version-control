# Git-docx-version-control

This repository serves as a template for setting up version control with .docx file extensions.

1. Create a new repository for the new project
2. Copy the setup folder to the new repository
3. Run the init.sh file to configure the repository (note: run the script from the folder it is located in)
4. Optionally copy the gitignore file, which is set tot ignore temporary macOS and temporary docx files (ie., ~$ile or .DS_STORE).
    1. Open the setup folder and move the 'gitignore template' file to the main level of the new repository
    2. Rename the 'gitignore template' file to '.gitignore'
5. The setup folder can now be deleted from the new repository

And done. Whenever a .docx file is edited in the repository and it is included in a commit, the scripts will convert it to a .md file that can be read by Git.

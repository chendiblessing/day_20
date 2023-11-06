#!/bin/bash
function create_python_project(){
echo "creating Python project......"
mkdir "$project_name"
cd "$project_name"
python3 -m venv python
echo "*****the virtual enviroment has been created*****"
echo "start working on your python project"
}

function create_bash_project(){
echo "creating bash project....."
mkdir "$project_name"
cd "$project_name"
touch "$project_name.sh"
chmod +x "$project_name.sh"
echo "#$project_name" >> README.md
echo "##quick start" >> README.md
echo "To run the script you first need the execution permission to make it executeable." >> README.md
echo "\`chmod +x $project_name.sh\`" >> README.md
echo "" >>README.md
echo "then you can execte the script " >> README.md
echo "\`./$project_name.sh\`" >> README.md
echo "" >> README.md
echo "you can now start working on the script"
echo "the projects main script file '$project_name.sh'."
}
read -p "Enter project name: " project_name
read -p "Enter project type(python/bash): " project_type
case $project_type in
python)
create_python_project
;;
bash)
create_bash_project
;;
*)
echo "invalid project type. enter either (python/bash)"
exit 1
;;
esac
exit 0

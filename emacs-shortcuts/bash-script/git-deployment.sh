#!/bin/bash
# Automatic git tagging

GRAY='\033[1;90m'
FINISHED='\033[1;96m'
BOLD='\033[1;92m'
NOCOLOR='\033[0m' # No Color
ERROR='\033[0;31m'
PS1_COLOR='\033[00;32m'

function TerminateWithMsg(){

    local readonly file_name=$(basename $0)
    
    echo -e "\nTerminating script: $file_name ............... ${FINISHED}Goodbye!${PS1_COLOR}" >&2
    
    echo -e "\n" >&2
    
}

function BranchValidity(){
    
    if [ "$1" != "MASTER" ]; then
	
     	echo -e "\nUnable to create a TAG ${ERROR}[✕]${PS1_COLOR}\n\n${ERROR}[error]${PS1_COLOR} Expected branch: ${BOLD}MASTER ${PS1_COLOR}, Found branch: ${BOLD}$1${PS1_COLOR}" >&2
	
	echo -e "\n${GRAY}[Do] ${BOLD}git checkout master ${PS1_COLOR}and re-run this script" >&2
	
     	TerminateWithMsg

	echo 1;
	exit;
    fi

    echo -e "\nOn a branch : ${BOLD}$1${PS1_COLOR} \n" >&2

    echo -e "${GRAY}[git]${PS1_COLOR}: Branch verification success ${BOLD}[✓]${PS1_COLOR}\n" >&2
    
    echo 0
}






function deploy(){

    #0 : new , 1: update , 2: hot

    local readonly deployment_type=$2

    local readonly last_snapshot=$1;

    local readonly project=$(basename `git rev-parse --show-toplevel | tr a-z A-Z`)

    local readonly most_recent_tag=$(git tag --merged=HEAD --list "$project-*" | sort -r -n -k2 | sort -rn -t $'V' -k2,2 | head -n 1)

    echo -e "${GRAY}[git]${PS1_COLOR} creating a tag on snapshot: ${BOLD}$last_snapshot${PS1_COLOR} ...\n"

    local version_pre=$(echo "$most_recent_tag" |awk -F'-V' '{ print $NF }'|  awk -F'.' '{print $1}' | tr -dc '0-9')

    local version_post=$(echo "$most_recent_tag" | awk -F'-V' '{ print $NF }'|awk -F'.' '{print $2}'  | cut -d '-' -f 1)

    local readonly current_date=$(date +"%Y-%m-%d")

    if (( $deployment_type == 0)) ; then
	((version_pre++));
	version_post=0
    elif (( $deployment_type == 2 )) ; then
	((version_post++));

    fi


    local tag_label="$project-V$version_pre.$version_post-$current_date"

    local commit_message="V$version_pre.$version_post-$current_date release"

    if (( $deployment_type == 1 )) ; then
	git tag -a "$tag_label" "$last_snapshot" -m "$commit_message" 2> /dev/null
	if (( $? != 0 )); then
	    echo -e "${GRAY}[warning]${PS1_COLOR} tag $tag_label already exists. Force updating ...\n"
	    git tag -af "$tag_label" "$last_snapshot" -m "$commit_message" 
	fi
    else
	git tag -af "$tag_label" "$last_snapshot" -m "$commit_message" 

    fi


    git tag -fa latest  "$last_snapshot" -m "$commit_message"

    git push --tags origin master --force

    echo -e "\n${GRAY}[new tag]${PS1_COLOR}: ${BOLD}$tag_label${PS1_COLOR}\n"

    echo  -e "${BOLD}[before]${PS1_COLOR} : $most_recent_tag\n${FINISHED}[after]${PS1_COLOR}  : $tag_label\n"

}

function VerificationDetails(){

    local readonly branch=`echo $branch_snapshot | cut -d '@' -f 1`
    
    commit_hash=`echo $branch_snapshot | cut -d '@' -f 2`
    
    local readonly commit_message=`echo $branch_snapshot | cut -d '@' -f 3`

    echo -e "${GRAY}[verify]${PS1_COLOR}: details verification before we proceed \n"

    echo -e "${BOLD}======================================================${PS1_COLOR}"
    
    echo -e "\n${GRAY}branch${PS1_COLOR}   : ${BOLD}$branch${PS1_COLOR} \n"

    echo -e "${GRAY}snapshot${PS1_COLOR} : ${BOLD}$commit_hash${PS1_COLOR}\n"

    echo -e "${GRAY}message${PS1_COLOR}  : ${BOLD}$commit_message${PS1_COLOR} \n"

    echo -e "${BOLD}=======================================================${PS1_COLOR}\n"

}


function UserIntraction(){

    while true; do
	read -p "should we proceed with tag creation??  Y/N    " yn
	case $yn in
            [Yy]* ) echo 0;
		    break;;
            [Nn]* ) TerminateWithMsg;
		    echo 1;
		    break;;
            * ) echo "Please answer yes or no.";;
	esac
    done
}

function initScript(){

    echo -e "\n"
    local PS3='Please enter your choice: '

    local readonly options=("New Deployment" "Update TAG from last commit" "Hot Fix" "Quit")
    select opt in "${options[@]}"
    do
	case $opt in
            "New Deployment")
		deploy "$commit_hash" 0 
		break
		;;

	    "Update TAG from last commit")
		deploy  "$commit_hash" 1
		break
		;;

	    "Hot Fix")
		deploy "$commit_hash" 2
		break
		;;

	    "Quit")
		break
		;;

	    *) echo "invalid option $REPLY";;
	esac

    done

}


script_location=$(dirname "$0")

script_location="$script_location/git-branch.sh"

branch_snapshot=`sh "$script_location"`

branch_name=`echo $branch_snapshot | cut -d '@' -f 1 | tr a-z A-Z`

is_valid_branch=$(BranchValidity "$branch_name")

if (( $is_valid_branch == 0 )); then
    
    VerificationDetails
    
    should_proceed=$(UserIntraction)
    
    if(( $should_proceed == 0 )); then
	
	initScript
	
    fi
fi

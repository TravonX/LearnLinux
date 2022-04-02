#!/bin/bash

## Colors

RED=$(printf '\e[31m')
WHITE=$(printf '\e[37m')
GREEN=$(printf '\e[32m')
CYANBG=$(printf '\e[46m')
CYAN=$(printf '\e[36m')
BLUEBG=$(printf '\e[44m')
MAGENTABG=$(printf '\e[45m')
ORANGEBG=$(printf '\e[43m')
ORANGE=$(printf '\e[33m')

## Return to regular color 
NC=$(printf '\e[0m')



## Function that print in slow motion
function slow_msg() {
    local t=$1
    local check=$(printf '\e')
    local count=0
    while IFS= read -n1 c; do 
        if [[ $c = '-' ]]; then
            echo -n '-'
        else 
            printf "$c"
        fi
        if [[ $count -eq 0 ]]; then 
            if ! [[ $c =~ ${check} ]]; then 
                sleep ${t}
            else 
                ((count++))
            fi 
        elif [[ $count -eq 5 ]]; then 
            count=0
        else 
            ((count++))
        fi
    done <<<"$2"
}
## Display a  banner in Green
## printf "${GREEN}"
figlet "LINUX COMMANDS"
## printf "${NC}"

## Get user(name)
read -p "Enter your name : " name
sleep 2
printf "\n"
slow_msg '0.06' "Welcome ${GREEN}$name${NC}"
sleep 1
printf '\n\n'

slow_msg '0.06' "Since you have learnt what linux is i think it is time to dive into the linux CLI [ TERMINAL ]"
printf '\n'
sleep 1
printf '\n\n'

slow_msg '0.06' "What is the ${GREEN}Terminal${NC}???"
printf '\n\n'
sleep 0.05
slow_msg '0.06' "Well the terminal is where or let me say where ${GREEN}LINUX${NC} superpowers lie.."
sleep 1
printf '\n\n'
slow_msg '0.06' "The LINUX terminal is a text-based interface that is used to control any linux computer"
printf '\n\n'
sleep 1
slow_msg '0.06' "In short the terminal is just a non graphical way to interact with the linux system to get things done faster"
sleep 2
printf '\n\n'
slow_msg '0.06' "You can get the ${GREEN}Terminal${NC} by using the Arrow "
printf '\n\n'
sleep 1
printf '\n\n'

slow_msg '0.06' "But we  wont do that..."
sleep 2
printf '\n\n'
slow_msg '0.06' "Using the arrow to locate the terminal is for losers"
printf '\n\n'
slow_msg '0.06' "So we wont do that [ We are special ]"
sleep 2
printf '\n\n'
slow_msg '0.06' "To get the terminal faster we use [ CTRL + ALT + T ] "
sleep 2
printf '\n\n'
slow_msg '0.06' "If that dosnt work depending on the linux distro you have then use [ CTRL + ALT + F4 ]"
sleep 3
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'

sleep 2
slow_msg '0.05' "Ahh the terminal.... Home sweet Home...."
sleep 4
printf '\n\n'
slow_msg "0.07" "Well what do you do here??"
sleep 1 
printf '\n\n'
slow_msg '0.09' "Am slow now because i want you to understand"
printf '\n\n'
slow_msg '0.09' "You enter commands in that white blinking spot"
printf '\n\n'
slow_msg '0.09' "who are you ?.. write whoami and hit enter it will display your name"
printf '\n\n'
slow_msg '0.09' "in this case it will display the name you entered when you ran this script which is $name"
printf '\n\n'
slow_msg '0.09' "Your first command today is [ ls ] "
printf '\n\n'
slow_msg '0.09' "write ls in that white blinking spot and hit the enter key on your keyboard"
printf '\n\n'
slow_msg '0.09' "Now you will see some various [ directories ] there.. such as "
printf '\n\n'
slow_msg '0.09' "Downloads"
printf '\n\n'
slow_msg '0.09' "Music"
printf '\n\n'
slow_msg '0.09' "Pictures"
printf '\n\n'
slow_msg '0.09' "Desktop"
printf '\n\n'
slow_msg '0.09' "Documents"
printf '\n\n'
slow_msg '0.09' "Play"
printf '\n\n'
slow_msg '0.09' "Etc.."
printf '\n\n'
slow_msg '0.09' "Those blue things you see there are called directories"
printf '\n\n'
slow_msg '0.09' "the [ ls ] command is used to list what in the content of a file"
printf '\n\n'
slow_msg '0.09' "to see whats inside a file you use the [ cd ] command "
printf '\n\n'
slow_msg '0.09' " the cd command simply means [ c=> change, d=> directory ]"
printf '\n\n'
slow_msg '0.09' " so in simple terms it means that we are going from one directory to another"
printf '\n\n'
slow_msg '0.09' "To know what directory you are use the [ pwd ] command"
printf '\n\n'
slow_msg '0.09' "The pwd command means [ p=> print, w=> working , d=>directory ]"
printf '\n\n'
slow_msg  '0.09' "when you run the pwd command you will have an ouput like /home/$name"
printf '\n\n'
slow_msg '0.09' "this simply means you are in your home directory"
printf '\n\n'
slow_msg '0.09' "now if you do cd Desktop and hit enter"
printf '\n\n'
slow_msg '0.09' "then do pwd anagin and hit enter"
printf '\n\n'
slow_msg '0.09' "[NOTICE : d and D are two different things in linux"
printf '\n\n'
slow_msg '0.09' "[NOTICE : so if you mistakenly wrote cd desktop instead  of cd Desktop "
printf '\n\n'
slow_msg '0.09' "[NOTICE : You will immediatly get a bash: cd: desktop: No such file or directory error"
printf '\n\n'
slow_msg '0.09' "[NOTICE :  this means that linux is case sensitive so NOTE that down .. ] "
printf '\n\n'
slow_msg '0.09' "${GREEN} OK LET'S CONTINUE ${NC}"
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'

slow_msg '0.09' "once you write that pwd command you will have an output like /home/$name/Desktop"
printf '\n\n'
slow_msg '0.09' "To go back to a previous directory you make use of [ cd .. ] command"
printf '\n\n'
slow_msg '0.09' "Now when you run the cd ..  command and then  run th pwd you will go back to ypur home directory which is /home/$name"
printf '\n\n'
slow_msg '0.09' "${ORANGE}WOW YOU'VE LEARNT ALOT${NC}"
printf '\n\n'
slow_msg '0.09' "so now you know how to use [ whoami,ls,pwd,cd ..]"
printf '\n\n'
slow_msg '0.09' "${RED}CONGRATULATION :: ${NC} go get some coffea..${NC}"
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'

slow_msg '0.09' "${GREEN} its time to look at the linux file system${NC}"
printf '\n\n'
slow_msg '0.09' "[NOTICE : LInux uses forward slash (/) instead of backward slas (\) to denote directories in file path.."
printf '\n\n'
slow_msg '0.09' "To break everything down  ( /) is regarded as the root filesystem which no files are places "
printf '\n\n'
slow_msg '0.09' "cd into the root filesystem with [ cd /] and list what inside" 
printf '\n\n'
slow_msg '0.09' "now you will see lots of various files which are"
printf '\n\n'
slow_msg '0.09' "/bin [Binary directory, where many GNU user-level utilities are stored ] "
printf '\n\n'
slow_msg '0.09' "/boot [ Boot directory, where boot files are stored ]"
printf '0.09' "/dev  [ Device directory, where Linux creates device nodes ]"
sleep 3
printf '\n\n'
slow_msg '0.09' "/etc [ System configuration files directory ]"
sleep 3
printf '0.09' " /home [ Home directory, where Linux creates user directories, which are optional ]"
sleep 3
printf '\n\n'
slow_msg '0.09' "/lib [ Library directory, where system and application library files are stored ]"
sleep 4 
printf '\n\n'
slow_msg '0.09' "/libname [Library directory(ies), where alternative format system and application library files are stored,which is optional ] "
sleep 5
printf '\n\n'
slow_msg '0.09' "/media [ Media directory, a common place for mount points used for removable media ]"
sleep 6
printf '\n\n'
slow_msg '0.09' "/mnt [ Mount directory, a common place used for temporarily mounting filesystems ] "
sleep 6
printf '\n\n'
slow_msg '0.09' "/opt [ Optional directory, where third-party software packages are stored ]"
sleep 6
printf '\n\n'
slow_msg '0.09' "/proc [ Process directory, where current kernel, system, and process information is stored ]"
sleep 6
printf '\n\n'
slow_msg '0.09' "/root [ Root user's home directory, which is optional ]"
sleep 5
printf '\n\n'
slow_msg '0.09' "/run [ Run directory, where runtime data is held during system operation ]"
sleep 6
printf '\n\n'
slow_msg '0.09' "/sbin [ System binary directory, where many GNU admin-level utilities are stored ]"
sleep 7
printf '\n\n'
slow_msg '0.09' "/srv [ Service directory, where local services store their files ]"
sleep 6
printf '\n\n'
slow_msg '0.09' "/sys [ System directory, where devices, drivers, and some kernel feature information is stored ]"
sleep 7
printf '\n\n'
slow_msg '0.09' "/tmp [ Temporary directory, where temporary work files can be created and destroyed ]"
sleep 5
printf '\n\n'
slow_msg '0.09' "/usr [ User directory, a secondary directory hierarchy ]"
sleep 5
printf '\n\n'
slow_msg '0.09' "/var [ Variable directory, for files that change frequently, such as log files ]"
printf '\n\n'
sleep 5
slow_msg '0.09' "You can alwasy check whats inside those places with the cd command"
printf '\n\n'
slow_msg '0.09' "Just make sure not to damage anything..."
printf '\n\n'
slow_msg '0.09' "[ QUICK TIP : ] ==>> To quicly get out of the root dir use the cd # command to go back to your home dir"
sleep 4
printf '\n\n'
slow_msg '0.09' "${GREEN} WOW THAT WAS A MOUTH FULL.. SO WE WILL TAKE A BREAK NOW ${NC}"
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'
printf '\n\n'
slow_msg '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_msg '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
printf '\n\n'

sleep 4
slow_msg '0.09' "${RED}WELCOME BACK${NC}"
printf '\n\n'
slow_msg "0.09" "Now let talk about how to create a directory "
sleep 3
printf '\n\n'
slow_msg '0.09' "to create a directory is vert simple we use the command [ mkdir ] to create a directory"
sleep 4
printf '\n\n'
slow_msg '0.09' "[EXAMPLE : ] =>> mkdir test "
printf '\n\n'
slow_msg '0.09' "that command will create a directory called test"
sleep 3
printf '\n\n'
slow_msg '0.09' "Now you can change directory into the new one you created with cd test and now write pwd "
sleep 3
printf '\n\n'
slow_msg '0.09' "If you created the test directory in the home directory when you run the pwd command you will see /home/$name/test path"
sleep 5
printf '\n\n'
slow_msg '0.09' "if you created the test directory in your Desktop directory then you will have a path like /home/$name/Desktop/test"
sleep 6
printf '\n\n'
slow_msg '0.09' "Now that you have a directory you can alwasy create a text file inside that directory"
sleep 6
printf '\n\n'
slow_msg '0.09' "using the [ touch ] command we can create a text file.. [EXAMPLE] touch me.txt"
sleep 6
printf '\n\n'
slow_msg '0.09' "that will create a test file called me.txx"
sleep 4
printf '\n\n'
slow_msg '0.09' "You can editt the me.txt file with an editor of your choice but my best editor is nano"
sleep 6
printf '\n\n'
slow_msg '0.09' "So if you do nano me.txt it will open up an editor where you can write things into the me.txt file"
sleep 6
printf '\n\n'
slow_msg '0.09' "To exit from nano use [ CTRL + O ] hit enter and then [ CTRL + X"
sleep 7
printf '\n\n'
slow_msg '0.09' "To read a text file you can use the [ cat ]  command ... [EXAMPLE ==>> cat me.txt]"
sleep 4
printf '\n\n'
slow_msg '0.09' "I did not explain most these commands very well"
slow_msg '0.09' "But you can alwasy contact the man [MANUEL] for help"
printf '\n\n'
slow_msg '0.09' "All commands has a built in manuel of how to use it"
printf '\n\n'
slow_msg '0.09' "how to use the manuel ?? man ls or man mkdir or man cat or man pwd"
printf '\n\n'
slow_msg '0.09' "then read"
printf '\n\n'
slow_msg '0.09' "Thank you for being here..... ${GREEN}TRAVON_OUT${NC}"
printf '\n\n'
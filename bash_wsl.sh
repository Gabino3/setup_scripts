alias python="python3"

eval $(ssh-agent -s) > /dev/null
ssh-add ~/.ssh/github > /dev/null 2>&1

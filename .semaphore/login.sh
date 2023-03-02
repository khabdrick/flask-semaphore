expect -c 'spawn ssh root@109.74.202.103; expect {
        "Are you sure you want to continue connecting (yes/no)?" {
            send "yes\r"
            exp_continue
        }
        "password:" {
            send "Muhammed-1998\r"
            interact
        }
    }'

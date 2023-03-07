expect -c 'spawn ssh root@109.74.202.103; expect {
                  "Are you sure you want to continue connecting" {
                      send "yes\r"
                      exp_continue
                  }
                  "passwor" {
                      send "Muhammed-1998\r"
                      exp_continue
                      
                  }
                  "~#" {
                    send "cd flask-semaphore && git pull\r"
                    exp_continue
                  }
                  "flask-semaphore#" {
                    send "exit\r"
                    interact
                  }
              }'
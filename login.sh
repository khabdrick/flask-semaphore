expect -c 'spawn ssh root@151.236.216.158; expect {
                  "Are you sure you want to continue connecting" {
                      send "yes\r"
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
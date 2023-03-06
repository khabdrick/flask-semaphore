expect -c 'spawn ssh root@109.74.202.103; expect {
                  "Are you sure you want to continue connecting" {
                      send "yes\r"
     
                  }
                  "password:" {
                      send "Muhammed-1998\r"
                      interact
                  }
              }'
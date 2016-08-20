set :stage, :production

server '146.185.172.164', user: 'deploy', roles: %w{web app}

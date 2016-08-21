set :stage, :production

server '146.185.172.164', port: 2752, user: 'deploy', roles: %w{web app}

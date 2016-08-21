set :stage, :production

server '95.85.28.14', port: 2752, user: 'deploy', roles: %w{web app}

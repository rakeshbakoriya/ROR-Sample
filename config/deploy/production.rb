server '165.22.211.48', user: 'deploy', roles: %w{app db web}
set :deploy_to, '/home/deploy/apps/iruuza'

set :branch, 'master'

set :stage, :production
set :rvm_path, '/usr/local/rvm'
set :rvm_type, :user
set :use_sudo, true

set :rvm_ruby_version, '3.0.0@iruuza'
set :default_shell, "/bin/bash -l"
set :bundle_flags, '--system --quiet'
set :bundle_path, -> { nil }

set :branch, 'master'

set :unicorn_pid, '/home/deploy/app/current/tmp/pids/unicorn.pid'
set :unicorn_rack_env, 'production'

set :ssh_options, {
 forward_agent: false
}

execute 'apt-get update' do
  command 'apt-get update'
  ignore_failure true
  action :nothing
  notifies :touch, 'file[/var/lib/apt/periodic/update-success-stamp]', :immediately
  only_if { apt_installed? }
end
class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDaA9VxdVEv9IAMZMTlfMKW35APRYCtg0DY05PGgB2MoN10xU+oJXVGFC/3S/RyhdM/YiT3LyGut/7z1DZ3EG8kW9vKw4ROhHI7Z9McrU0AlBaJgrhhBYopqKkxMq1nSN9iGJ4xzZKxUd0NZLFjPadwdURKfalAH/q0mK/GUzauaq36h+PXs5xYWhbSbQ645/WHuza90rATx1CQ/lTCAI538iWSufJkI2vAeHpYQx1LGmlRUB7lccK19zWAfH63nKYcs49cBMuNyh+uU8lx5DMmB3Eg1fKOaUQR78aAQdEuwoxnxznp9zoNxc7Mc3FS+qjPA4fQRkZKDDEq7f2xeiBr',
	}  
}

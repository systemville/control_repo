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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDuqcqvUxljVRYPaB7Mr6GhSuJYjmvunTfm6bL6L8ppb2+5LMSwp1hEqzNJ+at52Rm6ImbMupAKh61YzfI6zlhDYyDvdUfV6hOaChNIsx64F0dN/3dBlf3rnJfIpGHmJH/Cf2f75CI4OwgEXIrpjwwu/aa0ythrMs65ViuoSA/uU+C+p5rBVZv2NMFKtS1k/lve2JmSU1nhN4i5krIDTwYPtOzN9fqiRzbKHvQyWLbpG3uPdGs97WGkoL/NbasusnSZKmCvU6qay0dM9TKEzwPnF1bbqgqNsRCI85ZVfSO7W6YDYy6sDXZPLbaun23HTstsRY93cVzByTAhjSoR4+PD',
	}  
}

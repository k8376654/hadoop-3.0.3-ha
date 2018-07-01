runRemoteCmd.sh "setenforce 0" slaver1.mycluster host.conf
runRemoteCmd.sh "sed -i '/SELINUX/s/enforcing/disabled/' /etc/selinux/config" slaver1.mycluster host.conf
runRemoteCmd.sh "systemctl disable firewalld;systemctl stop firewalld" slaver1.mycluster host.conf
runRemoteCmd.sh "echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config" slaver1.mycluster host.conf
runRemoteCmd.sh "systemctl restart sshd" slaver1.mycluster host.conf
runRemoteCmd.sh "setenforce 0" slaver2.mycluster host.conf
runRemoteCmd.sh "sed -i '/SELINUX/s/enforcing/disabled/' /etc/selinux/config" slaver2.mycluster host.conf
runRemoteCmd.sh "systemctl disable firewalld;systemctl stop firewalld" slaver2.mycluster host.conf
runRemoteCmd.sh "echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config" slaver2.mycluster host.conf
runRemoteCmd.sh "systemctl restart sshd" slaver2.mycluster host.conf


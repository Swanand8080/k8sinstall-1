cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
ilter

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
dge.bridge-nf-call-ip6tables = 1
dge.bridge-nf-call-iptables = 1

sudo sysctl --system
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh 
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
etes]
bernetes
=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
=1
k=1
gcheck=1
https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.c
loud.google.com/yum/doc/rpm-package-key.gpg
=kubelet kubeadm kubectl


getenforce 
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/con
fig
sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes

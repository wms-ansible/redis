#!/usr/bin/bash



# 通过源码安装
# cd /tmp
# tar -zxvf ruby-2.4.3.tar.gz
# cd ruby-2.4.3
# ./configure --prefix=/usr/local/ruby
# make && make install
# ln -s /usr/local/ruby/bin/ruby /usr/bin/ruby
# ln -s /usr/local/ruby/bin/gem /usr/bin/gem



# 官方安装 可以用，很慢20minutes
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm install 2.5.1
rvm use 2.5.1 --default





# yum安装
# yum install centos-release-scl-rh
# yum install rh-ruby23  -y
# scl  enable  rh-ruby23 bash




gem install redis





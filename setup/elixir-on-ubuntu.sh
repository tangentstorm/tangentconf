
# set up erlang and elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install -y esl-erlang
sudo apt-get install -y elixir


# setup redis
sudo apt-get install -y build-essential
mkdir ~/src
cd ~/src
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable/
make

# to avoid {“Can’t save in background: fork: Cannot allocate memory”} error
sysctl vm.overcommit_memory=1

# (optional) run the redis tests
sudo apt-get install -y tcl8.5
make test

sudo make install


# grab the source
sudo apt-get install -y git
git clone https://github.com/tangentstorm/exBDD

cd exBDD
mix test
mix deps.get
mix deps.compile

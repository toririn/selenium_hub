### Setup

* for vnc viewer

```
sudo apt-get install remmina
```

* for docker

```
wget -qO- https://get.docker.com/ | sh
```

* deploy

```
git clone 
cd selenium_hub/
bash deploy.sh
```

### Action!

* run sample test

```
bundle exec rspec
```

* results

```
Randomized with seed xxxx

サンプル
  Googleを訪問できれば成功
    もしgoogleを訪問 -> ならば成功

Top 1 slowest examples (7.83 seconds, 100.0% of total time):
  サンプル Googleを訪問できれば成功 もしgoogleを訪問 -> ならば成功
    7.83 seconds ./spec/features/test.feature:5

Finished in 7.84 seconds (files took 0.57555 seconds to load)
1 example, 0 failures

Randomized with seed xxxx
```


### remarks


```
Errno::ECONNREFUSED:
  Failed to open TCP connection to localhost:80 (Connection refused - connect(2) for "localhost" port 80)
```

* Set env SELENIUM_HUB_PORT ?

```
bash set_env.sh
bundle exec rspec
```

or

```
docker port selenium-hub 4444
#ex=> 0.0.0.0:32700
export SELENIUM_HUB_PORT=32700
bundle exec rspec
```







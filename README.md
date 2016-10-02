### Setup

* for docker

```
wget -qO- https://get.docker.com/ | sh
```

* deploy

```
git clone https://github.com/toririn/selenium_hub.git
cd selenium_hub/
bash deploy.sh
#=> pull docker image and run container
```

### Action!

* run sample test

```
bash set_env.sh
#=> set ENV value
bundle exec rspec
```

* results

```
サンプル
  googleで検索ができること
      もしgoogleを訪問 -> ならばgoogleのページが表示されている -> もし「長谷川豊」で検索する -> ならば検索結果のページが表示されている

      Top 1 slowest examples (12.96 seconds, 100.0% of total time):
        サンプル googleで検索ができること もしgoogleを訪問 -> ならばgoogleのページが表示されている -> もし「長谷川豊」で検索する -> ならば検索結果のページが表示されている
            12.96 seconds ./spec/features/tests/test.feature:5

            Finished in 12.96 seconds (files took 0.5102 seconds to load)
            1 example, 0 failures
```


### remarks


```
Errno::ECONNREFUSED:
  Failed to open TCP connection to localhost:80 (Connection refused - connect(2) for "localhost" port 80)
```

* Set env SELENIUM_HUB_PORT ?

```
bash set_env.sh
```

or

```
docker port selenium-hub 4444
#ex=> 0.0.0.0:32700
export SELENIUM_HUB_PORT=32700
bundle exec rspec
```

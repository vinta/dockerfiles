SaltStack development
=====================

``` bash
$ docker run -it --name salt \
-v /Users/vinta/Projects/salt:/salt \
-v /Users/vinta/Projects/salt-configs:/etc/salt \
vinta/saltstack-dev bash

(container) $ pip install -e /salt
```

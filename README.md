Redis HA
===

Example redis configuration with HA.

```
sudo chown 100:101 master.cfg sentinel.cfg slave.cfg
docker-compose up
docker exec -it redisha_master_1 redis-cli DEBUG sleep 15
docker exec -it redisha_slave_1 redis-cli DEBUG sleep 15
```

Notes
===

Open a few panes in tmux and run.
```
watch 'docker exec -it redisha_master_1 redis-cli -p 6379 info replication'
watch 'docker exec -it redisha_slave_1 redis-cli -p 6379 info replication'
watch 'docker exec -it redisha_master_1 redis-cli MGET time'
watch 'docker exec -it redisha_slave_1 redis-cli MGET time'
```

# tdengine-k8s 
taos,tdengine,docker,k8s

# TDengine cluster for kubernetes 
使用Helm安装TDengine集群 
使用git拉取代码,切换到helm目录,使用 `helm install` 安装即可

# TDengine cluster for docker 
使用Docker-compose运行TDengine集群 
直接将docker-compose.yaml文件下载到本地,然后使用 `docker-compose up -d` 命令运行即可 

### 通过环境变量配置taos.cfg参数 
docker-compse: environment节点添加 `TAOS_[variable]`, 例如: TAOS_firstEp 
kubernetes: env节点添加 `TAOS_[variable]`, 例如: TAOS_fqdn 

# What is TDengine？

TDengine is an open-sourced big data platform under [GNU AGPL v3.0](http://www.gnu.org/licenses/agpl-3.0.html), designed and optimized for the Internet of Things (IoT), Connected Cars, Industrial IoT, and IT Infrastructure and Application Monitoring. Besides the 10x faster time-series database, it provides caching, stream computing, message queuing and other functionalities to reduce the complexity and cost of development and operation.

- **10x Faster on Insert/Query Speeds**: Through the innovative design on storage, on a single-core machine, over 20K requests can be processed, millions of data points can be ingested, and over 10 million data points can be retrieved in a second. It is 10 times faster than other databases.

- **1/5 Hardware/Cloud Service Costs**: Compared with typical big data solutions, less than 1/5 of computing resources are required. Via column-based storage and tuned compression algorithms for different data types, less than 1/10 of storage space is needed.

- **Full Stack for Time-Series Data**: By integrating a database with message queuing, caching, and stream computing features together, it is no longer necessary to integrate Kafka/Redis/HBase/Spark or other software. It makes the system architecture much simpler and more robust.

- **Powerful Data Analysis**: Whether it is 10 years or one minute ago, data can be queried just by specifying the time range. Data can be aggregated over time, multiple time streams or both. Ad Hoc queries or analyses can be executed via TDengine shell, Python, R or Matlab.

- **Seamless Integration with Other Tools**: Telegraf, Grafana, Matlab, R, and other tools can be integrated with TDengine without a line of code. MQTT, OPC, Hadoop, Spark, and many others will be integrated soon.

- **Zero Management, No Learning Curve**: It takes only seconds to download, install, and run it successfully; there are no other dependencies. Automatic partitioning on tables or DBs. Standard SQL is used, with C/C++, Python, JDBC, Go and RESTful connectors.

# Documentation
For user manual, system design and architecture, engineering blogs, refer to [TDengine Documentation](https://www.taosdata.com/en/documentation/)(中文版请点击[这里](https://www.taosdata.com/cn/documentation20/))
 for details. The documentation from our website can also be downloaded locally from *documentation/tdenginedocs-en* or *documentation/tdenginedocs-cn*.

# sysinfo_influxdb

Docker image with an example of sysinfo_influxdb 

Usage
-----

To create the image `nixelsolutions/sysinfo_influxdb` execute the following command on the sysinfo_influxdb folder:

    docker build -t nixelsolutions/sysinfo_influxdb .

To run the image:

    docker run -d -e INFLUXDB_HOST=XXXXX -e INFLUXDB_NAME=XXXXX nixelsolutions/sysinfo_influxdb


Configure the connection to InfluxDB
------------------------------------

`nixelsolutions/sysinfo_influxdb` needs to know the information of your InfluxDB instance used to send metrics to. Please provide the following environment variables when running your sysinfo_influxdb container:

```
INFLUXDB_HOST=**ChangeMe**          Host of your InfluxDB (without protocol)
INFLUXDB_PORT=8086                  Port number of your InfluxDB
INFLUXDB_NAME=**ChangeMe**          Database name of your InfluxDB
INFLUXDB_USER=root                  Username of your InfluxDB
INFLUXDB_PASS=root                  Password of your InfluxDB
```

Here is an example:

    docker run -d -e INFLUXDB_HOST=influxdb.test.io -e INFLUXDB_PORT=8086 -e INFLUXDB_NAME=grafana -e INFLUXDB_USER=root -e INFLUXDB_PASS=root nixelsolutions/sysinfo_influxdb

**by http://nixelsolutions.com**

maxConcurrency=10000

for ((i=500; i<$maxConcurrency; i+=500));
do
	#curl http://helloworld-go.default.104.211.41.236.xip.io &> /dev/null &
	ab -k -c $i -n 10000 -s 5000 http://helloworld-go.default.104.211.41.236.xip.io/ | tee -a ./tmp
done

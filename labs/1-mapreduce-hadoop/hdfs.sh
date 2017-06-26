#Through puTTY we run the following command to move the file from host OS into Virtual Image cloudera
put C:\Users\cetan\Desktop\thebrightonboysintransatlanticfight.txt

#Creates a folder inside /user/cloduera
hadoop fs -mkdir lab1

#Copies the .txt file from our cloudera VI into the HDFS path: /user/cloudera/lab1
hadoop fs -put thebrightonboysintransatlanticfight.txt  /user/cloudera/lab1

#We can check if the file is there by running the following command:
hadoop fs -ls /user/cloudera/lab1


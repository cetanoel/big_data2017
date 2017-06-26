# Task 1

## Procedure

1. Downloaded textbook named: from Gutenberg Project as a .txt file
2. Used `psftp` from PuTTy to connect to my cloudera virtual image and transfer the file into hdfs.
3. Connect to cloudera using command: `open cloudera@192.168.0.106` -> password: cloudera
4. Run: `put C:\Users\cetan\Desktop\thebrightonboysintransatlanticfight.txt` to copy the file into the cloduera image
5. Then we run the command: `hadoop fs -mkdir lab1` to create a folder inside /user/cloudera
6. Then we run: `hadoop fs -put thebrightonboysintransatlanticfight.txt  /user/cloudera/lab1` to transfer the textbook inside the folder within the distributed file system.
7. 
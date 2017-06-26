# Running a full `terasort` benchmark

1. Generating the input data via the `teragen` program
2. Running the actual `terasort` benchmark on the input data
3. Validating the sorted output data via the `teravalidate` program


## 1. Create a 5 GB file using `teragen` - setting the number of mappers to six - block size 16MB
`time hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Ddfs.blocksize=16M -Dmapred.map.tasks=6 50000000 /user/cetanoel/terasort-input`

### Elapsed time
```

real	2m51.599s
user	0m5.374s
sys	0m0.307s

```

## 2. Running the `terasort` command on the above file 
`time hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/cetanoel/terasort-input /user/cetanoel/terasort-output`


### Elapsed time

```

real	54m3.657s
user	0m13.434s
sys	0m2.369s


```

## 3. Validating the sorted output data of `terasort`
`time hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teravalidate /user/cetanoel/terasort-output /user/cetanoel/terasort-validate`

### Elapse time

```

real	2m18.032s
user	0m5.175s
sys	0m0.374s

```
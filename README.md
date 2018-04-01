# Pascal-FC-Concurrency-Examples
Pascal-FC is a teaching language which provides many of the constructs for concurrency which are used in other languages such as Ada and Occam. These examples show how these constructs are used to construct concurrent programs.

### ConcurrentTotalOrdering.pas
When the three instructions are executed sequentially, it results in X = 4 and Y = 2. As each instruction is wrapped within a process, they can be (and are) executed concurrently inside the cobegin ... coend construct. At execution, they are interleaved in the sequential order 1/6th of the time as there are 6 possible execution orders, one of which is the sequential order (A;B;C)

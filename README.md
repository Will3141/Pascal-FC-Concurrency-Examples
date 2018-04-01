# Pascal-FC-Concurrency-Examples

## Obtaining Pascal-FC
Pascal-FC is a teaching language which provides many of the concurrency primitives found in other languages such as Ada and Occam. Having these constructs in a single language allows for them to be more easily compared and contrasted, using consistent syntactic constructs. Downloads for implementations on a range of OS's can be found [here](https://www-users.cs.york.ac.uk/burns/pf.html).

## Example Programs
The motivations behind each program are detailed below.

### ConcurrentTotalOrdering.pas
**Construct(s):**  cobegin ... coend
**Relevance:** Allows for processes to be interleaved. This example shows how that may not always be a desirable feature.

When the three instructions are executed sequentially, it results in X = 4 and Y = 2. As each instruction is wrapped within a process, they can be (and are) executed concurrently inside the **cobegin ... coend** construct. At execution, they are interleaved in the sequential order 1/6th of the time as there are 6 possible execution orders, one of which is the sequential order (A;B;C).

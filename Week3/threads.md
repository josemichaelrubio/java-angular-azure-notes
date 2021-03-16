# Threads

A thread is a path of execution in your program. It represents a subprocess within your application. The first preexisting thread in your application is that which is running your main method. Additional threads can be started from the main thread. There are also daemon threads, such as the thread responsible for garbage collection, which run in the background. The JVM will execute until all non-daemon threads have finished executing.

Threads are defined by implementing the run method in the Runnable interface. This can be done in 2 ways: (1) by extending the Thread class and overriding the run method or (2) by implementing the Runnable interface and providing the implemented class to an instance of the Thread class. An example of each can be found [here](https://docs.oracle.com/javase/tutorial/essential/concurrency/runthread.html). 

Once the run method is implemented, the start method is called, which creates the subprocess and calls the run method.

- `java.lang.Thread` is the Thread class representing a thread, which you can extend and then override its run() method. Afterwards, you call start().
- `java.lang.Runnable` is a functional interface (meaning only one method) which you can implement and then override run(). Afterwards, you can pass the object to a Thread instance and run start().
- The `synchronized` keyword is a modifier that can be used to write blocks of code, methods, or other resources to protect it in a multithreaded environment.
- `wait()` and `notify()` or `notifyAll()` methods of `java.lang.Object` can be used to suspend or wake up threads.

The [ExecutorService](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ExecutorService.html) also allows for the creation and management of thread pools. When working with a web server, a thread pool will be allocated (generally 200 threads) for handling HTTP requests.

### MultiThreading

An application which uses multiple non-daemon threads is said to be multithreaded. Mulithreading is a great feature of Java and allows for operations to be performed more efficiently. However, issues can arise when multiple threads are negotiating shared resources. Because of this, multithreading applications must utilize these resources in a thread safe way. One way of doing this is by synchronizing methods or blocks of code in your application - this only allows one thread to access that portion of code at a time.

Issues like [deadlock](https://docs.oracle.com/javase/tutorial/essential/concurrency/deadlock.html) and [starvation](https://docs.oracle.com/javase/tutorial/essential/concurrency/starvelive.html) can also threaten an application's liveness, or an applications ability to execute in a timely manner.

Threads can also be joined, where the current thread will wait until the completion of the joined thread to proceed its execution. This can be visualized [here](https://i.stack.imgur.com/Dfg6w.png).

### Thread States

A thread can be in the following states:

- NEW - A thread that has not yet started
- RUNNABLE - A thread executing in the Java virtual machine
- BLOCKED - A thread that is blocked waiting for a monitor lock. This occurs when a thread is waiting for another thread to leave a synchronized method or block.
- WAITING - A thread that is waiting indefinitely for another thread to perform a particular action is in this state. This happens when the wait method is called.
- TIMED_WAITING - A thread that is waiting for another thread to perform an action for up to a specified waiting time is in this state. This happens when the wait method is called with a specific amount of time.
- TERMINATED - A thread that has exited. Either it has finished executing or it exited exceptionally.
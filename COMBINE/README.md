- WATCH AND STUDY
🎥 Learning Combine with Swift: Power up your app with Combine by Doron Katz, Linkedin Learning

------------------------------------------------------------------------------------------------------
😳  OVERVIEW - Learning Combine with Swift
------------------------------------------------------------------------------------------------------
Learning Combine with Swift: Power up your app with Combine by Doron Katz, Linkedin Learning

Combine is a monumental paradigm shift in the Apple programming mindset. Combine provides Swift developers with a declarative functional approach to interacting with APIs, as well as SwiftUI components, over time, through a publisher/subscriber model. The introduction of Combine gives you a native way to manage asynchronous events in Swift, without relying on third-party reactive frameworks. This course explores the Combine life cycle, including publishing, manipulating, and receiving data streams, and explains how to apply these fundamentals to interact with REST APIs and UI components. Instructor and iOS engineer Doron Katz also introduces advanced techniques, such as throttling data streams and leveraging advanced operators. This introductory course should enable you to start putting Combine into practice in your own app development workflow.

Topics include:

- Functional reactive programming techniques
- Transmitting data with publishers
- Consuming data with subscribers
- Publishing data
- Creating a simple Combine data stream
- Calling REST APIs
- Handling errors
- Using testing
- Managing threads with schedulers
- Throttling publisher data
- Leveraging advanced operators

Publish and subscribe to data with subjects.mp4
01 - Power up your app with Combine.mp4
02 - What you should know.mp4
03 - What is Combine.mp4
04 - Shift to functional reactive programming.mp4
05 - Overview of SwiftUI.mp4
06 - Advantages of Combine.mp4
07 - Understand the Combine life cycle.mp4
- Subscriber Orchestrates the Workflow
	- Subscriber-driven framework
	- Through backpressure, subscriber decides how much to ingest
	- All subscribers conform to Cancelable protocol
08 - Transmit data with publishers.mp4
- The Publisher Protocol
	- Contract to transmit sequence of values
	- Has two possible outcomes: output and failure
	- Values transmitted over time
	- Values only transmitted if one or more subscribers
	- Can also terminate with an explicit completion signal
- Failure could occur in either side, Published
- Suggested reading developer.apple.com/documentation/combine
- Convenience Publishers
	- class Future
		- produces a single value and then completes or fails
	- struct Just
		- then Just publisher emits an output to each of the subscribers, just once and then terminates
	- struct Deferred
		- not yet defined
	- struct Empty
		- not yet defined
	- struct Fail
		- not yet defined
	- struct Record
		- not yet defined
09 - Manipulate data with operators.mp4
- Operators: Combine's Business Logic
	- Play a central role in the Combine framework ecosystem
	- Filter and manipulate values from an upstream publisher
	- Each operator returns a new publisher
	- Can be chained to add processing steps
	- Perform error handling, buffering,  prrefetches
- Operator Examples
	- Mapping
		- scan, map, setFailureType
	- Filtering
		- removeDuplicates, filter, replace
	- Reducing
		- collect, reduce, ignoreOutput
	- Mathematic
		- comparison, count
	- Combining
		- merge, zip, combineLatest
	- handlingErrors
		- catch, tryCatch, asserNoFailure
	- Timing
		- debounce delay, timeout, throttle
	- Encoding and Decoding
		-  
10 - Consume data with subscribers.mp4
	- The Subscriber Protocol
		- Contract to receive sequence of values
		- Has two possible outcomes, input and failure
		- Continues to receive as publisher transmits (demand)
		- sink and .assign for receiving values
		- Conform to AnyCancellable to cancel
11 - Publish and subscribe to data with subjects.mp4
	- The Subject Protocol
		- A publisher that exposes a method for outside callers to publish elements
		- Common for bridging code from the old imperative world into the modern, new Combine world
		- .send() method used to emit select values to one or more subscribers
		- As an aggregator for multiple subscribers, via subscriber demands signaling unlimited demand
		- currentValueSubject persists initial state values for subscribers, unlike passthroughSubject
		- Create publishers from objects which conform to ObservableObject
12 - Publish data once with Future and Just.mp4
	- Just
		- Omits a single result before termination or fail
		- Wrap a primitive value into a publisher
	- Future
		- Results in single output or failure
		- Wraps an asynchronous call
		- Commonly used to make a single request/response
		- Promise  is a closure tyope that accepts a result consisting of a single value from a future, or failure
13 - Challenge Create a simple Combine data stream.mp4
14 - Solution Create a simple Combine data stream.mp4
15 - Call REST APIs with DataTaskPublisher.mp4
16 - Handle errors with Combine.mp4
17 - Unit testing and Combine.mp4
18 - Challenge Use Combine to call an API endpoint.mp4
19 - Solution Use Combine to call an API endpoint.mp4
20 - Manage threads with schedulers.mp4
21 - Work with custom publishers and subscribers.mp4
22 - Throttle publisher data with backpressure.mp4
23 - Abstract Combine implementations with type erasures.mp4
24 - Leverage the Combine advanced operators.mp4
25 - Challenge Call an API using schedulers and backpressure.mp4
26 - Solution Call an API using schedulers and backpressure.mp4
27 - Go forth and code.mp4

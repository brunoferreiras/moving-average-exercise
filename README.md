# Moving Average from a Data Stream

## Description

Design a data structure `MovingAverage` that efficiently calculates the moving average of the last `k` numbers from a continuous stream.

- `MovingAverage(k)`: initializes the object with a window of size `k`.
- `next(val)`: adds `val` to the stream and returns the average of the most recent `k` values (or of all values received so far, if fewer than `k` have arrived).

The window grows until it holds `k` values. After that, it slides: each new value is added and the oldest one is removed.

## Example

**Input**

```
MovingAverage(3)
next(1)
next(10)
next(3)
next(5)
```

**Output**

```
1.0, 5.5, 4.66667, 6.0
```

**Explanation**

The window size is 3.

| Call       | Window       | Average               |
|------------|--------------|-----------------------|
| `next(1)`  | `[1]`        | 1 / 1 = 1.0           |
| `next(10)` | `[1, 10]`    | 11 / 2 = 5.5          |
| `next(3)`  | `[1, 10, 3]` | 14 / 3 ≈ 4.66667      |
| `next(5)`  | `[10, 3, 5]` | 18 / 3 = 6.0 (oldest value `1` was removed) |

## Constraints

- `k` is fixed at initialization and `1 <= k <= 10^4`
- At most `10^4` calls will be made to `next`
- `-10^5 <= val <= 10^5`
- `next` must run in **O(1)** time
- The structure must use **O(k)** space
- Answers within `10^-5` of the expected value are accepted

---

## Running the tests

Pick **one** language and edit only its solution file:

| Language   | File to edit              | Command                 |
|------------|---------------------------|-------------------------|
| JavaScript | `javascript/solution.js`  | `./run-tests.sh js`     |
| C++        | `cpp/solution.hpp`        | `./run-tests.sh cpp`    |

Run the commands in the Codespace terminal (**Terminal → New Terminal**). Do not modify the test files.

The last test is a stress test that goes beyond the constraints above to check that `next` is O(1).

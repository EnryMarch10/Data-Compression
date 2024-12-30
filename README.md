# Understanding Data Compression: Theory, Techniques, and Modern Tools

Report about Data Compression of
[Cryptography - a.y. 2023-2024](https://www.unibo.it/en/teaching/course-unit-catalogue/course-unit/2023/447103)
([Computer Science and Engineering](https://corsi.unibo.it/1cycle/ComputerScienceEngineering)).

## Author

[@EnryMarch10](https://github.com/EnryMarch10)

## Summary

### Overview

This repository provides an in-depth exploration of data compression, focusing on both theoretical foundations and practical
applications.
The principle of this report is to _keep it simple_; meanwhile the goal is to offer a clear understanding of data compression
techniques, tools, and the trade-offs involved in selecting the right method for specific use cases.

### Key Topics Covered

1. Foundations of Data Compression:
    - Distinction between data and information as the basis for compression.
    - Overview of information theory and its principles, including entropy as a measure of uncertainty.
    - Role of randomness in data representation and compression.

2. Compression Techniques:
    - Review of major lossless and lossy compression methods.
    - Discussion of encoding and decoding as two-step processes in compression.
    - Metrics for evaluating compression algorithms (e.g., speed, ratio, resource usage).

3. Compression Tools:
    - Analysis of widely-used lossless compression tools (e.g., gzip, zstd, bzip2, lz4, lzma).
    - Comparison of tools based on parameters such as compression ratio, speed, and resource requirements.
    - Recommendations tailored to specific data types and use cases:
        - Small files: gzip, pigz.
        - Large files: bzip2, pbzip2, bzip3.
        - Binary files: zstd for a balance of speed and ratio.

### Conclusions

Data compression is a trade-off between speed, compression ratio, and the characteristics of the data.
This project provides guidelines for choosing the optimal method, balancing these parameters to suit your needs.

## Improvements

Feel free to contribute by improving the comparison, adding new tools, or proposing additional insights into emerging compression
techniques.

## License

[MIT](https://choosealicense.com/licenses/mit/)

# min_max_without_comparator
 designing a corcuit of MAX and MIN without using Comparator, when in > Max , out = Max ; in< Min , out = Min; Max<in<Min, out = in;


### RTL Description: Top Module with Threshold Comparison

- **Module Name**: top
- **Inputs**:
  - `d_in`: Input data of width `WIDTH`, interpreted as signed.
- **Outputs**:
  - `d_out`: Output data of width `WIDTH`, interpreted as signed.
- **Parameters**:
  - `MAX`: Maximum threshold value.
  - `MIN`: Minimum threshold value.
  - `WIDTH`: Width of the input and output data.
- **Description**:
  - The `top` module compares the input data `d_in` with two threshold values: `MAX` and `MIN`.
  - It calculates the difference between `d_in` and `MAX` and between `d_in` and `MIN`.
  - If the sign bit of `max_diff` is set (indicating that `d_in` is greater than `MAX`), `d_out` is set to `MAX`.
  - If the sign bit of `min_diff` is set (indicating that `d_in` is less than `MIN`), `d_out` is set to `MIN`.
  - Otherwise, `d_out` remains unchanged as `d_in`.
- **Dependencies**:
  - This module depends on the input `d_in` and the parameters `MAX`, `MIN`, and `WIDTH`.
- **Additional Comments**:
  - Ensure that the input data `d_in` is of the correct width `WIDTH`.
  - Adjust the values of `MAX` and `MIN` according to the application requirements.
  - This module effectively limits the range of the input data `d_in` between `MIN` and `MAX`. If `d_in` falls below `MIN`, it is clamped to `MIN`, and if it exceeds `MAX`, it is clamped to `MAX`.

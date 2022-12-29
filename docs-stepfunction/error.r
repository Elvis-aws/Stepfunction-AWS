
Error Handling
    - Do not handle errors in your Lambda functions but in the state machine step functions
    - Do a retry if error occurs
    - Use Backoff rate for exponential Backoff
    - Max retry attempts
    - After all this logic, then catch the error
Catch
    - The catch block can catch a specified error and then direct the user to a specific state

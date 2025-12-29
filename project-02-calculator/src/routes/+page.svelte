<script>
    // ==================== VARIABLES ====================
  // TODO: Initialize reactive variables for calculator state
  let firstNumber = 0;
  let secondNumber = 0;
  let result = 0;

  // ==================== FUNCTIONS ====================
  // TODO: Implement addition function
  // Hint: Add firstNumber and secondNumber, store in result
  function addition() {
    result = firstNumber + secondNumber;
  }

  // TODO: Implement subtraction function
  // Hint: Subtract secondNumber from firstNumber
  function subtraction() {
    result = firstNumber - secondNumber;
  }

  // TODO: Implement multiplication function
  // Hint: Multiply firstNumber and secondNumber
  function multiplication() {
    result = firstNumber * secondNumber;
  }

  // TODO: Implement division function
  // Hint: Check for division by zero before calculating
  function division() {
    if (secondNumber === 0) {
        result = "Error: Cannot divide by zero";
    } else {
        result = firstNumber / secondNumber;
    }
}

  // TODO: Implement modulo function
  // Hint: Use the % operator to find remainder
  function modulo() {
    result = firstNumber % secondNumber;
  }

  function clear() {
    firstNumber = 0;
    secondNumber = 0;
    result = 0;
}
</script>

<div class="container">
    <h1>Math Calculator</h1>
    
    <div class="input-section">
        <label for="first">First Number:</label>
        <input id="first" bind:value={firstNumber} type="number" />
        
        <label for="second">Second Number:</label>
        <input id="second" bind:value={secondNumber} type="number" />
    </div>
    
    <div class="button-section">
        <button on:click={addition}>Add (+)</button>
        <button on:click={subtraction}>Subtract (-)</button>
        <button on:click={multiplication}>Multiply (×)</button>
        <button on:click={division}>Divide (÷)</button>
        <button on:click={modulo}>Modulo (%)</button>
    </div>
    
    <div class="result-section">
        <h2>Result: {result}</h2>
    </div>

    <button on:click={clear} class="clearbtn">Clear</button>
</div>

<style>
    .container {
        background-color: rgb(255, 254, 235);
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
        text-align: center;
        font-family: Arial, sans-serif;
    }
    
    .input-section {
        margin: 20px 0;
    }
    
    .input-section label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
    }
    
    .input-section input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    
    .button-section {
        margin: 20px 0;
    }
    
    .button-section button {
        margin: 5px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
    }
    
    .button-section button:hover {
        background-color: #0056b3;
    }
    
    .result-section {
        margin: 20px 0;
        padding: 15px;
        background-color: #f8f9fa;
        border-radius: 5px;
    }
    
    .result-section h2 {
        margin: 0;
        color: #28a745;
    }

    .clearbtn {
        margin-top: 10px;
        padding: 10px 20px;
        background-color: #dc3545;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        text-align: center;
    }
</style>
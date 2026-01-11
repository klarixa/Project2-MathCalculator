# Project 2: Math Calculator

> **W3 Server-Side Development & Authentication - Lesson 8**

## 🎯 Project Overview

Build an interactive math calculator using Svelte's reactivity system. This project teaches you how to handle user input, perform calculations, implement multiple functions, and manage application state - all core concepts for building dynamic web applications.

## 📚 Learning Objectives

By completing this project, you will:
- Master Svelte's two-way data binding with `bind:value`
- Implement event handling with `on:click`
- Create multiple functions with different operations
- Handle edge cases (division by zero)
- Work with reactive variables that auto-update the UI
- Build a complete calculator interface with Bootstrap

## 🏗️ What's Provided (15% Scaffolding)

✅ Basic SvelteKit project structure
✅ Development environment configuration
✅ Variable declarations (firstNumber, secondNumber, result)
✅ Empty function stubs with hints
✅ Complete UI structure (inputs, buttons, result display)
✅ Bootstrap CSS framework

## 🔨 What You Will Build (85% Implementation)

### Core Features (Must Implement):

1. **Input Binding**
   - Bind `firstNumber` to first input field
   - Bind `secondNumber` to second input field
   - Understand two-way data binding with `bind:value`

2. **Arithmetic Operations** (5 functions)
   - `addition()` - Add two numbers
   - `subtraction()` - Subtract second from first
   - `multiplication()` - Multiply two numbers
   - `division()` - Divide with zero-check
   - `modulo()` - Find remainder

3. **Event Handling**
   - Connect each button to its function with `on:click`
   - Update result reactively
   - No page refresh needed

4. **Error Handling**
   - Division by zero validation
   - Display error message for invalid operations
   - Handle edge cases gracefully

5. **Result Display**
   - Show calculated result
   - Update automatically (reactive)
   - Format numbers appropriately

### Optional Enhancements:
- Clear button to reset calculator
- Keyboard support for operations
- Calculation history display
- Scientific calculator functions (sqrt, power, etc.)
- Decimal precision control
- Dark mode toggle

## 🚀 Getting Started

### Prerequisites
- Node.js v18+ installed
- VS Code with Svelte extension
- Completed Lessons 1-7 (Svelte reactivity basics)

### Installation

1. **Navigate to this template folder:**
   ```bash
   cd "Paid Courses/W3 Server-Side Development & Authentication/Templates/project-02-calculator"
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start development server:**
   ```bash
   npm run dev
   ```

4. **Open in browser:**
   Visit `http://localhost:5173`

## 📂 Project Structure

```
project-02-calculator/
├── src/
│   └── routes/
│       └── +page.svelte       # Main calculator (TODO: implement logic)
├── package.json               # Dependencies
├── svelte.config.js           # Svelte configuration
└── vite.config.js             # Build configuration
```

## 🔍 Discovery Challenges

Before implementing, research and answer:

1. **Two-Way Binding**: What is `bind:value` in Svelte?
   - How does it differ from one-way binding?
   - When should you use it?
   - How does it make forms easier?

2. **Event Handlers**: How do you handle clicks in Svelte?
   - Syntax for `on:click`?
   - How to call functions with parameters?
   - Event modifiers available?

3. **Reactivity**: How does Svelte's reactivity work?
   - What triggers UI updates?
   - Do you need setState() like React?
   - How are assignments reactive?

4. **Math Operations**: What are JavaScript's math operators?
   - Addition, subtraction, multiplication operators?
   - Division operator and modulo?
   - How to handle division by zero?

## 💡 Implementation Guide

### Step 1: Add Input Binding

**File**: `src/routes/+page.svelte`

```svelte
<!-- Current: -->
<input type="number" class="form-control" placeholder="First Number" />

<!-- TODO: Add bind:value -->
<input
  type="number"
  class="form-control"
  placeholder="First Number"
  bind:value={firstNumber}
/>

<!-- Repeat for secondNumber -->
```

**What to learn:**
- `bind:value` creates two-way binding
- User input updates the variable
- Variable changes update the input
- No event handlers needed!

### Step 2: Implement Addition Function

```svelte
<script>
  function addition() {
    result = firstNumber + secondNumber;
  }
</script>
```

**What to learn:**
- Simple assignment triggers reactivity
- No need to call update functions
- Result automatically displays in UI

### Step 3: Connect Button to Function

```svelte
<!-- Current: -->
<button class="btn btn-primary btn-block">+ Add</button>

<!-- TODO: Add on:click -->
<button class="btn btn-primary btn-block" on:click={addition}>
  + Add
</button>
```

**What to learn:**
- `on:click={functionName}` attaches event
- No parentheses needed (unless passing params)
- Function runs when button clicked

### Step 4: Implement Division with Error Handling

```svelte
<script>
  function division() {
    if (secondNumber === 0) {
      result = "Error: Cannot divide by zero";
    } else {
      result = firstNumber / secondNumber;
    }
  }
</script>
```

**What to learn:**
- Always validate before division
- Result can be string or number
- Error messages improve UX

### Step 5: Display Result

```svelte
<!-- Current: -->
<p class="text-center">Result: </p>

<!-- TODO: Show result variable -->
<p class="text-center">Result: {result}</p>
```

**What to learn:**
- Curly braces display variables
- Updates automatically (reactive)
- Can display any data type

## ✅ Success Criteria

Your project is complete when:
- [ ] Both input fields bind to variables (firstNumber, secondNumber)
- [ ] All 5 operation buttons have `on:click` handlers
- [ ] Addition function works correctly
- [ ] Subtraction function works correctly
- [ ] Multiplication function works correctly
- [ ] Division function checks for zero
- [ ] Modulo function works correctly
- [ ] Result displays after each operation
- [ ] UI updates reactively (no page refresh)
- [ ] Error handling for division by zero

## 🧪 Testing Your Implementation

Test these scenarios:

1. **Basic Operations**:
   - Add 5 + 3 → Should show 8
   - Subtract 10 - 4 → Should show 6
   - Multiply 6 × 7 → Should show 42
   - Divide 20 ÷ 4 → Should show 5
   - Modulo 17 % 5 → Should show 2

2. **Edge Cases**:
   - Divide by zero → Should show error message
   - Negative numbers → Should calculate correctly
   - Decimal numbers → Should handle properly

3. **Reactivity**:
   - Change input → Should update immediately
   - Click operation → Result updates instantly
   - No page refresh needed → Should work seamlessly

4. **UI Responsiveness**:
   - All buttons clickable
   - Inputs accept numbers
   - Result displays clearly

## 📖 Resources

- **Svelte Bindings**: [https://svelte.dev/tutorial/text-inputs](https://svelte.dev/tutorial/text-inputs)
- **Event Handling**: [https://svelte.dev/tutorial/dom-events](https://svelte.dev/tutorial/dom-events)
- **Reactivity**: [https://svelte.dev/tutorial/reactive-assignments](https://svelte.dev/tutorial/reactive-assignments)
- **JavaScript Math**: [MDN Math Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators)

## 🎨 Grading Rubric

| Criteria | Points | Description |
|----------|--------|-------------|
| **Functions** | 40 | All 5 operations implemented correctly |
| **Reactivity** | 25 | Proper use of bind:value and reactive updates |
| **Error Handling** | 20 | Division by zero and edge cases handled |
| **UI/UX** | 15 | Clean interface, responsive buttons, result display |
| **Total** | 100 | |

## 🐛 Common Issues & Solutions

**Issue**: Input not updating variable
**Solution**: Check `bind:value={variableName}` syntax is correct

**Issue**: Button click does nothing
**Solution**: Verify `on:click={functionName}` is attached (no parentheses)

**Issue**: Result not displaying
**Solution**: Ensure you have `{result}` in the result display area

**Issue**: Calculator always shows 0
**Solution**: Check that functions assign to `result` variable

**Issue**: Division by zero crashes app
**Solution**: Add if-statement to check `secondNumber === 0` before dividing

## 🎨 Styling Tips

Enhance your calculator with custom styles:

```css
:global(body) {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  min-height: 100vh;
}

.calculator-container {
  max-width: 600px;
  margin: 3rem auto;
  padding: 2rem;
  background: white;
  border-radius: 20px;
  box-shadow: 0 20px 60px rgba(0,0,0,0.3);
}

.result-display {
  font-size: 2rem;
  font-weight: bold;
  color: #667eea;
  margin-top: 2rem;
  padding: 1rem;
  background: #f7fafc;
  border-radius: 10px;
}
```

## 📦 Build for Production

When ready to deploy:
```bash
npm run build
npm run preview  # Test production build locally
```

## 🔗 Related Course Materials

- **Concept 05**: Svelte Reactivity
- **Concept 06**: Event Handling
- **Activity 06**: Calculator Exercises
- **Lesson**: 8
- **Project Specification**: `../../Project/Project 02- Math Calculator.mdx`

---

**Remember**: Reactivity is Svelte's superpower! Unlike other frameworks, you don't need complex state management - just assign values and Svelte handles the rest.

**💡 Pro Tip**: Start with one function (addition), get it working perfectly, then copy the pattern to the others. This "build one, replicate many" approach is a professional development strategy.

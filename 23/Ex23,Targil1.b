
/*
רינה סלפיתי 209143098
קאסם חליליה 207674227
 */
import java.util.Stack;

public class Ex23b {
	public static int returnFirstNumInStack(Stack<Integer> stack) {
		int firstNum;
		Stack<Integer> tempStack = new Stack<>();

		while (!stack.isEmpty())
			tempStack.push(stack.pop());

		firstNum = tempStack.pop();
		while (!tempStack.isEmpty())
			stack.push(tempStack.pop());

		return firstNum;
	}

	public static Stack<TwoItems> stackTwoItems(Stack<Integer> stack) {
		Stack<TwoItems> result = new Stack<>();
		while (!stack.isEmpty()) {
			// the top num in the stack
			int num1 = stack.pop();

			// the bottom number (num2), if available using the prev func
			int num2 = returnFirstNumInStack(stack);

			// Create a TwoItems object to store the pair
			TwoItems twoItems = new TwoItems(num1, num2);

			// add the two items object to the result stack
			result.push(twoItems);
		}

		return result; // return the stack of TwoItems
	}

	public static void main(String[] args) {
		Stack<Integer> stack = new Stack<>();

		stack.push(9);
		stack.push(4);
		stack.push(7);
		stack.push(5);
		stack.push(5);
		stack.push(32);
		stack.push(6);
		stack.push(1);

		System.out.println("Original Stack: " + stack);
		Stack<TwoItems> twoItemsStack = stackTwoItems(stack);
		System.out.println("TwoItems Stack: ");
		while (!twoItemsStack.isEmpty()) {
			System.out.println(twoItemsStack.pop());
		}
	}

}

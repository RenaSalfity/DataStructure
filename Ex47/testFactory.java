/*
 *קאסם חליליה 207674227
 *רינה סלפיתי 209143098
*/
public class testFactory {
	public static void main(String[] args) {
		WorkerCollection collection = new WorkerCollection();

		// Adding Workers
		collection.addWorker(new Worker("Qasem Khalilieh", 5000, 8, 5.2, "IT"));
		collection.addWorker(new Worker("Rena Salfity", 7000, 9, 10.5, "HR"));
		collection.addWorker(new Worker("Lior Cohen", 4500, 7, 2, "Finance"));
		collection.addWorker(new Worker("Rami Saban", 6000, 8, 7.3, "Marketing"));
		collection.addWorker(new Worker("Or Biton", 3000, 6, 1, "Support"));

		// Printing all workers
		collection.printAllWorkers();

		// Removing a worker
		System.out.println("\nRemoving Or Biton...");
		collection.removeWorker("Or Biton");

		// Printing all workers after removal
		collection.printAllWorkers();

		// Printing top 2 workers with the lowest salaries
		collection.printTopYLowestSalaries(2);
	}
}

רינה סלפיתי 209143098
קאסם חליליה 207674227
public class Ex3 {

	public static void main(String[] args) 
	{
		 int[] arr = {3, 1, 12, 13, 6, 5};
		 
		 System.out.println(isThereNeighborsEqualsTen(arr,arr.length));
	}
	public static Boolean isThereNeighborsEqualsTen(int []arr,int size) {
		if(size<2) {
			return false;
		}
		if((arr[size-1]+arr[size-2])%10==0) {
			
			return true;
		
	}		
		 return isThereNeighborsEqualsTen(arr,size-1);
	
}
}

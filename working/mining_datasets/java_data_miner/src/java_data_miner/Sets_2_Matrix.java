package java_data_miner;

public class Sets_2_Matrix extends Set{
	//Member Variables
	private Set[] setOfSets;
	private int[][] matrix;
	private Set universalSet;
	
	//Constructor
	public Sets_2_Matrix(Set universalSet, Set[] setOfSets){
		this.setOfSets = setOfSets;
		this.universalSet = universalSet;
		
	}
	public Sets_2_Matrix(Set[] setOfSets){
		this.setOfSets = setOfSets;
		this.universalSet = new Set();
		for(int i = 0 ; i < setOfSets.length ; i += 1){
			Set tempSet = new Set(setOfSets[i]);
			while(!tempSet.is_empty()){
				char top = (char)tempSet.pop();
				this.universalSet.add_element(top);
			}
		}
	}
	
	//Methods
	
}

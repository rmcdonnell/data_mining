package java_data_miner;

@SuppressWarnings("serial")
public class Matrix extends Set{
	//Member Variables
	private Set[] setOfSets;
	private int[][] matrix;
	private Set universalSet;
	
	//Constructor
	public Matrix(Set universalSet, Set[] setOfSets){
		this.setOfSets = setOfSets;
		this.universalSet = universalSet;
		this.matrix = intoTheMatrix();
	}
	public Matrix(Set[] setOfSets){
		this.setOfSets = setOfSets;
		this.universalSet = new Set();
		for(int i = 0 ; i < setOfSets.length ; i += 1){
			Set tempSet = new Set(setOfSets[i]);
			while(!tempSet.is_empty()){
				String top = tempSet.pop();
				this.universalSet.add_element(top);
			}
		}
		this.matrix = intoTheMatrix();
	}
	
	//Methods
	private int[][] intoTheMatrix(){
		int[][] matrix = new int[this.universalSet.size()][this.setOfSets.length];
		for(int i = 0 ; i < this.universalSet.size(); i++){
			for(int j = 0 ; j < this.setOfSets.length ; j++){
				if(this.setOfSets[j].contains(this.universalSet.elementAt(i))){
					matrix[i][j] ++;
				}
			}
		}
		return matrix;
	}
	public int[][] getMatrix() {return this.matrix;}
	public Set getUniversalSet() {return this.universalSet;}
	public Set[] getSetOfSets() {return this.setOfSets;}
	
}

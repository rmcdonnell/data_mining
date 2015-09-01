package java_data_miner;


//import java.util.Arrays;
//import java.util.Stack;

import java.util.*;

@SuppressWarnings("serial")
public class MinHash{
	//Member Variables
	private int[][] matrix;
	
	//Constructor
	public MinHash(Set universalSet, Set[] setOfSets){
		Matrix m = new Matrix(universalSet, setOfSets);
		this.matrix = m.getMatrix();
	}
	public MinHash(Set[] setOfSets){
		Matrix m = new Matrix(setOfSets);
		this.matrix = m.getMatrix();
	}
	
	//Methods
	
}

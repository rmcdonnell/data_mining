package java_data_miner;


//import java.util.Arrays;
//import java.util.Stack;

import java.util.*;

public class Set_of_Sets extends Set{
	//Member Variables
	private List<Set> listOfSets;
	
	//Constructor
	public Set_of_Sets(Set[] setArray){
		this.listOfSets = Arrays.asList(setArray);
	}
	
	//Methods
	public void add(Set newSet){
		if(!this.listOfSets.contains(newSet)){
			this.listOfSets.add(newSet);
		}
	}
	public void add(Set[] newSets){
		if(newSets.length > 0){
			for(int i = 0 ; i < newSets.length ; i+=1){
				if(!this.listOfSets.contains(newSets[i])){
					this.listOfSets.add(newSets[i]);
				}
			}
		}
	}
	 
}

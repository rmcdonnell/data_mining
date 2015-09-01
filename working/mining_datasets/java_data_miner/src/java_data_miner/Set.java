package java_data_miner;

import java.util.*;

public class Set extends Stack{
	//Member Variables
	private Stack<Character> set;
	//Constructor
	public Set(){
		this.set = new Stack<Character>();
	}
	public Set(Set another){
		this.set = another.set;
	}
	//Methods
	public boolean is_empty(){
		return this.set.empty();
	}
	
	public boolean is_element(char item){
		if(this.set.empty()){
			return false;
		}
		return this.set.contains(item);
	}
	
	public void add_element(char item){
		if(!this.is_element(item)){
			this.set.push(item);
		}
	}
	
	public void add_element(char[] item){
		for(int i = 0 ; i<=item.length; i+=1){
			if(!this.is_element(item[i])){
				this.set.push(item[i]);
			}
		}
	} 
	
	
}

package com.sherold.ninjagold;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

public class Ninja {
	// <----- Attributes ----->
	private int gold;
	private ArrayList<String> activities;
	
	// <----- Constructors ----->
	public Ninja() {
		gold = 0;
		activities = new ArrayList<String>();
	}
	
	// <----- Getters/Setters ----->
	// gold
	public int getGold() {
		return gold;
	}
	public void setGold(int gold) {
		this.gold = gold;
	}
	// activities
	public ArrayList<String> getActivities() {
		return activities;
	}
	public void setActivities(ArrayList<String> activities) {
		this.activities = activities;
	}
	
	// <----- Methods ----->
	// generates string message for activity
	private String activityMessage(String event, int gold) {
		// timestamp
		String pattern = "MMMMM d yyyy h:mm a";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		
		// Event handlers for gain/loss
		if (gold >= 0) {
			return "<p class='text-success'>You have entered a " + event + " and earned " + gold + " gold. (" + simpleDateFormat.format(new Date()) + ")</p>";
		} else {
			return "<p class='text-danger'>You have entered a " + event + " and lost " + gold + " gold... Ouch... (" + simpleDateFormat.format(new Date()) + ")</p>";
		}
	}
	
	// Generates gold based on input, updates gold and appends message
	public void generateGold(String event) {
		// random object
		Random r = new Random();
		
		// gold for activity string
		int newGold = 0;
		
		// farm
		if (event.equals("farm")) {
			newGold = r.nextInt(10) + 10;
			this.gold += newGold;
			this.activities.add(activityMessage(event, newGold));
		
		// cave
		} else if (event.equals("cave")) {
			newGold = r.nextInt(5) + 5;
			this.gold += newGold;
			this.activities.add(activityMessage(event, newGold));
			
		// house
		} else if (event.equals("house")) {
			newGold = r.nextInt(3) + 2;
			this.gold += newGold;
			this.activities.add(activityMessage(event, newGold));
		
		// casino
		} else if (event.equals("casino")) {
			newGold = r.nextInt(100) - 50;
			this.gold += newGold;
			this.activities.add(activityMessage(event, newGold));
		
		// spa
		} else if (event.equals("spa")) {
			newGold = r.nextInt(20) - 25;
			this.gold += newGold;
			this.activities.add(activityMessage(event, newGold));
		}
	}
}
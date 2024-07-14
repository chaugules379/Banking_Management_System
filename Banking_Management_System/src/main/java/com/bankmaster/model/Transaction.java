package com.bankmaster.model;

public class Transaction {

	private int transactionId;
	private int accountId;
	private String type;
	private double amount;
	private String transactionTime;
	private Integer targetAccountId;

	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getTransactionTime() {
		return transactionTime;
	}

	public void setTransactionTime(String transactionTime) {
		this.transactionTime = transactionTime;
	}

	public Integer getTargetAccountId() {
		return targetAccountId;
	}

	public void setTargetAccountId(Integer targetAccountId) {
		this.targetAccountId = targetAccountId;
	}

}

package com.chili.model;

public class Test {
	public static void main(String[] args) throws Exception {
		String price = String.valueOf(2500000);
		StringBuilder stbPri = new StringBuilder();
		if (price.length() == 5) {
			String pr1 = price.substring(0, 2);
			String pr2 = price.substring(2, 5);
			stbPri.append(pr1);
			stbPri.append(".");
			stbPri.append(pr2);
		} else if (price.length() == 6) {
			String pr1 = price.substring(0, 3);
			String pr2 = price.substring(3, 6);
			stbPri.append(pr1);
			stbPri.append(".");
			stbPri.append(pr2);
		} else if (price.length() == 7) {
			String pr1 = price.substring(0, 1);
			String pr2 = price.substring(1, 4);
			String pr3 = price.substring(4, 7);
			stbPri.append(pr1);
			stbPri.append(".");
			stbPri.append(pr2);
			stbPri.append(".");
			stbPri.append(pr3);
		}
	}
}

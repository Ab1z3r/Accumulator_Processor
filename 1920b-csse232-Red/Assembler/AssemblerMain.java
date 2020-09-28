import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;

public class AssemblerMain {

	public static HashMap<String, Instruction> instructionSet = new HashMap<String, Instruction>();
	public static HashMap<String, String> Registers = new HashMap<String, String>();
	public static HashMap<String, String> labels = new HashMap<String, String>();
	public static String Cur_Mem = "0";
	public static String deadBit = "0";

	public static void main(String[] args) {

		HashMap<String, String> new_labels =  populate_labels(labels, Cur_Mem);

		Scanner myReader = null;
		BufferedWriter writer  = null;
		try {
			File myObj = new File("C:\\Users\\naseema\\Desktop\\Relprime.txt");
			writer = new BufferedWriter(new FileWriter("C:\\Users\\naseema\\Desktop\\Assebly.txt"));
		    myReader = new Scanner(myObj);
		} catch (FileNotFoundException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		populate_data();
		
		String data = myReader.nextLine();

		while (true) {
			String[] split = data.split(" ");
			String parsed = parseData(split, instructionSet);
			if(isValidBin(parsed)) {
			    try {
			    	System.out.println(data +" : " + parsed);
					writer.write(parsed);
					writer.newLine();
			    } catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("Valid binary not parsed");
				}
			}
			
			if(myReader.hasNextLine()) {
				data = myReader.nextLine();
				if(!myReader.hasNextLine()) {
					if(!data.equals("stop")) {
						split = data.split(" ");
						parsed = parseData(split, instructionSet);
						if(isValidBin(parsed)) {
						    try {
								writer.write(parsed);
								writer.newLine();
								writer.write("0110000000000000");
						    } catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
								System.out.println("Valid binary not parsed");
							}
						}
						break;
					}
				}
			}else {
				break;
			}
		}

		myReader.close();
		try {
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		try {
			File myObj = new File("C:\\Users\\naseema\\Desktop\\Assebly.txt");
			writer = new BufferedWriter(new FileWriter("C:\\Users\\naseema\\Desktop\\AsseblyHex.txt"));
		    myReader = new Scanner(myObj);
		    writer.write("MEMORY_INITIALIZATION_RADIX=16;");
		    writer.newLine();
		    writer.write("MEMORY_INITIALIZATION_VECTOR=");
		    writer.newLine();
		} catch (FileNotFoundException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		while (myReader.hasNextLine()) {
			data = myReader.nextLine();
			int decimal = Integer.parseInt(data,2);
			String hexStr = Integer.toString(decimal,16);
			hexStr = make2four(hexStr);
			try {
				if(myReader.hasNextLine()) {
					writer.write(hexStr+",");
					writer.newLine();
				}else {
					writer.write(hexStr+";");
					writer.newLine();
				}
		    } catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		try {
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		try {
			writer = new BufferedWriter(new FileWriter("C:\\Users\\naseema\\Desktop\\DataMem.txt"));
		    writer.write("MEMORY_INITIALIZATION_RADIX=16;");
		    writer.newLine();
		    writer.write("MEMORY_INITIALIZATION_VECTOR=");
		    writer.newLine();
			for(int i=1; i<=7999;i++) {
				writer.write("0000,");
				writer.newLine();
			}
			writer.write("0000;");
			writer.close();
		}catch (IOException e) {
			// TODO Auto-generated catch bl+ock
			e.printStackTrace();
		}
		
	}


	private static String make2four(String hexStr) {
		while(hexStr.length()!=4) {
			hexStr = "0"+hexStr;
		}
		return hexStr;
	}


	private static String parseData(String[] data, HashMap<String, Instruction> instructionSet) {
		String bin_data = "";
		if (data.length == 1 && !(instructionSet.keySet().contains(data[0]))) {
			return data[0];
		}

		Instruction curInst = instructionSet.get(data[0]);

		if (curInst.type.equals("R")) {

			bin_data = curInst.opcode + curInst.funct;

			if (data.length == 4) {
				String reg_select = Registers.get(data[1].substring(0, data[1].length() - 1));
				String reg_select2 = Registers.get(data[2].substring(0, data[2].length() - 1));
				bin_data += reg_select + deadBit + reg_select2 + data[3];
			} else if (data.length == 2) {
				String reg_select = Registers.get(data[1]);
				String reg_select2 = "000";
				bin_data += reg_select + deadBit + reg_select2 + "0";
			} else if (data.length == 3) {
				String reg_select = Registers.get(data[1].substring(0, data[1].length() - 1));
				String reg_select2 = Registers.get(data[2]);
				bin_data += reg_select + deadBit + reg_select2 + "0";
			} else {
				System.out.println("ILLEGAL R-TYPE " + data[0]);
				System.exit(2);
			}
		} else if (curInst.type.equals("IJ")) {
			bin_data = curInst.opcode;
			
			if(data[0].equals("stop")) {
				return "0110000000000000";
			}
			
			if(data[0].equals("call") || data[0].equals("goto")) {
				String destination_label = data[1];
				String destination_addr = labels.get(destination_label);
				String binary = Integer.toBinaryString(Integer.parseInt(destination_addr, 16));
				binary = Make2bits(binary, 16);
				bin_data += binary.substring(3, binary.length()-1);
				return bin_data;
			}
			
			String immediate = data[1];

			if (immediate.length() >= 3) {
				if (immediate.substring(0, 2).equals("0x")) {
					immediate = immediate.substring(2, immediate.length());
				}else if(immediate.charAt(0) == '-' &&immediate.substring(1, 3).equals("0x") ) {
					immediate = "-"+immediate.substring(3, immediate.length());
				}
			}
			int decimal = Integer.parseInt(immediate, 16);
			String binary = Integer.toBinaryString(decimal);
			
			if(data[0].equals("la")) {
				bin_data += Make2bits(binary, 12);
			}else {
				bin_data += Make2bitsSignExtend(Make2bits(binary, 4), 12);
			}
		} else if (curInst.type.equals("D")) {
			bin_data = curInst.opcode + curInst.funct;

			if(data[0].equals("clrr")) {
				String reg_select = Registers.get(data[1]);
				String delta = "0000";
				bin_data += reg_select + delta + deadBit;
				return bin_data;
			}
			
			if (data.length == 3) {
				String reg_select = Registers.get(data[1].substring(0, data[1].length() - 1));
				String delta = Make2bits(Integer.toBinaryString(Integer.parseInt(data[2])), 4);
				bin_data += reg_select + delta + deadBit;
			} else if (data.length == 2) {
				String reg_select = Registers.get(data[1].substring(0, data[1].length() - 1));
				String delta = "0000";
				bin_data += reg_select + delta + deadBit;
			} else {
				System.out.println("ILLEGAL D-TYPE " + data[0]);
				System.exit(2);
			}

		} else {
			System.out.println("ILLEGAL INSTRUCTION TYPE " + data[0]);
			System.exit(2);
		}
		return bin_data;
	}

	private static String leftShift1(String binary) {
		return binary.substring(1, binary.length()) + "0";
	}

	private static String Make2bits(String binary, int num) {
		if (binary.length() > num) {
			binary = binary.substring(binary.length() - num, binary.length());
		} else if (binary.length() < num) {
			String leading_zeros = "";
			for (int i = num - binary.length(); i > 0; i--) {
				leading_zeros += "0";
			}
			binary = leading_zeros + binary;
		}
		return binary;
	}

	public static void populate_data() {

		instructionSet.put("add", new Instruction("R", "add", "0000", "0000"));
		instructionSet.put("and", new Instruction("R", "and", "0000", "0001"));
		instructionSet.put("jr", new Instruction("R", "jr", "0000", "0010"));
		instructionSet.put("move", new Instruction("R", "move", "0000", "0110"));
		instructionSet.put("or", new Instruction("R", "or", "0000", "1000"));
		instructionSet.put("seq", new Instruction("R", "seq", "0000", "1011"));
		instructionSet.put("sgt", new Instruction("R", "sgt", "0000", "1100"));
		instructionSet.put("slt", new Instruction("R", "slt", "0000", "1111"));
		instructionSet.put("sne", new Instruction("R", "sne", "0000", "0011"));
		instructionSet.put("sub", new Instruction("R", "sub", "0000", "0100"));
		instructionSet.put("movem", new Instruction("R", "movem", "0000", "0111"));

		instructionSet.put("subi", new Instruction("IJ", "subi", "1111", null));
		instructionSet.put("snei", new Instruction("IJ", "snei", "1110", null));
		instructionSet.put("seqi", new Instruction("IJ", "seqi", "1101", null));
		instructionSet.put("ori", new Instruction("IJ", "ori", "1011", null));
		instructionSet.put("orim", new Instruction("IJ", "orim", "1100", null));
		instructionSet.put("addi", new Instruction("IJ", "addi", "0010", null));
		instructionSet.put("addm", new Instruction("IJ", "addm", "0011", null));
		instructionSet.put("goto", new Instruction("IJ", "goto", "0101", null));
		instructionSet.put("call", new Instruction("IJ", "call", "0100", null));
		instructionSet.put("la", new Instruction("IJ", "la", "0111", null));
		instructionSet.put("lui", new Instruction("IJ", "lui", "1000", null));
		instructionSet.put("luia", new Instruction("IJ", "luia", "1001", null));
		instructionSet.put("slti", new Instruction("IJ", "slti", "1010", null));
		instructionSet.put("stop", new Instruction("IJ", "stop", "0110", null));

		instructionSet.put("clrr", new Instruction("D", "clrr", "0001", "0000"));
		instructionSet.put("decr", new Instruction("D", "decr", "0001", "0001"));
		instructionSet.put("incr", new Instruction("D", "incr", "0001", "0010"));
		instructionSet.put("pop", new Instruction("D", "pop", "0001", "1001"));
		instructionSet.put("push", new Instruction("D", "push", "0001", "1010"));
		instructionSet.put("shl", new Instruction("D", "shl", "0001", "1101"));
		instructionSet.put("shr", new Instruction("D", "shr", "0001", "1110"));

		Registers.put("$wr", "000");
		Registers.put("$ma", "001");
		Registers.put("$ar", "010");
		Registers.put("$na", "011");
		Registers.put("$rv", "100");
		Registers.put("$sp", "101");
		Registers.put("$ra", "110");
		Registers.put("$tp", "111");
	}

	private static HashMap<String, String> populate_labels(HashMap<String, String> labels, String Cur_Mem) {
		Scanner myReader = null;
		try {
			File myObj = new File("C:\\Users\\naseema\\Desktop\\Relprime.txt");
			myReader = new Scanner(myObj);
		} catch (FileNotFoundException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		}

		while (myReader.hasNextLine()) {
			String split = myReader.nextLine();
			String[] data = split.split(" ");
			if (data.length == 1 && data[0].length()>1 && data[0].charAt(data[0].length()-1) == ':') {
				if (labels.containsKey(data[0].substring(0, data[0].length() - 1))) {
					System.out.println("Label used twice: " + data[0]);
					System.exit(2);
				}
				labels.put(data[0].substring(0, data[0].length() - 1), Cur_Mem);
			}else if(data[0].length()>1){
				Cur_Mem = Integer.toHexString(Integer.parseInt(Cur_Mem, 16) + 2);
			}
		}
		return labels;
	}

	private static String Make2bitsSignExtend(String binary, int num) {
		if (binary.length() > num) {
			binary = binary.substring(binary.length() - num, binary.length());
		} else if (binary.length() < num) {
			String leading_num = binary.charAt(0)+"";
			String number = "";
			for (int i = num - binary.length(); i > 0; i--) {
				number += leading_num;
			}
			binary = number + binary;
		}
		return binary;
	}
	
	private static boolean isValidBin(String parsed) {
		if(parsed.length()!=16) {
			return false;
		}
		for (char a:parsed.toCharArray()) {
			if(a != '1' && a != '0') {
				return false;
			}
		}
		return true;
	}

}

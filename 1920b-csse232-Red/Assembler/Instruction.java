
public class Instruction {

	public String type;
	public String name;
	public String opcode;
	public String funct;
	
	public Instruction(String type, String name, String opcode, String funct) {
		this.type = type;
		this.name = name;
		this.opcode = opcode;
		this.funct = funct;
	}
}

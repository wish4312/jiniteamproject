package kr.co.dong.board;

public class CodeDTO {

	private String CodeNm;
	private int CodeNum;
	private String CodeString;
	
	public String getCodeNm() {
		return CodeNm;
	}
	public void setCodeNm(String codeNm) {
		CodeNm = codeNm;
	}
	public int getCodeNum() {
		return CodeNum;
	}
	public void setCodeNum(int codeNum) {
		CodeNum = codeNum;
	}
	public String getCodeString() {
		return CodeString;
	}
	public void setCodeString(String codeString) {
		CodeString = codeString;
	}
	@Override
	public String toString() {
		return "CodeDTO [CodeNm=" + CodeNm + ", CodeNum=" + CodeNum + ", CodeString=" + CodeString + ", getCodeNm()="
				+ getCodeNm() + ", getCodeNum()=" + getCodeNum() + ", getCodeString()=" + getCodeString()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}

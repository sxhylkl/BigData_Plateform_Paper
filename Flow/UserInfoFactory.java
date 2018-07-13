/**
*
* Create by RenShuliang on 2018年3月2日.
*/
package in.co.hadooptutorials.data.generator.cdr;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class UserInfoFactory {
	
	private static String dbUrl = "jdbc:mysql://172.16.18.140:3306/test";
	private static String dbUsername = "root";
	private static String dbPassword = "123456";
	private static String driverClass="com.mysql.jdbc.Driver";
	
	private static List<String> areaCode;
	
	private static List<String> surname; //姓氏大全
	
	private static List<String> mobileSection; //手机号段大全
	
	private static Map<String, String> areaCode1 = new HashMap<String, String>();
	private static Map<String, String> areaCode2 = new HashMap<String, String>();
	private static Map<String, String> areaCode3 = new HashMap<String, String>();
	
	/**
	 * 生成身份证号
	 * @return
	 */
	public static String createID(){
		String id = "";
		return id;
	}
	
	/**
	 * 根据年龄生成身份证号
	 * @return
	 */
	public static String createID(int age){
		String id = "";
		return id;
	}
	
	/**
	 * 随机获取区域代码
	 * @return
	 */
	public static String areaCode(){
		Random random = new Random();
		int num = random.nextInt(areaCode.size());
		return areaCode.get(num);
	}
	
	public static String getAddress(String areaCode){
		String address = "";
		String areaCode2Str = areaCode2.get(areaCode.substring(0,4)+"00");
		if(areaCode2Str == null){
			areaCode2Str = "";
		}else{
			areaCode2Str += " ";
		}
		address = areaCode1.get(areaCode.substring(0,2) + "0000") + " " 
		+ areaCode2Str
		+ areaCode3.get(areaCode);
		return address;
	}
	
	/**
	 * 随机获取一个汉字
	 * @return
	 */
	public static char getRandomChar(){
		return (char)(0x4e00 + (int)(Math.random() * (0x9fa5 - 0x4e00 + 1)));
	}
	
	/**
	 * 随机获取生日
	 * @param age
	 * @return
	 */
	public static String getBrithday(int age){
		Random random = new Random();
		int num = random.nextInt(365);
		age++;
		int brithDays = (age/2)*365 + (age - age/2)*366 - num;
		Date tody = new Date();
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(tody);
		calendar.add(calendar.DATE, -brithDays);
		Date brithday = calendar.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(brithday);
	}
	
	/**
	 * 随机获取年龄，20-50岁的概率为80%，6-20岁的概念为10%，50-80岁的概率为10%
	 * @return
	 */
	public static int getAge(){
		Random random = new Random();
		int num = random.nextInt(100);
		int min = 20;
		int max = 40;
		if(num <= 80){
			min = 20;
			max = 50;
		}else if(num > 80 && num <=90){
			min = 50;
			max = 80;
		}else if(num > 90){
			min = 6;
			max = 20;
		}
		return (int)Math.round(Math.random()*(max - min) + min);
	}
	
	/**
	 * 获取一个长度为3的字符串，字符串内容为数字
	 * @return
	 */
	public static String getStrLen3(){
		String str = "";
		for (int i = 0; i < 3; i++) {
			Random random = new Random();
			int num = random.nextInt(9);
			str+=num;
		}
		return str;
	}
	
	/**
	 * 生成身份证校验位并返回身份证号
	 * @param str
	 * @return
	 */
	public static String getCid(String str){
		char pszSrc[] = str.toCharArray();
		int is = 0;
		int iw[] = {7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2};
		char szVerCode[] = new char[]{'1','0','X','9','8','7','6','5','4','3','2'};
		for (int i = 0; i < pszSrc.length; i++) {
			is += (pszSrc[i] - '0') * iw[i];
		}
		int iy = is % 11;
		return str + szVerCode[iy];
	}
	
	/**
	 * 随机获取姓氏
	 * @return
	 */
	public static String getSurname(){
		Random random = new Random();
		int size = surname.size();
		int num = random.nextInt(size);
		int min = 20;
		int max = 40;
		
		if(num > size*0.5){
			min = 0;
			max = (int) (size*0.1);
		}else if(num < size*0.5 && num >= size*0.2){
			min = (int) (size*0.1);
			max = (int) (size*0.2);
		}else if(num < size*0.2 && num >= size*0.1){
			min = (int) (size*0.2);
			max = (int) (size*0.3);
		}else if(num < size*0.1 && num >= size*0.08){
			min = (int) (size*0.3);
			max = (int) (size*0.4);
		}else if(num < size*0.08 && num >= size*0.06){
			min = (int) (size*0.4);
			max = (int) (size*0.5);
		}else if(num < size*0.06 && num >= size*0.04){
			min = (int) (size*0.5);
			max = (int) (size*0.6);
		}else if(num < size*0.04 && num >= size*0.02){
			min = (int) (size*0.6);
			max = (int) (size*0.7);
		}else if(num < size*0.02 && num >= size*0.01){
			min = (int) (size*0.7);
			max = (int) (size*0.8);
		}else if(num < size*0.01 && num >= size*0.008){
			min = (int) (size*0.8);
			max = (int) (size*0.9);
		}else if(num < size*0.008 && num >= size*0.002){
			min = (int) (size*0.9);
			max = (int) (size*0.99);
		}else if(num < size*0.002){
			min = (int) (size*0.99);
			max = size-1;
		}
		int index = (int)Math.round(Math.random()*(max - min) + min) ;
		//System.out.println("num:"+num + ",min:" + min + ",max:" + max +",index:" + index + "," + surname.get(index));
		//System.out.println(index); 
		return surname.get(index);
	}
	
	/**
	 * 随机获取姓名
	 * @return
	 */
	public static String getName(){
		String surname = getSurname();
		
		int num = Math.random() > 0.5 ? 1 : 2;
		String name = "";
		for (int i = 0; i < num; i++) {
			name = name + getRandomChar();
		}
		//System.out.println(num);
		return surname + name;
	}
	
	public static String getMobile(){
		Random random = new Random();
		int num = random.nextInt(mobileSection.size()-1);
		String section = mobileSection.get(num);
		String mobile = section; 
		
		for (int i = 0; i < 11-section.length(); i++) {
			num = random.nextInt(9);
			mobile += num;
		}
		return mobile;
	}
	
	/**
	 * 随机获取姓名
	 * @return
	 */
	public static String getSex(){
		return Math.random() > 0.4 ? "男" : "女";
	}
	
	/**
	 * 加载全国地区编码，(区，县)
	 */
	public static void loadAreaCode(){
		java.sql.Connection conn = null;
		String sql = "select * from area_code where area_level='3'";
		QueryRunner queryRunner = new QueryRunner();
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			areaCode = (List<String>) queryRunner.query(conn, sql,new ColumnListHandler("area_code"));
			System.out.println(areaCode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtils.closeQuietly(conn);
		}
	}
	
	/**
	 * 加载全国地区编码，(区，县)
	 */
	public static void loadAreaCode1(){
		java.sql.Connection conn = null;
		String sql = "select area_code,area_name from area_code where area_level='1'";
		QueryRunner queryRunner = new QueryRunner();
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			List<Map<String, Object>> data = queryRunner.query(conn, sql,new MapListHandler());
			for (int i = 0; i < data.size(); i++) {
				areaCode1.put(data.get(i).get("area_code") + "", data.get(i).get("area_name") + "");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtils.closeQuietly(conn);
		}
	}
	/**
	 * 加载全国地区编码，(区，县)
	 */
	public static void loadAreaCode2(){
		java.sql.Connection conn = null;
		String sql = "select area_code,area_name from area_code where area_level='2'";
		QueryRunner queryRunner = new QueryRunner();
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			List<Map<String, Object>> data = queryRunner.query(conn, sql,new MapListHandler());
			for (int i = 0; i < data.size(); i++) {
				areaCode2.put(data.get(i).get("area_code") + "", data.get(i).get("area_name") + "");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtils.closeQuietly(conn);
		}
	}
	/**
	 * 加载全国地区编码，(区，县)
	 */
	public static void loadAreaCode3(){
		java.sql.Connection conn = null;
		String sql = "select area_code,area_name from area_code where area_level='3'";
		QueryRunner queryRunner = new QueryRunner();
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			List<Map<String, Object>> data = queryRunner.query(conn, sql,new MapListHandler());
			for (int i = 0; i < data.size(); i++) {
				areaCode3.put(data.get(i).get("area_code") + "", data.get(i).get("area_name") + "");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtils.closeQuietly(conn);
		}
	}
	
	/**
	 * 加载手机号段
	 */
	public static void loadMobileSection(){
		java.sql.Connection conn = null;
		String sql = "select * from mobile_section";
		QueryRunner queryRunner = new QueryRunner();
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			mobileSection = (List<String>) queryRunner.query(conn, sql,new ColumnListHandler("section"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtils.closeQuietly(conn);
		}
	}
	
	/**
	 * 加载姓氏数据
	 */
	public static void loadSurname(){
		java.sql.Connection conn = null;
		String sql = "select * from surname order by id asc";
		QueryRunner queryRunner = new QueryRunner();
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			surname = (List<String>) queryRunner.query(conn, sql,new ColumnListHandler("name"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DbUtils.closeQuietly(conn);
		}
	}
	
	
	public static void main(String[] args) {
		loadAreaCode();
		loadMobileSection();
		loadSurname();
		loadAreaCode1();
		loadAreaCode2();
		loadAreaCode3();
		//System.out.println(getCid("22082219940307014"));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		//int len = 500000000;
		int len = Integer.parseInt(args[0]);
		String fileName = "userinfo"+len+"_"+ sdf.format(new Date()) +"_5.txt";
		File file = new File(fileName);
		System.out.println(file.getAbsolutePath());
		FileWriter fw = null;
		try {
			fw = new FileWriter(file);
			for (int i = 0; i < len; i++) {
				int age = getAge();
				String areaCode = areaCode();
				String address = getAddress(areaCode);
				String cid = areaCode + getBrithday(age) + getStrLen3();
				String content = i+"|"+getName() + "|" + getCid(cid) + "|" + getMobile() + "|" + getSex() + "|" + age + "|" + address  + System.lineSeparator();
				//System.out.print(content);
				fw.append(content);
				//Thread.sleep(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/*public static void main(String[] args) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		int len = 10000;
		String fileName = "userinfo"+len+"_"+ sdf.format(new Date()) +"_10.txt";
		File file = new File(fileName);
		System.out.println(file.getAbsolutePath());
		FileWriter fw = null;
		try {
			fw = new FileWriter(file);
			for(int j = 0; j < len/30 ; j++){
				//http://shenfenzheng.293.net/?_t_t_t=0.9766452528640315
				//http://shenfenzheng.293.net/
				String httpUrl = "http://shenfenzheng.293.net/?_t_t_t="+Math.random();
				Map<String, String> data = new HashMap<String,String>();
				data.put("id", "reload...");
				Connection conn = Jsoup.connect(httpUrl).data(data);
				Document doc = conn.post();
				Elements elements = doc.select("tr[bgcolor=\"#FFFFFF\"]");
				for (int i = 0; i < elements.size(); i++) {
					Element element = elements.get(i);
					Elements infos = element.children();
					//史忠 230406198802280358
					String name = infos.get(0).html().split(" ")[0];
					String id = infos.get(0).html().split(" ")[1];
					String sex = infos.get(1).html();
					String age = infos.get(2).html();
					String address = infos.get(3).html();
					String content = (j*30+i) + "|" + name + "|" + id+ "|" + sex + "|" + age + "|" +address + System.lineSeparator();
					System.out.print((j*30+i) + "|" + name + "|" + id+ "|" + sex + "|" + age + "|" +address + System.lineSeparator());
					fw.append(content);
				}
				Thread.sleep(3*1000);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}*/
}

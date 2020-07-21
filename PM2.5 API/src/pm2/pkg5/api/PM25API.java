package pm2.pkg5.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class PM25API {

    public static final String URL_SOURCE = "https://api.waqi.info/feed/";
    
    public static void main(String[] args) {
        PM_GUI pm_gui = new PM_GUI();
        pm_gui.setVisible(true);
        String location = "bangkok";
        String appid = "";
        // Create the URL:
        String query = URL_SOURCE + location + "/?" + "token=" + appid;
        query = "https://api.waqi.info/feed/bangkok/?token=8a38af0d0998eea58d6f8cbee711f41ab74981ba";
        
        query = query.replace(" ", "%20");
        System.out.println(query);
        
        try{
            URL urlObject = new URL(query);
            InputStream in = urlObject.openStream();
            InputStreamReader r=new InputStreamReader(in);  
            BufferedReader br=new BufferedReader(r);  
            String json_str = "";
            String str= null;  
            while((str=br.readLine()) != null){
                json_str += str;
            }
            System.out.println(json_str); 
            JSONParser parser = new JSONParser();
            Object obj = parser.parse(json_str);
            JSONObject json = (JSONObject)obj;
            
            String status = (String)json.get("status");
            System.out.println("Status : " + status);
            
            JSONObject data = (JSONObject)json.get("data");
            JSONObject time = (JSONObject)data.get("time");
            JSONObject iaqi = (JSONObject)data.get("iaqi");
            JSONObject pm10 = (JSONObject)iaqi.get("pm10");
            JSONObject pm25 = (JSONObject)iaqi.get("pm25");
            
            String s = time.get("s").toString();
            System.out.println("Time : " + s);
            
            String aqi = data.get("aqi").toString();
            System.out.println("Aqi : " + aqi);
            
            String v10 = pm10.get("v").toString();
            System.out.println("PM1.0 : " + v10);
            
            String v25 = pm25.get("v").toString();
            System.out.println("PM2.5 : " + v25);
     
        }catch(Exception e){e.printStackTrace();}
    }   
}

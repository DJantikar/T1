package com.twitter;



public class TokensAuth
{
    public static boolean isAuthorized = false;

    public static String access_token ="";

    public static String access_token_secret="";
    
    public static String consumerKey = "4MWHR9sMyLQZe4dNufYF2l2wX" ;
    
    public static String consumerSecret = "S7999qdmgtX7vsMu3gzHMiJRoflZSp7hdGR55sfHMrZS9D3IoE" ;

	public static void setUserAuth(String token, String tokenSecret) {
		isAuthorized=true;
		access_token=token;
		access_token_secret=tokenSecret;	
	}

}
			
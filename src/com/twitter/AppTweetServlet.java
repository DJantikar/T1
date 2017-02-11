package com.twitter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import twitter4j.Status;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;


@WebServlet("/AppTweetServlet")
public class AppTweetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(TokensAuth.isAuthorized){

			ConfigurationBuilder cb = new ConfigurationBuilder();
			cb.setDebugEnabled(true)
			  .setOAuthConsumerKey(TokensAuth.consumerKey)
			  .setOAuthConsumerSecret(TokensAuth.consumerSecret)
			  .setOAuthAccessToken(TokensAuth.access_token)
			  .setOAuthAccessTokenSecret(TokensAuth.access_token_secret);
			
			
			TwitterFactory tf = new TwitterFactory(cb.build());
			twitter4j.Twitter t = tf.getInstance();

			
			try {
				List<Status> status = t.getHomeTimeline().subList(0, 9);
				List<Tweet> tweets = new ArrayList<Tweet>();
				for(Status s : status){
					tweets.add(new Tweet(s.getUser().getName(),"@"+s.getUser().getScreenName(),
							s.getUser().getMiniProfileImageURL(),s.getText() ,s.getRetweetCount(),s.getCreatedAt()));
				}
				request.getSession().setAttribute("tweet_list", tweets);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/LDS_view_tweets.jsp");
				dispatcher.forward(request, response);
			} 
			catch (TwitterException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			PrintWriter out = response.getWriter();
			out.println("<html><body> Not Authorized </body><html>");
			response.sendRedirect("http://localhost:8080/T1/LDS_authorize.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

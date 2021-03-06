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

/**
 * Servlet implementation class FilterTweet
 */
@WebServlet("/FilterTweet")
public class FilterTweet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterTweet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inputFilter = request.getParameter("inputFilter");
		List<Tweet> filteredTweets = new ArrayList<Tweet>();
		if(inputFilter!=null && !inputFilter.isEmpty()){
		List<Tweet> tweets = (List<Tweet>) request.getSession().getAttribute("tweet_list");		
			for(Tweet t : tweets){
				if(t.getTweetContent().contains(inputFilter)){
					filteredTweets.add(t);
				}
			}
		}
		RequestDispatcher dispatcher=null;
			request.getSession().setAttribute("filtered_tweet_list", filteredTweets);
			dispatcher = request.getRequestDispatcher("/LDS_view_filtered_tweets.jsp");	
			dispatcher.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

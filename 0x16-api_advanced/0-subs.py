#!/usr/bin/python3
"""
This module contains the number_of_subscribers function.
"""

import requests

def number_of_subscribers(subreddit):
	"""
	Queries the Reddit API and returns the number of subscribers
	for a given subreddit.

	If the subreddit is invalid, returns 0.

	:param subreddit: The name of the subreddit to query.
	:return: The number of subscribers or 0 if invalid.
	"""
	url = f"https://www.reddit.com/r/{subreddit}/about.json"
	headers = {'User-Agent': 'custom-agent'}
	response = requests.get(url, headers=headers, allow_redirects=False)
    
	if response.status_code == 200:
        	data = response.json().get("data", {})
        	return data.get("subscribers", 0)
		return 0

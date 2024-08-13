#!/usr/bin/python3
"""
This module contains the top_ten function.
"""

import requests

def top_ten(subreddit):
    """
    Queries the Reddit API and prints the titles of the first
    10 hot posts listed for a given subreddit.

    If the subreddit is invalid, prints None.

    :param subreddit: The name of the subreddit to query.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {'User-Agent': 'custom-agent'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json().get("data", {}).get("children", [])
        if not data:
            print(None)
        else:
            for post in data:
                print(post.get("data", {}).get("title"))
    else:
        print(None)


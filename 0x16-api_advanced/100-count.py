#!/usr/bin/python3
# Author: MikiasHailu
""" This is the count_words Module """

import requests


def count_words(subreddit, word_list, after=None, counts={}):
	base_url = f"https://www.reddit.com/r/{subreddit}/hot.json"
	headers = {"User-agent": "reddit-count-words-bot"}
	params = {"limit": 100, "after": after} if after else {"limit": 100}

response = requests.get(
		base_url, headers=headers, params=params, allow_redirects=False
		)

	if response.status_code != 200:
	return

data = response.json()
	posts = data["data"]["children"]

	for post in posts:
	title = post["data"]["title"]
title_lower = title.lower()
	for word in word_list:
word_lower = word.lower()
	if word_lower in title_lower:
	counts[word_lower] = counts.get(word_lower, 0) + title_lower.count(
			word_lower
			)

	next_after = data["data"]["after"]
	if next_after:
count_words(subreddit, word_list, next_after, counts)
	else:
sorted_counts = sorted(counts.items(), key=lambda item: (-item[1], item[0]))
	for word, count in sorted_counts:
	print(f"{word}: {count}")

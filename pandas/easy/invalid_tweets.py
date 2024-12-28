# https://leetcode.com/problems/invalid-tweets/submissions/1338207646/?envType=study-plan-v2&envId=top-sql-50

import pandas as pd

def invalid_tweets(tweets: pd.DataFrame) -> pd.DataFrame:
    return tweets[tweets['content'].str.len() > 15][['tweet_id']] 

# https://leetcode.com/problems/article-views-i/submissions/1329536343/?envType=study-plan-v2&envId=top-sql-50

import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    return views[views['author_id'] == views['viewer_id']][['author_id']].drop_duplicates().sort_values(by='author_id').rename(columns={'author_id':'id'})

# https://leetcode.com/problems/find-customer-referee/submissions/1490438181/?envType=study-plan-v2&envId=top-sql-50

import pandas as pd

def find_customer_referee(customer: pd.DataFrame) -> pd.DataFrame:
    return customer[(customer["referee_id"] != 2) | (customer["referee_id"].isnull())][["name"]]

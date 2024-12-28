# https://leetcode.com/problems/recyclable-and-low-fat-products/submissions/1329534792/?envType=study-plan-v2&envId=top-sql-50

import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    return products[(products['low_fats'] == 'Y') & (products['recyclable'] == 'Y')][['product_id']]
